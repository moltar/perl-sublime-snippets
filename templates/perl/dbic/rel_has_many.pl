# has_many
# [has_many] DBIx::Class
# source.perl

has_many ${1:accessor_name} => '::${2:RelatedClass}', '${3:their_fk_column_id}';