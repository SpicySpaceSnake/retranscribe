X=""

main() {
	local characters=(
		"\"patron_female_"
		"\"patron_male_"

		"\"astro_"
		"\"atlas_"
		"\"bebop_"
		"\"bookworm_"
		"\"chrono_"
		"\"doorman_"
		"\"drifter_"
		"\"dynamo_"
		"\"familiar_"
		"\"fencer_"
		"\"forge_"
		"\"frank_"
		"\"ghost_"
		"\"gigawatt_"
		"\"haze_"
		"\"hornet_"
		"\"inferno_"
		"\"kelvin_"
		"\"krill_"
		"\"lash_"
		"\"magician_"
		"\"mirage_"
		"\"nano_"
		"\"necro_"
		"\"orion_"
		"\"priest_"
		"\"punkgoat_"
		"\"shiv_"
		"\"synth_"
		"\"tengu_"
		"\"unicorn_"
		"\"vampirebat_"
		"\"viper_"
		"\"viscous_"
		"\"warden_"
		"\"werewolf_"
		"\"wraith_"
		"\"yamato_"
		"\"ratking_"
		"\"baba_"
		"\"chessmaster_"
		"\"deadpack_"
		"\"artist_"
		"\"nurse_"

		"\"shopkeeper_"
		"\"spirit_jar_"
		"\"newscaster_"
	)

	for candidate in "${characters[@]}"; do
			X+=$(cat ./characters/$candidate.txt)
		done
		echo "\"lang\"
{
	\"Language\"		\"English\"
	\"Tokens\"
	{
$X
	}" > ./resource/localization/citadel_generated_vo/citadel_generated_vo_english.txt
}

main
