# schema:create
# Schema::create [L5]
# source.php, source.php.embedded.block.html

Schema::create('${1:table}', function ($table) {
    \$table->increments('id');
});
