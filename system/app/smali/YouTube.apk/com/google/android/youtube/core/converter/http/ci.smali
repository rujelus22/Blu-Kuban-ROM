.class public final Lcom/google/android/youtube/core/converter/http/ci;
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
    .line 35
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://gdata.youtube.com/schemas/2007#user.uploads"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "http://gdata.youtube.com/schemas/2007#user.favorites"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "http://gdata.youtube.com/schemas/2007#user.subscriptions"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/http/ci;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/ad;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 43
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    const-string v1, "/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cr;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cr;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/yt:username"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cq;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cq;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/author/name"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cp;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cp;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/author/email"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/co;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/co;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/yt:age"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cn;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cn;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/media:thumbnail"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cm;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cm;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/yt:incomplete"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cl;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cl;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/yt:statistics"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/ck;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/ck;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/entry/gd:feedLink"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cj;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cj;-><init>(Lcom/google/android/youtube/core/converter/http/ci;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/ci;->c:Lcom/google/android/youtube/core/converter/c;

    .line 125
    return-void
.end method

.method static synthetic b()Ljava/util/Set;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/core/converter/http/ci;->b:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/ci;->c:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
