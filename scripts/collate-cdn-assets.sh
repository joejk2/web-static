################################################################################
## Collate assets to be uploaded to CDN
##
## Paths are renamed to reflect those used when serving the site locally
##
## Usage
##   source cdn-collate.sh  (run from /web-static)
################################################################################

cd ../

## RELATIVE TO WEB-STATIC
CDN_PATH='../cdn'
CDN_PATH_ESC='..\/cdn'   # 🤮

## FIND FILES
find . -path "./content/*/assets/*" -o -path "./assets/img/*" > /tmp/cdn-index

## CLEAN CDN
#rm -rf ${CDN_PATH}/*

## COPY FILES
for source in $(cat /tmp/cdn-index);
do
  destination=$(echo $source | \
    sed -e "s/\.\//${CDN_PATH_ESC}\//" \
    -e "s/content\/_//")
  mkdir -p $(dirname $destination)
  echo "cp $source $destination"
  cp $source $destination
done;

cd -
