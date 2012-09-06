.class public final Lcom/google/android/youtube/app/adapter/bw;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 33
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bw;->a:Landroid/content/res/Resources;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/bw;)Landroid/graphics/Typeface;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bw;->b:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/bw;)Landroid/content/res/Resources;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bw;->a:Landroid/content/res/Resources;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/youtube/app/adapter/bx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/bx;-><init>(Lcom/google/android/youtube/app/adapter/bw;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method public final a(Landroid/graphics/Typeface;)V
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/bw;->b:Landroid/graphics/Typeface;

    .line 43
    return-void
.end method
