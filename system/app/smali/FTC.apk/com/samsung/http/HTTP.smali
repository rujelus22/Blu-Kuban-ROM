.class public Lcom/samsung/http/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field static DEVICE_NAME:Ljava/lang/String;

.field private static uploadPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    const-string v0, "DLNADOC/1.50 SEC_HHP_Samsung Mobile/1.0"

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
    .line 290
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 294
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    invoke-static {p1}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v0

    .line 299
    :goto_3a
    return-object v0

    .line 298
    :catch_3b
    move-exception v0

    .line 299
    const-string v0, ""

    goto :goto_3a
.end method

.method public static final getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "urlStr"

    .prologue
    .line 304
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 309
    .end local p0
    .local v0, i:I
    :goto_8
    return-object p0

    .line 306
    .end local v0           #i:I
    .restart local p0
    :cond_9
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 307
    .restart local v0       #i:I
    if-gez v0, :cond_14

    .line 308
    const-string p0, ""

    goto :goto_8

    .line 309
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
    .line 216
    if-eqz p0, :cond_c

    .line 217
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_f

    move-result-object v2

    .line 224
    .end local v1           #url:Ljava/net/URL;
    :goto_b
    return-object v2

    .line 220
    :cond_c
    const-string v2, ""

    goto :goto_b

    .line 223
    :catch_f
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_b
.end method

.method public static final getPort(Ljava/lang/String;)I
    .registers 4
    .parameter "urlStr"

    .prologue
    const/16 v1, 0x50

    .line 231
    if-eqz p0, :cond_11

    .line 232
    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_12

    move-result v1

    .line 235
    .local v1, port:I
    if-gtz v1, :cond_11

    .line 236
    const/16 v1, 0x50

    .line 245
    .end local v1           #port:I
    .end local v2           #url:Ljava/net/URL;
    :cond_11
    :goto_11
    return v1

    .line 244
    :catch_12
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    goto :goto_11
.end method

.method public static getUserAgentValue()Ljava/lang/String;
    .registers 1

    .prologue
    .line 168
    sget-object v0, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public static final isAbsoluteURL(Ljava/lang/String;)Z
    .registers 3
    .parameter "urlStr"

    .prologue
    const/4 v1, 0x0

    .line 201
    if-eqz p0, :cond_7

    .line 204
    :try_start_3
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8

    move-result v1

    .line 209
    :cond_7
    :goto_7
    return v1

    .line 208
    :catch_8
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    goto :goto_7
.end method

.method public static final toRelativeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "urlStr"

    .prologue
    .line 284
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

    .line 257
    .line 258
    invoke-static {p0}, Lcom/samsung/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 259
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_24

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 279
    :cond_24
    :goto_24
    return-object p0

    .line 264
    :cond_25
    :try_start_25
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 266
    if-eqz p1, :cond_53

    .line 267
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 269
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

    .line 272
    :cond_53
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 273
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_65} :catch_67

    move-result-object p0

    goto :goto_24

    .line 274
    :catch_67
    move-exception v0

    .line 275
    const-string v0, "DLNA"

    const-string v1, "fail to make relativeURL"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
