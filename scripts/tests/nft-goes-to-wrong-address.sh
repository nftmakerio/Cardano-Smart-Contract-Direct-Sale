set -eu

thisDir=$(dirname "$0")
baseDir=$thisDir/..

$thisDir/generic-failure-case.sh "$baseDir/failure-cases/nft-goes-wrong-address-tx.sh"
