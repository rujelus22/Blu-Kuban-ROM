.class public final Lcom/google/android/youtube/app/honeycomb/tablet/z;
.super Lcom/google/android/youtube/core/ui/j;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/adapter/as;

.field private final b:Lcom/google/android/youtube/core/async/ar;

.field private final h:Lcom/google/android/youtube/core/async/ar;

.field private final i:Lcom/google/android/youtube/core/b/ag;

.field private final j:Lcom/google/android/youtube/core/async/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/app/adapter/as;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/d;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/j;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/g;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/d;)V

    .line 52
    const-string v0, "imageClient may not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->i:Lcom/google/android/youtube/core/b/ag;

    .line 53
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->a:Lcom/google/android/youtube/app/adapter/as;

    .line 54
    iput-object p5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->h:Lcom/google/android/youtube/core/async/ar;

    .line 55
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/honeycomb/tablet/aa;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/z;B)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->j:Lcom/google/android/youtube/core/async/c;

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/async/i;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->i:Lcom/google/android/youtube/core/b/ag;

    new-instance v3, Lcom/google/android/youtube/app/ui/cf;

    invoke-direct {v3, v0}, Lcom/google/android/youtube/app/ui/cf;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/async/i;-><init>(Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/core/async/k;)V

    new-instance v0, Lcom/google/android/youtube/core/async/ao;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->h:Lcom/google/android/youtube/core/async/ar;

    invoke-direct {v0, v2, v1}, Lcom/google/android/youtube/core/async/ao;-><init>(Lcom/google/android/youtube/core/async/ar;Lcom/google/android/youtube/core/async/ar;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->b:Lcom/google/android/youtube/core/async/ar;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/z;)Lcom/google/android/youtube/app/adapter/as;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->a:Lcom/google/android/youtube/app/adapter/as;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/j;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 73
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->b:Lcom/google/android/youtube/core/async/ar;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/z;->g()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/z;->j:Lcom/google/android/youtube/core/async/c;

    invoke-interface {v2, v0, v3}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V

    goto :goto_7

    .line 76
    :cond_25
    return-void
.end method
