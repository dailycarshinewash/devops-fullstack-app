# module "acm" {
#   source = "terraform-aws-modules/acm/aws"

#   domain_name = "suyogmaid.info"
#   zone_id     = "b7d259641bf30b89887c943ffc9d2138"

#   validation_method = "DNS"

#   subject_alternative_names = [
#     "*.suyogmaid.info",
#     "suyogmaid.co",
#     "suyogmaid.online"
#   ]

#   create_route53_records = false
#   validation_record_fqdns = [
#     "_689571ee9a5f9ec307c512c5d851e25a.suyogmaid.info",
#   ]

# }
