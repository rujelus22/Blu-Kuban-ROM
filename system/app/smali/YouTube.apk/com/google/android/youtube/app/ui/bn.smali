.class public final Lcom/google/android/youtube/app/ui/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field private final a:Lcom/google/android/youtube/core/client/af;

.field private final b:Lcom/google/android/youtube/app/ui/StackButton;

.field private final c:Lcom/google/android/youtube/app/a/i;

.field private final d:I

.field private final e:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/a/i;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "imageClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->a:Lcom/google/android/youtube/core/client/af;

    .line 60
    const-string v0, "adapter can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/a/i;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->c:Lcom/google/android/youtube/app/a/i;

    .line 61
    iput p4, p0, Lcom/google/android/youtube/app/ui/bn;->d:I

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->b:Lcom/google/android/youtube/app/ui/StackButton;

    .line 63
    new-instance v0, Lcom/google/android/youtube/app/ui/bp;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/bp;-><init>(Lcom/google/android/youtube/app/ui/bn;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->e:Lcom/google/android/youtube/core/async/g;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/af;Lcom/google/android/youtube/app/ui/StackButton;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "activity can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "imageClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/af;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->a:Lcom/google/android/youtube/core/client/af;

    .line 39
    const-string v0, "stackButton can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->b:Lcom/google/android/youtube/app/ui/StackButton;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->c:Lcom/google/android/youtube/app/a/i;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/ui/bn;->d:I

    .line 42
    new-instance v0, Lcom/google/android/youtube/app/ui/bo;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ui/bo;-><init>(Lcom/google/android/youtube/app/ui/bn;)V

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/async/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->e:Lcom/google/android/youtube/core/async/g;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/bn;)Lcom/google/android/youtube/app/ui/StackButton;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->b:Lcom/google/android/youtube/app/ui/StackButton;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/ui/bn;)I
    .registers 2
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/youtube/app/ui/bn;->d:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/ui/bn;)Lcom/google/android/youtube/app/a/i;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->c:Lcom/google/android/youtube/app/a/i;

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
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->e:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v1}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

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

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bn;->a:Lcom/google/android/youtube/core/client/af;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/bn;->e:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/client/af;->a(Landroid/net/Uri;Lcom/google/android/youtube/core/async/g;)V

    :cond_1e
    return-void
.end method
