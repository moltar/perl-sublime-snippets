# forelse
# @forelse [Blade]
# text.html.laravel-blade

@forelse (\$${1:list}s as \$${1})
    $2
@empty
	$3
@endforelse
