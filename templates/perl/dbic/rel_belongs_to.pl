# belongs_to
# [belongs_to] DBIx::Class
# source.perl

belongs_to ${1:accessor_name} => '::${2:RelatedClass}', '${3:our_fk_column_id}';