.class Lcom/samsung/map/BENV;
.super Lcom/samsung/map/Indentable;
.source "bMessageBuilder.java"


# instance fields
.field public body:Lcom/samsung/map/BBODY;

.field public recipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/VCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/samsung/map/BBODY;)V
    .registers 4
    .parameter
    .parameter "body"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/map/VCard;",
            ">;",
            "Lcom/samsung/map/BBODY;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, vcardsr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/map/VCard;>;"
    invoke-direct {p0}, Lcom/samsung/map/Indentable;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/map/BENV;->body:Lcom/samsung/map/BBODY;

    .line 248
    iput-object p2, p0, Lcom/samsung/map/BENV;->body:Lcom/samsung/map/BBODY;

    .line 249
    iput-object p1, p0, Lcom/samsung/map/BENV;->recipients:Ljava/util/ArrayList;

    .line 250
    return-void
.end method


# virtual methods
.method public appendBytesToStream(Ljava/io/ByteArrayOutputStream;)V
    .registers 10
    .parameter "b"

    .prologue
    const/4 v7, 0x0

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "BEGIN:BENV\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, envelope:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/map/BENV;->recipients:Ljava/util/ArrayList;

    if-eqz v5, :cond_42

    .line 218
    iget-object v5, p0, Lcom/samsung/map/BENV;->recipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/map/VCard;

    .line 220
    .local v4, vcard:Lcom/samsung/map/VCard;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/map/VCard;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_20

    .line 226
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #vcard:Lcom/samsung/map/VCard;
    :cond_42
    :try_start_42
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_47} :catch_75

    move-result-object v1

    .line 230
    .local v1, envBytes:[B
    :goto_48
    array-length v5, v1

    invoke-virtual {p1, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 232
    iget-object v5, p0, Lcom/samsung/map/BENV;->body:Lcom/samsung/map/BBODY;

    if-eqz v5, :cond_55

    .line 234
    iget-object v5, p0, Lcom/samsung/map/BENV;->body:Lcom/samsung/map/BBODY;

    invoke-virtual {v5, p1}, Lcom/samsung/map/BBODY;->appendBytesToStream(Ljava/io/ByteArrayOutputStream;)V

    .line 237
    :cond_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/map/Indentable;->in:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "END:BENV\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 239
    :try_start_6a
    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6a .. :try_end_6f} :catch_7b

    move-result-object v1

    .line 243
    :goto_70
    array-length v5, v1

    invoke-virtual {p1, v1, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 244
    return-void

    .line 227
    .end local v1           #envBytes:[B
    :catch_75
    move-exception v0

    .line 228
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1       #envBytes:[B
    goto :goto_48

    .line 240
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_7b
    move-exception v0

    .line 241
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_70
.end method
