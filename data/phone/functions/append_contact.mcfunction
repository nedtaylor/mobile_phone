# $tellraw @a "$(contact)"
# $tellraw @a "$(contents)"
# $say $(contact_contents)

# $data modify storage contacts:page contents set value "$(contents)$(contact_contents)"
$data modify storage contacts:page contents set value '$(contents),$(contact_contents)'
# $data modify storage contacts:page contents set value '$(contents),{"text": "$(newline)"},$(contact_contents)'

# works with escaped quotes in setup_contact_prompts, "\"

# $function phone:test {command: "function phone:test_sub {command: \"data modify storage contacts:page contents set value $(contact_contents)\", newline:\"\\\\n\"}"}