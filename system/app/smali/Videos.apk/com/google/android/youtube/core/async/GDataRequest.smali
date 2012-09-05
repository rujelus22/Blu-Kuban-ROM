.class public final Lcom/google/android/youtube/core/async/GDataRequest;
.super Ljava/lang/Object;
.source "GDataRequest.java"


# instance fields
.field public final content:[B

.field private volatile hashCode:I

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final uri:Landroid/net/Uri;

.field public final userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V
    .registers 7
    .parameter "uri"
    .parameter "userAuth"
    .parameter
    .parameter "content"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    if-eqz p2, :cond_4b

    const-string v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "dev.gdata.youtube.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "stage.gdata.youtube.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 45
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    .line 49
    :goto_3e
    iput-object p2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 50
    if-nez p3, :cond_4e

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_46
    iput-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    .line 52
    iput-object p4, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    .line 53
    return-void

    .line 47
    :cond_4b
    iput-object p1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    goto :goto_3e

    .line 50
    :cond_4e
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_46
.end method

.method private static cloneContent(Lcom/google/android/youtube/core/async/GDataRequest;)[B
    .registers 5
    .parameter "template"

    .prologue
    const/4 v3, 0x0

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, contentCopy:[B
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-eqz v2, :cond_10

    .line 142
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    array-length v1, v2

    .line 143
    .local v1, contentLength:I
    new-array v0, v1, [B

    .line 144
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .end local v1           #contentLength:I
    :cond_10
    return-object v0
.end method

.method public static create(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 4
    .parameter "uri"
    .parameter "userAuth"

    .prologue
    const/4 v1, 0x0

    .line 68
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter "uri"
    .parameter "userAuth"
    .parameter "content"

    .prologue
    .line 86
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "content can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static create(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter "userAuth"
    .parameter "template"

    .prologue
    .line 135
    const-string v0, "template can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequest;->cloneContent(Lcom/google/android/youtube/core/async/GDataRequest;)[B

    move-result-object v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    if-ne p0, p1, :cond_5

    .line 165
    :cond_4
    :goto_4
    return v1

    .line 161
    :cond_5
    instance-of v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;

    if-nez v3, :cond_b

    move v1, v2

    .line 162
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 164
    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    .line 165
    .local v0, other:Lcom/google/android/youtube/core/async/GDataRequest;
    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v3, :cond_36

    iget-object v3, v0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v3, :cond_34

    :goto_20
    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    iget-object v4, v0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    iget-object v4, v0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_34
    move v1, v2

    goto :goto_4

    :cond_36
    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/model/UserAuth;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_20
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 184
    iget v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->hashCode:I

    .line 185
    .local v0, result:I
    if-nez v0, :cond_2c

    .line 186
    const/16 v0, 0x11

    .line 187
    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 188
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v1, :cond_2d

    move v1, v2

    :goto_16
    add-int v0, v3, v1

    .line 189
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-nez v3, :cond_34

    :goto_28
    add-int v0, v1, v2

    .line 191
    iput v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->hashCode:I

    .line 193
    :cond_2c
    return v0

    .line 188
    :cond_2d
    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/UserAuth;->hashCode()I

    move-result v1

    goto :goto_16

    .line 190
    :cond_34
    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_28
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{uri=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userAuth=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "headers=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    :goto_4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5b
    const-string v0, "null"

    goto :goto_4c
.end method
