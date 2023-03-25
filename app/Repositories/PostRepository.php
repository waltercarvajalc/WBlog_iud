<?php

namespace App\Repositories;

use App\Models\Post;

class PostRepository
{
    protected $post;

    public function __construct(Post $post)
    {
        $this->post = $post;
    }

    public function list()
    {
        return $this->post->newQuery();
    }

    public function create($data)
    {
        $post = new $this->post;
        $post->name = $data['name'];
        $post->slug = $data['slug'];
        $post->body = $data['body'];
        $post->status = $data['status'];
        $post->user_id = $data['user_id'];
        $post->category_id = $data['category_id'];
        $post->save();

        return $post->fresh();
    }

    public function get($model)
    {
        return $this->post->where('id', $model)->get();
    }

    public function modify($data, $model)
    {
        $post = $this->post->find($model);
        $post->name = $data['name'];
        $post->slug = $data['slug'];
        $post->body = $data['body'];
        $post->status = $data['status'];
        $post->user_id = $data['user_id'];
        $post->category_id = $data['category_id'];
        $post->update();

        return $post;
    }

    public function delete($model)
    {
        $post = $this->post->find($model);
        $post->delete();

        return $post;
    }
}