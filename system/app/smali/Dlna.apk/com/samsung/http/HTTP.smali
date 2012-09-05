.class public Lcom/samsung/http/HTTP;
.super Ljava/lang/Object;
.source "HTTP.java"


# static fields
.field static DEVICE_NAME:Ljava/lang/String;

.field public static FRIENDLYNAME:Ljava/lang/String;

.field private static uploadPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 139
    const-string v0, "DLNADOC/1.50 SEC_HHP_Samsung Mobile/1.0"

    sput-object v0, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    .line 140
    const-string v0, "Samsung Mobile"

    sput-object v0, Lcom/samsung/http/HTTP;->FRIENDLYNAME:Ljava/lang/String;

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
    .line 277
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 282
    invoke-static {p1}, Lcom/samsung/http/HTTP;->toRelativeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3b

    move-result-object v0

    .line 286
    :goto_3a
    return-object v0

    .line 285
    :catch_3b
    move-exception v0

    .line 286
    const-string v0, ""

    goto :goto_3a
.end method

.method public static final getBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "urlStr"

    .prologue
    .line 291
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 296
    .end local p0
    .local v0, i:I
    :goto_8
    return-object p0

    .line 293
    .end local v0           #i:I
    .restart local p0
    :cond_9
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 294
    .restart local v0       #i:I
    if-gez v0, :cond_14

    .line 295
    const-string p0, ""

    goto :goto_8

    .line 296
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
    .line 213
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 217
    .end local v1           #url:Ljava/net/URL;
    :goto_9
    return-object v2

    .line 216
    :catch_a
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_9
.end method

.method public static final getPort(Ljava/lang/String;)I
    .registers 4
    .parameter "urlStr"

    .prologue
    .line 224
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 226
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_e

    move-result v1

    .line 227
    .local v1, port:I
    if-gtz v1, :cond_d

    .line 228
    const/16 v1, 0x50

    .line 232
    .end local v1           #port:I
    .end local v2           #url:Ljava/net/URL;
    :cond_d
    :goto_d
    return v1

    .line 231
    :catch_e
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const/16 v1, 0x50

    goto :goto_d
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

    .line 198
    if-eqz p0, :cond_7

    .line 201
    :try_start_3
    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_8

    move-result v1

    .line 206
    :cond_7
    :goto_7
    return v1

    .line 205
    :catch_8
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/Exception;
    goto :goto_7
.end method

.method public static setCacheDirectory(Ljava/lang/String;)Z
    .registers 4
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 145
    if-eqz p0, :cond_b

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 146
    :cond_b
    const-string v2, "/sdcard/"

    sput-object v2, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    .line 159
    :goto_f
    return v1

    .line 150
    :cond_10
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_26

    .line 152
    :cond_21
    const-string v2, "/sdcard/"

    sput-object v2, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    goto :goto_f

    .line 156
    :cond_26
    sput-object p0, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    .line 157
    sget-object v1, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 158
    sget-object v1, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/http/HTTP;->uploadPath:Ljava/lang/String;

    .line 159
    :cond_49
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public static setDeviceName(Ljava/lang/String;)V
    .registers 6
    .parameter "deviceName"

    .prologue
    .line 173
    const/4 v2, 0x1

    .line 174
    .local v2, isAscii:Z
    sput-object p0, Lcom/samsung/http/HTTP;->FRIENDLYNAME:Ljava/lang/String;

    .line 175
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_24

    .line 184
    :goto_a
    if-eqz v2, :cond_33

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DLNADOC/1.50 SEC_HHP_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/1.0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    .line 189
    :goto_23
    return-void

    .line 176
    :cond_24
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 177
    .local v0, c:C
    if-ltz v0, :cond_2e

    const/16 v3, 0x7f

    if-le v0, v3, :cond_30

    .line 178
    :cond_2e
    const/4 v2, 0x0

    .line 179
    goto :goto_a

    .line 175
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 187
    .end local v0           #c:C
    :cond_33
    const-string v3, "DLNADOC/1.50 SEC_HHP_Samsung Mobile/1.0"

    sput-object v3, Lcom/samsung/http/HTTP;->DEVICE_NAME:Ljava/lang/String;

    goto :goto_23
.end method

.method public static final toRelativeURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "urlStr"

    .prologue
    .line 271
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

    .line 244
    .line 245
    invoke-static {p0}, Lcom/samsung/http/HTTP;->isAbsoluteURL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_24

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 266
    :cond_24
    :goto_24
    return-object p0

    .line 251
    :cond_25
    :try_start_25
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 253
    if-eqz p1, :cond_53

    .line 254
    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 256
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

    .line 259
    :cond_53
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_65} :catch_67

    move-result-object p0

    goto :goto_24

    .line 261
    :catch_67
    move-exception v0

    .line 262
    const-string v0, "DLNA"

    const-string v1, "fail to make relativeURL"

    invoke-static {v0, v1}, Lcom/samsung/api/Debugs;->warning(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24
.end method
