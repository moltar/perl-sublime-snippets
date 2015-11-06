# mail:send
# [L5]
# source.php, source.php.embedded.block.html

Mail::send('emails/${1:view_name}', ${2:['key' => 'value']}, function(\$message)
{
    \$message->to(${3:'${4:to@example.com}'}, ${5:'${6:John Smith}'});
    \$message->subject(${7:'${8:subject}'});
});
