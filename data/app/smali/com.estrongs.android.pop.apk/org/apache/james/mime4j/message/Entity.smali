.class public abstract Lorg/apache/james/mime4j/message/Entity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/message/Disposable;


# instance fields
.field private body:Lorg/apache/james/mime4j/message/Body;

.field private header:Lorg/apache/james/mime4j/message/Header;

.field private parent:Lorg/apache/james/mime4j/message/Entity;


# direct methods
.method protected constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    iget-object v0, p1, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    if-eqz v0, :cond_17

    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    iget-object v1, p1, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/Header;-><init>(Lorg/apache/james/mime4j/message/Header;)V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    :cond_17
    iget-object v0, p1, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-static {v0}, Lorg/apache/james/mime4j/message/BodyCopier;->copy(Lorg/apache/james/mime4j/message/Body;)Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    :cond_24
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-interface {v0}, Lorg/apache/james/mime4j/message/Body;->dispose()V

    :cond_9
    return-void
.end method

.method public getBody()Lorg/apache/james/mime4j/message/Body;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getCharset(Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    invoke-static {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDispositionType()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Entity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/message/Entity;->obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getFilename()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getHeader()Lorg/apache/james/mime4j/message/Header;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getParent()Lorg/apache/james/mime4j/message/Entity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/ContentTypeField;

    :goto_22
    invoke-static {v0, v1}, Lorg/apache/james/mime4j/field/ContentTypeField;->getMimeType(Lorg/apache/james/mime4j/field/ContentTypeField;Lorg/apache/james/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getParent()Lorg/apache/james/mime4j/message/Entity;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .registers 3

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentTypeField;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method obtainField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lorg/apache/james/mime4j/parser/Field;",
            ">(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->getHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p1}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    goto :goto_7
.end method

.method obtainHeader()Lorg/apache/james/mime4j/message/Header;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    if-nez v0, :cond_b

    new-instance v0, Lorg/apache/james/mime4j/message/Header;

    invoke-direct {v0}, Lorg/apache/james/mime4j/message/Header;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-object v0
.end method

.method public removeBody()Lorg/apache/james/mime4j/message/Body;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    iput-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-interface {v1, v0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    move-object v0, v1

    goto :goto_5
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "body already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->body:Lorg/apache/james/mime4j/message/Body;

    invoke-interface {p1, p0}, Lorg/apache/james/mime4j/message/Body;->setParent(Lorg/apache/james/mime4j/message/Entity;)V

    return-void
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/message/Body;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;)V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    invoke-static {p2, p3}, Lorg/apache/james/mime4j/field/Fields;->contentType(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentTypeField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v7

    const-wide/16 v2, -0x1

    move-object v0, p1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v7

    const-wide/16 v2, -0x1

    move-object v0, p1

    move-object v1, p2

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .registers 10

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    invoke-static/range {p1 .. p7}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setContentTransferEncoding(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/james/mime4j/field/Fields;->contentTransferEncoding(Ljava/lang/String;)Lorg/apache/james/mime4j/field/ContentTransferEncodingField;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/Entity;->obtainHeader()Lorg/apache/james/mime4j/message/Header;

    move-result-object v7

    const-string v0, "Content-Disposition"

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->getField(Ljava/lang/String;)Lorg/apache/james/mime4j/parser/Field;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/ContentDispositionField;

    if-nez v0, :cond_20

    if-eqz p1, :cond_1f

    const-string v0, "attachment"

    const-wide/16 v2, -0x1

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;Ljava/util/Date;Ljava/util/Date;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getDispositionType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/ContentDispositionField;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    if-nez p1, :cond_3c

    const-string v0, "filename"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_34
    invoke-static {v1, v2}, Lorg/apache/james/mime4j/field/Fields;->contentDisposition(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/james/mime4j/field/ContentDispositionField;

    move-result-object v0

    invoke-virtual {v7, v0}, Lorg/apache/james/mime4j/message/Header;->setField(Lorg/apache/james/mime4j/parser/Field;)V

    goto :goto_1f

    :cond_3c
    const-string v0, "filename"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34
.end method

.method public setHeader(Lorg/apache/james/mime4j/message/Header;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->header:Lorg/apache/james/mime4j/message/Header;

    return-void
.end method

.method public setMessage(Lorg/apache/james/mime4j/message/Message;)V
    .registers 4

    const-string v0, "message/rfc822"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/message/Multipart;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "boundary"

    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setMultipart(Lorg/apache/james/mime4j/message/Multipart;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/james/mime4j/message/Multipart;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/Multipart;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "boundary"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v2, "boundary"

    invoke-static {}, Lorg/apache/james/mime4j/util/MimeUtil;->createUniqueBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v0

    :cond_2e
    invoke-virtual {p0, p1, v1, p2}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/message/Entity;->parent:Lorg/apache/james/mime4j/message/Entity;

    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/message/TextBody;)V
    .registers 3

    const-string v0, "plain"

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/message/Entity;->setText(Lorg/apache/james/mime4j/message/TextBody;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Lorg/apache/james/mime4j/message/TextBody;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/james/mime4j/message/TextBody;->getMimeCharset()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_28

    const-string v3, "us-ascii"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v0, "charset"

    invoke-static {v0, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :cond_28
    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/james/mime4j/message/Entity;->setBody(Lorg/apache/james/mime4j/message/Body;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
