.class public Lcom/samsung/http/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field public static DEVICE_NAME:Ljava/lang/String;

.field private static uploadPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    const-string v0, "SEC_HHP_Samsung Mobile/1.0"

    sput-object v0, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    .line 142
    const-string v0, "/sdcard/"

    sput-object v0, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAbsoluteURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 275
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 278
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 280
    invoke-static {p1}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v0

    .line 284
    :goto_3a
    return-object v0

    .line 283
    :catch_3b
    move-exception v0

    .line 284
    const-string v0, ""

    goto :goto_3a
.end method

.method public static final getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "urlStr"

    .prologue
    .line 289
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 294
    .end local p0
    .local v0, i:I
    :goto_8
    return-object p0

    .line 291
    .end local v0           #i:I
    .restart local p0
    :cond_9
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 292
    .restart local v0       #i:I
    if-gez v0, :cond_14

    .line 293
    const-string p0, ""

    goto :goto_8

    .line 294
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static getCacheDirectory()Ljava/lang/String;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getHost(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "urlStr"

    .prologue
    .line 211
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 215
    .end local v1           #url:Ljava/net/URL;
    :goto_9
    return-object v2

    .line 214
    :catch_a
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_9
.end method

.method public static final getPort(Ljava/lang/String;)I
    .registers 4
    .parameter "urlStr"

    .prologue
    .line 222
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 224
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_e

    move-result v1

    .line 225
    .local v1, port:I
    if-gtz v1, :cond_d

    .line 226
    const/16 v1, 0x50

    .line 230
    .end local v1           #port:I
    .end local v2           #url:Ljava/net/URL;
    :cond_d
    :goto_d
    return v1

    .line 229
    :catch_e
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    const/16 v1, 0x50

    goto :goto_d
.end method

.method public static final isAbsoluteURL(Ljava/lang/String;)Z
    .registers 3
    .parameter "urlStr"

    .prologue
    const/4 v1, 0x0

    .line 196
    if-eqz p0, :cond_7

    .line 199
    :try_start_3
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8

    move-result v1

    .line 204
    :cond_7
    :goto_7
    return v1

    .line 203
    :catch_8
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    goto :goto_7
.end method

.method public static final toRelativeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "urlStr"

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final toRelativeURL(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    .line 243
    invoke-static {p0}, Lcom/samsung/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_24

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 264
    :cond_24
    :goto_24
    return-object p0

    .line 249
    :cond_25
    :try_start_25
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 251
    if-eqz p1, :cond_53

    .line 252
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 257
    :cond_53
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_65} :catch_67

    move-result-object p0

    goto :goto_24

    .line 259
    :catch_67
    move-exception v0

    .line 260
    const-string v0, "DLNA"

    const-string v1, "fail to make relativeURL"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
