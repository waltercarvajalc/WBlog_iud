<?php

namespace App\Services;

use App\Filters\Search;
use App\Repositories\PostRepository;
use Samushi\QueryFilter\Facade\QueryFilter;

class PostService
{
    protected $postRepository;

    public function __construct(PostRepository $postRepository)
    {
        $this->postRepository = $postRepository;
    }

    public function filters()
    {
        return [
            new Search(['name', 'slug', 'status', 'user_id', 'category_id', 'body']),
        ];
    }

    public function list(int $count = 10)
    {
        return QueryFilter::query($this->postRepository->list(), $this->filters())
                                ->orderBy('id', 'desc')
                                ->paginate($count);
    }

    public function create(array $data)
    {
        return $this->postRepository->create($data);
    }

    public function get($model)
    {
        return $this->postRepository->get($model);
    }

    public function modify($data, $model)
    {
        return $this->postRepository->modify($data, $model);
    }

    public function delete($model)
    {
        return $this->postRepository->delete($model);
    }
}