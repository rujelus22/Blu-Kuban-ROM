.class public final Lcom/google/android/youtube/core/converter/http/b;
.super Lcom/google/android/youtube/core/converter/http/ad;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/Set;


# instance fields
.field private final c:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "channel.global.title.string"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "channel.global.description.string"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "channel.global.keywords.string"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mobile_watchpage.banner.image.url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "mobile_watchpage.banner.image_target.url"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "watchpage.global.featured_playlist.id"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/http/b;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 40
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    const-string v1, "/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/d;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/d;-><init>(Lcom/google/android/youtube/core/converter/http/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/yt:option"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/c;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/c;-><init>(Lcom/google/android/youtube/core/converter/http/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/b;->c:Lcom/google/android/youtube/core/converter/c;

    .line 73
    return-void
.end method

.method static synthetic b()Ljava/util/Set;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/youtube/core/converter/http/b;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/b;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
