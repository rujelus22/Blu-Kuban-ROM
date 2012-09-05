.class public Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;
.super Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;
.source "RentalsCarousel.java"

# interfaces
.implements Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$PurchasesViewWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/honeycomb/tablet/RentalsCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
    .registers 3

    .prologue
    .line 28
    new-instance v0, Lcom/android/ex/carousel/CarouselView$Info;

    const v1, 0x7f070001

    invoke-direct {v0, v1}, Lcom/android/ex/carousel/CarouselView$Info;-><init>(I)V

    return-object v0
.end method

.method public setAdapter(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/google/android/youtube/coreicecream/ui/AdapterCarousel;->setAdapter(Landroid/widget/Adapter;)V

    .line 33
    return-void
.end method
