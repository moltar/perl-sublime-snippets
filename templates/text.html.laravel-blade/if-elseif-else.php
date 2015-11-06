# if:elseif
# @if-@elseif [Blade]
# text.html.laravel-blade

@if ($1)
    $2
@elseif ($3)
	$4
@else
	$5
@endif
