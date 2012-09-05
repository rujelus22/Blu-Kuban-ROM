.class public Lcom/wssnps/mmspdu/PduPart;
.super Ljava/lang/Object;
.source "PduPart.java"


# static fields
.field static final DISPOSITION_ATTACHMENT:[B

.field static final DISPOSITION_FROM_DATA:[B

.field static final DISPOSITION_INLINE:[B


# instance fields
.field private mPartData:[B

.field private mPartHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const-string v0, "from-data"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/wssnps/mmspdu/PduPart;->DISPOSITION_FROM_DATA:[B

    .line 98
    const-string v0, "attachment"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/wssnps/mmspdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    .line 99
    const-string v0, "inline"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/wssnps/mmspdu/PduPart;->DISPOSITION_INLINE:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    .line 116
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mUri:Landroid/net/Uri;

    .line 121
    iput-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartData:[B

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    .line 129
    return-void
.end method


# virtual methods
.method public getCharset()I
    .registers 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v2, 0x81

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 230
    .local v0, charset:Ljava/lang/Integer;
    if-nez v0, :cond_12

    .line 231
    const/4 v1, 0x0

    .line 233
    :goto_11
    return v1

    :cond_12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11
.end method

.method public getContentDisposition()[B
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentId()[B
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentLocation()[B
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentTransferEncoding()[B
    .registers 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getContentType()[B
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getData()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPart;->mPartData:[B

    if-nez v1, :cond_7

    .line 152
    const/4 v0, 0x0

    .line 157
    :goto_6
    return-object v0

    .line 155
    :cond_7
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPart;->mPartData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 156
    .local v0, byteArray:[B
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPart;->mPartData:[B

    iget-object v2, p0, Lcom/wssnps/mmspdu/PduPart;->mPartData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public getDataUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFilename()[B
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getName()[B
    .registers 3

    .prologue
    .line 355
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public setCharset(I)V
    .registers 5
    .parameter "charset"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-void
.end method

.method public setContentDisposition([B)V
    .registers 4
    .parameter "contentDisposition"

    .prologue
    .line 273
    if-nez p1, :cond_a

    .line 274
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-disposition"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_a
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public setContentId([B)V
    .registers 9
    .parameter "contentId"

    .prologue
    const/16 v6, 0xc0

    const/16 v5, 0x3e

    const/16 v4, 0x3c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    if-eqz p1, :cond_d

    array-length v1, p1

    if-nez v1, :cond_15

    .line 186
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Content-Id may not be null or empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    :cond_15
    array-length v1, p1

    if-le v1, v3, :cond_2f

    aget-byte v1, p1, v2

    int-to-char v1, v1

    if-ne v1, v4, :cond_2f

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    if-ne v1, v5, :cond_2f

    .line 193
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_2e
    return-void

    .line 198
    :cond_2f
    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 199
    .local v0, buffer:[B
    aput-byte v4, v0, v2

    .line 200
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte v5, v0, v1

    .line 201
    array-length v1, p1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v1, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e
.end method

.method public setContentLocation([B)V
    .registers 4
    .parameter "contentLocation"

    .prologue
    .line 244
    if-nez p1, :cond_a

    .line 245
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-location"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_a
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method public setContentTransferEncoding([B)V
    .registers 4
    .parameter "contentTransferEncoding"

    .prologue
    .line 319
    if-nez p1, :cond_a

    .line 320
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-transfer-encoding"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_a
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void
.end method

.method public setContentType([B)V
    .registers 4
    .parameter "contentType"

    .prologue
    .line 296
    if-nez p1, :cond_a

    .line 297
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-type"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_a
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void
.end method

.method public setData([B)V
    .registers 5
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 137
    if-nez p1, :cond_4

    .line 143
    :goto_3
    return-void

    .line 141
    :cond_4
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartData:[B

    .line 142
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartData:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public setDataUri(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/wssnps/mmspdu/PduPart;->mUri:Landroid/net/Uri;

    .line 167
    return-void
.end method

.method public setFilename([B)V
    .registers 4
    .parameter "fileName"

    .prologue
    .line 365
    if-nez p1, :cond_a

    .line 366
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_a
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    return-void
.end method

.method public setName([B)V
    .registers 4
    .parameter "name"

    .prologue
    .line 342
    if-nez p1, :cond_a

    .line 343
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null content-id"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_a
    iget-object v0, p0, Lcom/wssnps/mmspdu/PduPart;->mPartHeader:Ljava/util/Map;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    return-void
.end method
