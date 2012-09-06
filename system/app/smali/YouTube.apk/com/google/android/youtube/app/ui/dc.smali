.class public final Lcom/google/android/youtube/app/ui/dc;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/ae;

.field private final b:Lcom/google/android/youtube/core/b/ag;

.field private final h:Lcom/google/android/youtube/core/async/c;

.field private final i:Lcom/google/android/youtube/core/async/c;

.field private final j:Lcom/google/android/youtube/app/adapter/bm;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/bm;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/d;Lcom/google/android/youtube/core/b/ag;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-interface {p4}, Lcom/google/android/youtube/core/b/ae;->w()Lcom/google/android/youtube/core/async/ar;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 46
    iput-object p4, p0, Lcom/google/android/youtube/app/ui/dc;->a:Lcom/google/android/youtube/core/b/ae;

    .line 47
    iput-object p6, p0, Lcom/google/android/youtube/app/ui/dc;->b:Lcom/google/android/youtube/core/b/ag;

    .line 48
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/dc;->j:Lcom/google/android/youtube/app/adapter/bm;

    .line 49
    new-instance v0, Lcom/google/android/youtube/app/ui/de;

    invoke-direct {v0, p0, v6}, Lcom/google/android/youtube/app/ui/de;-><init>(Lcom/google/android/youtube/app/ui/dc;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dc;->h:Lcom/google/android/youtube/core/async/c;

    .line 50
    new-instance v0, Lcom/google/android/youtube/app/ui/dd;

    invoke-direct {v0, p0, v6}, Lcom/google/android/youtube/app/ui/dd;-><init>(Lcom/google/android/youtube/app/ui/dc;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/dc;->i:Lcom/google/android/youtube/core/async/c;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/dc;)Lcom/google/android/youtube/app/adapter/bm;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dc;->j:Lcom/google/android/youtube/app/adapter/bm;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/dc;)Lcom/google/android/youtube/core/async/c;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dc;->i:Lcom/google/android/youtube/core/async/c;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/dc;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/dc;->b:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 57
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Subscription;->channelUri:Landroid/net/Uri;

    .line 58
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dc;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v2}, Lcom/google/android/youtube/core/b/ae;->a()Lcom/google/android/youtube/core/async/GDataRequestFactory;

    .line 59
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/dc;->a:Lcom/google/android/youtube/core/b/ae;

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/dc;->h:Lcom/google/android/youtube/core/async/c;

    invoke-interface {v2, v0, v3}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_4

    .line 62
    :cond_25
    return-void
.end method
