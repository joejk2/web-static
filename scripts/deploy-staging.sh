CDN_LOCAL="/Users/jjk/dev/matched/cdn"
WEB_STATIC_LOCAL="/Users/jjk/dev/matched/web-static"
S3_BUCKET="s3://80iz-static-website-alpha"


# SYNC TO CDN
aws s3 sync --delete . s3://matched-web-static-cdn

# SYNC WEBSITE
# https://simpleit.rocks/ruby/jekyll/tutorials/having-pretty-urls-in-a-jekyll-website-hosted-in-amazon-s3/
find ${WEB_STATIC_LOCAL}/_site/ -type f ! -iname 'index.html' -iname '*.html' -print0 | while read -d $'\0' f; do mv "$f" "${f%.html}"; done

aws s3 sync ${WEB_STATIC_LOCAL}/_site/ $S3_BUCKET --size-only --exclude "*" --include "*.*" --delete  # files without extension
aws s3 sync ${WEB_STATIC_LOCAL}/_site/ $S3_BUCKET --size-only --content-type text/html --exclude "*.*" --delete           # html files

