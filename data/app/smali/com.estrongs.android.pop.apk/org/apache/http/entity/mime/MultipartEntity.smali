.class public Lorg/apache/http/entity/mime/MultipartEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation runtime Lnet/jcip/annotations/ThreadSafe;
.end annotation


# static fields
.field private static final MULTIPART_CHARS:[C


# instance fields
.field private final contentType:Lorg/apache/http/Header;

.field private volatile dirty:Z

.field private length:J

.field private final message:Lorg/apache/james/mime4j/message/Message;

.field private final multipart:Lorg/apache/http/entity/mime/HttpMultipart;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/entity/mime/HttpMultipart;

    const-string v1, "form-data"

    invoke-direct {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    invoke-virtual {p0, p2, p3}, Lorg/apache/http/entity/mime/MultipartEntity;->generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    new-instance v0, Lorg/apache/james/mime4j/message/Message;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Message;-><init>()V

    iput-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v1, v0}, Lorg/apache/james/mime4j/message/Message;->setHeader(Lorg/apache/james/mime4j/message/Header;)V

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    if-nez p1, :cond_38

    sget-object p1, Lorg/apache/http/entity/mime/HttpMultipartMode;->STRICT:Lorg/apache/http/entity/mime/HttpMultipartMode;

    :cond_38
    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->setMode(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->message:Lorg/apache/james/mime4j/message/Message;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/message/Message;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/entity/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->addField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method


# virtual methods
.method public addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    new-instance v1, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/mime/HttpMultipart;->addBodyPart(Lorg/apache/james/mime4j/message/BodyPart;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    return-void
.end method

.method public consumeContent()V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Streaming entity does not implement #consumeContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method protected generateContentType(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "multipart/form-data; boundary="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_22

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eqz p2, :cond_1d

    const-string v0, "; charset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_22
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1e

    const/4 v0, 0x0

    :goto_30
    if-ge v0, v3, :cond_f

    sget-object v4, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    sget-object v5, Lorg/apache/http/entity/mime/MultipartEntity;->MULTIPART_CHARS:[C

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_30
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multipart form entity does not implement #getContent()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    iget-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/HttpMultipart;->getTotalLength()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->length:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->dirty:Z

    :cond_f
    iget-wide v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->length:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->contentType:Lorg/apache/http/Header;

    return-object v0
.end method

.method public isChunked()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isRepeatable()Z
    .registers 7

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/HttpMultipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/FormBodyPart;

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/FormBodyPart;->getBody()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-interface {v0}, Lorg/apache/http/entity/mime/content/ContentBody;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_a

    const/4 v0, 0x0

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method

.method public isStreaming()Z
    .registers 2

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/MultipartEntity;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 3

    iget-object v0, p0, Lorg/apache/http/entity/mime/MultipartEntity;->multipart:Lorg/apache/http/entity/mime/HttpMultipart;

    invoke-virtual {v0, p1}, Lorg/apache/http/entity/mime/HttpMultipart;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
