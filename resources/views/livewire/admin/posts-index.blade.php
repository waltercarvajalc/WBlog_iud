<div class="card">
    <div class="card-header">
        <div class="row">
            <a href="{{ route('admin.posts.create') }}" class="btn btn-secondary col-2">Crear nuevo post</a>
            <input class="form-control col ml-4" type="text" placeholder="Posts search" wire:model="search">
        </div>
    </div>
    @if ($posts->count())
        <div class="card-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Imagen</th>
                        <th colspan="2"></th>
                    </tr>
                <tbody>
                    @foreach ($posts as $post)
                        <tr>
                            <td>{{ $post->id }}</td>
                            <td>{{ $post->name }}</td>
                            <td>
                                <img src="{{ Storage::url($post->image->url)  }}" height="75" width="75" alt="" />
                            </td>
                            <td>
                                <a href="{{ route('admin.posts.edit', $post) }}"
                                    class="btn btn-primary btn-sm">Edit</a>
                            </td width="10px">
                            <td width="10px">
                                <form action="{{ route('admin.posts.destroy', $post) }}" method="POST">
                                    @csrf
                                    @method('delete')
                                    <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
                </thead>
            </table>
        </div>
        <div class="card-footer">
            {{ $posts->links() }}
        </div>
    @else
        <div class="card-body">
            <strong>No existe un post con este nombre: {{ $search }}.</strong>
        </div>
    @endif
</div>
