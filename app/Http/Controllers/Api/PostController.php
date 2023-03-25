<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\CreatePostRequest;
use App\Http\Requests\UpdatePostRequest;
use App\Models\Post;
use App\Services\PostService;
use Illuminate\Http\JsonResponse;

class PostController extends Controller
{
    /**
     * @var $postService
     */
    protected $postService;

    /**
     * PostController constructor
     *
     * @param PostService $postService
     */
    public function __construct(PostService $postService)
    {
        $this->postService = $postService;
    }

    /**
     * Display a listing of the resource.
     *
     * @return JsonResponse
     */
    public function index()
    {
        $this->authorize('list: post');
        return response()->json($this->postService->list());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  CreatePostRequest $request
     * @return JsonResponse
     */
    public function store(CreatePostRequest $request)
    {
        $this->authorize('create: post');
        return response()->json($this->postService->create($request->validated()));
    }

    /**
     * Display the specified resource.
     *
     * @param  Post $post
     * @return JsonResponse
     */
    public function show(Post $post)
    {
        $this->authorize('read: post');
        return response()->json($this->postService->get($post->id));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  UpdatePostRequest $request
     * @param  Post $post
     * @return JsonResponse
     */
    public function update(UpdatePostRequest $request, Post $post)
    {
        $this->authorize('update: post');
        return response()->json($this->postService->modify($request->validated(), $post->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Post $post
     * @return JsonResponse
     */
    public function destroy(Post $post)
    {
        $this->authorize('delete: post');
        return response()->json($this->postService->delete($post->id));
    }
}