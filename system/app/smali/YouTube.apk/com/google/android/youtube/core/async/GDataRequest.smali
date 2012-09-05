.class public final Lcom/google/android/youtube/core/async/GDataRequest;
.super Lcom/google/android/youtube/core/async/z;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/async/z;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    .line 49
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 130
    const-string v0, "template can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v1, :cond_f

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    :cond_f
    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->b:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Lcom/google/android/youtube/core/async/z;)[B

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 73
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "headers can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "content can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;[B)Lcom/google/android/youtube/core/async/GDataRequest;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const-string v0, "userAuth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "content can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method

.method private static b(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 3
    .parameter

    .prologue
    .line 52
    const-string v0, "http"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "dev.gdata.youtube.com"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "stage.gdata.youtube.com"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 55
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 57
    :cond_32
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/z;
    .registers 6
    .parameter

    .prologue
    .line 149
    const-string v0, "auth can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/GDataRequest;->c:Ljava/util/Map;

    invoke-static {p0}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Lcom/google/android/youtube/core/async/z;)[B

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/async/GDataRequest;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Ljava/util/Map;[B)V

    return-object v0
.end method
