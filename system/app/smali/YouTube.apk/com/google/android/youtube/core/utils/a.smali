.class public final Lcom/google/android/youtube/core/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Set;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/a/a;

.field private final e:Lcom/google/android/youtube/core/player/an;

.field private final f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_144P:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/16 v2, 0x24

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_1080P:Lcom/google/android/youtube/core/model/Stream$Quality;

    const/16 v2, 0x25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/google/android/youtube/core/utils/a;->a:Ljava/util/Map;

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/utils/a;->b:Ljava/util/Set;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "clientVersion cannot be null or empty"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    const-string v0, "adSenseUrlDomain cannot be null or empty"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    const-string v0, "adSenseUrlPath cannot be null or empty"

    invoke-static {p5, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/an;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/a;->e:Lcom/google/android/youtube/core/player/an;

    .line 68
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/a;->c:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/a;->f:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/google/android/a/a;

    invoke-direct {v0, p4, p5}, Lcom/google/android/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/utils/a;->d:Lcom/google/android/a/a;

    .line 71
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 6
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/a;->d:Lcom/google/android/a/a;

    invoke-virtual {v0, p1}, Lcom/google/android/a/a;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 83
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/a;->e:Lcom/google/android/youtube/core/player/an;

    sget-object v1, Lcom/google/android/youtube/core/utils/a;->b:Ljava/util/Set;

    iget-boolean v2, p0, Lcom/google/android/youtube/core/utils/a;->g:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/an;->a(Ljava/util/Set;Z)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1b

    .line 85
    const-string v0, "Could not select a stream, defaulting to 240p "

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_240P:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 89
    :cond_1b
    iget-object v1, p0, Lcom/google/android/youtube/core/utils/a;->d:Lcom/google/android/a/a;

    iget-object v2, p0, Lcom/google/android/youtube/core/utils/a;->c:Landroid/content/Context;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/a/a;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "sdkv"

    iget-object v3, p0, Lcom/google/android/youtube/core/utils/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "video_format"

    sget-object v3, Lcom/google/android/youtube/core/utils/a;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "output"

    const-string v2, "xml_vast2"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 96
    :cond_4d
    return-object p1
.end method

.method public final a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/android/youtube/core/utils/a;->g:Z

    .line 75
    return-void
.end method
