FROM antora/antora

RUN apk add ruby
RUN apk add ruby-dev

RUN gem install 'prawn'
RUN gem install 'prawn-table'
RUN gem install 'rghost'
RUN gem install 'rouge'

# PDF generation not possible with this image
# Used to generate PDF and support multiple image formats
#RUN CPATH=/usr/include/ImageMagick-6:/usr/include/x86_64-linux-gnu/ImageMagick-6/ gem install 'gmagick'
#RUN CPATH=/usr/include/ImageMagick-6:/usr/include/x86_64-linux-gnu/ImageMagick-6/ gem install 'prawn-gmagick'
#RUN gem install asciidoctor-pdf

RUN yarn global add @asciidoctor/tabs
RUN yarn global add @asciidoctor/core asciidoctor-emoji
RUN yarn global add @antora/lunr-extension
#RUN yarn global add @antora/pdf-extension

ENV GIT_SSL_NO_VERIFY true

