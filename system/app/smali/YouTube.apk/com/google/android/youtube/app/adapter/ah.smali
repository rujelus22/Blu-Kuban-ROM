.class public final Lcom/google/android/youtube/app/adapter/ah;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/google/android/youtube/app/adapter/bf;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/google/android/youtube/app/adapter/bf;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 28
    const-string v0, "resources cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ah;->a:Landroid/content/res/Resources;

    .line 29
    const-string v0, "videoRendererFactory cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/bf;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ah;->b:Lcom/google/android/youtube/app/adapter/bf;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/ah;)Lcom/google/android/youtube/app/adapter/bf;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ah;->b:Lcom/google/android/youtube/app/adapter/bf;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/ah;)Landroid/content/res/Resources;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ah;->a:Landroid/content/res/Resources;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/youtube/app/adapter/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/app/adapter/ai;-><init>(Lcom/google/android/youtube/app/adapter/ah;Landroid/view/View;Landroid/view/ViewGroup;B)V

    return-object v0
.end method

.method public final a(Ljava/lang/Iterable;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event;

    .line 37
    iget-object v0, v0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 39
    :cond_1b
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ah;->b:Lcom/google/android/youtube/app/adapter/bf;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/app/adapter/bf;->a(Ljava/lang/Iterable;)V

    .line 40
    return-void
.end method
