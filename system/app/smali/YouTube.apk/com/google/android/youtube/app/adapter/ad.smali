.class public final Lcom/google/android/youtube/app/adapter/ad;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/app/ui/p;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/p;)V
    .registers 3
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 22
    const-string v0, "contextualMenu cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/p;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/ad;->a:Lcom/google/android/youtube/app/ui/p;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/ad;)Lcom/google/android/youtube/app/ui/p;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/ad;->a:Lcom/google/android/youtube/app/ui/p;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/youtube/app/adapter/ae;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/app/adapter/ae;-><init>(Lcom/google/android/youtube/app/adapter/ad;Landroid/view/View;)V

    return-object v0
.end method
