.class public abstract Lorg/apache/http/entity/mime/content/AbstractContentBody;
.super Lorg/apache/james/mime4j/message/SingleBody;

# interfaces
.implements Lorg/apache/http/entity/mime/content/ContentBody;


# annotations
.annotation runtime Lnet/jcip/annotations/NotThreadSafe;
.end annotation


# instance fields
.field private final mediaType:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private final subType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/apache/james/mime4j/message/SingleBody;-><init>()V

    iput-object v2, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MIME type may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    :goto_2a
    return-void

    :cond_2b
    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    goto :goto_2a
.end method


# virtual methods
.method public dispose()V
    .registers 1

    return-void
.end method

.method public getContentTypeParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/http/entity/mime/content/AbstractContentBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method
