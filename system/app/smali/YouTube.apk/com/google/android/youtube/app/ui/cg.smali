.class public final Lcom/google/android/youtube/app/ui/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/ag;

.field private final b:Lcom/google/android/youtube/app/ui/StackButton;

.field private final c:Lcom/google/android/youtube/app/adapter/ak;

.field private final d:I

.field private final e:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/b/ag;Lcom/google/android/youtube/app/ui/StackButton;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "imageClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->a:Lcom/google/android/youtube/core/b/ag;

    .line 39
    const-string v0, "stackButton can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/StackButton;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->c:Lcom/google/android/youtube/app/adapter/ak;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/cg;->d:I

    .line 42
    new-instance v0, Lcom/google/android/youtube/app/ui/ch;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/ch;-><init>(Lcom/google/android/youtube/app/ui/cg;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->e:Lcom/google/android/youtube/core/async/l;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/cg;)Lcom/google/android/youtube/app/ui/StackButton;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->b:Lcom/google/android/youtube/app/ui/StackButton;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cg;->e:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v1}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 25
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cg;->a:Lcom/google/android/youtube/core/b/ag;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/cg;->e:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/b/ag;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :cond_1e
    return-void
.end method
