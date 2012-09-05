.class public final Lcom/google/android/youtube/app/honeycomb/tablet/aa;
.super Lcom/google/android/youtube/core/ui/k;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/a/l;

.field private final b:Lcom/google/android/youtube/core/async/ad;

.field private final e:Lcom/google/android/youtube/core/async/ad;

.field private final f:Lcom/google/android/youtube/core/client/af;

.field private final g:Lcom/google/android/youtube/core/async/a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/app/a/l;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/e;)V
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
    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/ui/k;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/h;Lcom/google/android/youtube/core/a/a;Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/e;)V

    .line 52
    const-string v0, "imageClient may not be null"

    invoke-static {p6, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->f:Lcom/google/android/youtube/core/client/af;

    .line 53
    iput-object p3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->a:Lcom/google/android/youtube/app/a/l;

    .line 54
    iput-object p5, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->e:Lcom/google/android/youtube/core/async/ad;

    .line 55
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/tablet/ab;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/honeycomb/tablet/ab;-><init>(Lcom/google/android/youtube/app/honeycomb/tablet/aa;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->g:Lcom/google/android/youtube/core/async/a;

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/async/d;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->f:Lcom/google/android/youtube/core/client/af;

    new-instance v3, Lcom/google/android/youtube/app/ui/bm;

    invoke-direct {v3, v0}, Lcom/google/android/youtube/app/ui/bm;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/async/d;-><init>(Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/core/async/f;)V

    new-instance v0, Lcom/google/android/youtube/core/async/aa;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->e:Lcom/google/android/youtube/core/async/ad;

    invoke-direct {v0, v2, v1}, Lcom/google/android/youtube/core/async/aa;-><init>(Lcom/google/android/youtube/core/async/ad;Lcom/google/android/youtube/core/async/ad;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->b:Lcom/google/android/youtube/core/async/ad;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/tablet/aa;)Lcom/google/android/youtube/app/a/l;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->a:Lcom/google/android/youtube/app/a/l;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/ui/k;->a(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

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
    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->b:Lcom/google/android/youtube/core/async/ad;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->f()Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/youtube/core/async/GDataRequest;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/GDataRequest;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/tablet/aa;->g:Lcom/google/android/youtube/core/async/a;

    invoke-interface {v2, v0, v3}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V

    goto :goto_7

    .line 76
    :cond_25
    return-void
.end method
