.class public final Lcom/google/android/youtube/app/adapter/bp;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bp;->a:Landroid/content/res/Resources;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/bp;)Landroid/content/res/Resources;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/bp;->a:Landroid/content/res/Resources;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    new-instance v0, Lcom/google/android/youtube/app/adapter/bq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/bq;-><init>(Lcom/google/android/youtube/app/adapter/bp;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method
