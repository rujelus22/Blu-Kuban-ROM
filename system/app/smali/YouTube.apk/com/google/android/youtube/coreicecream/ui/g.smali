.class final Lcom/google/android/youtube/coreicecream/ui/g;
.super Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/ui/g;->c:Lcom/google/android/youtube/coreicecream/ui/PagedCarouselView;

    iput p3, p0, Lcom/google/android/youtube/coreicecream/ui/g;->b:I

    invoke-direct {p0, p2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/ex/carousel/f;
    .registers 3

    .prologue
    .line 41
    new-instance v0, Lcom/android/ex/carousel/f;

    iget v1, p0, Lcom/google/android/youtube/coreicecream/ui/g;->b:I

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/f;-><init>(I)V

    return-object v0
.end method
