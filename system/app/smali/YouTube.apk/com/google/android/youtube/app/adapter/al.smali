.class public final Lcom/google/android/youtube/app/adapter/al;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private final c:Lcom/google/android/youtube/app/adapter/an;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 47
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/al;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/al;->b:Landroid/content/res/Resources;

    .line 49
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "imageClient can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/google/android/youtube/app/adapter/an;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/adapter/an;-><init>(Lcom/google/android/youtube/app/adapter/al;Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/al;->c:Lcom/google/android/youtube/app/adapter/an;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/al;->d:Ljava/util/Map;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/al;)Lcom/google/android/youtube/app/adapter/an;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/al;->c:Lcom/google/android/youtube/app/adapter/an;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/al;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/al;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/adapter/al;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/al;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v0, Lcom/google/android/youtube/app/adapter/ao;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/youtube/app/adapter/ao;-><init>(Lcom/google/android/youtube/app/adapter/al;Landroid/view/View;Landroid/view/ViewGroup;B)V

    return-object v0
.end method
