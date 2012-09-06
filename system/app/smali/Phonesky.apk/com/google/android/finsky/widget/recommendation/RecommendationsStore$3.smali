.class final Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;
.super Ljava/lang/Object;
.source "RecommendationsStore.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/recommendation/RecommendationsStore;->getBitmap(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/widget/recommendation/Recommendation;I)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:[Landroid/graphics/Bitmap;

.field final synthetic val$lock:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>([Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;->val$bitmap:[Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;->val$bitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;->val$lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 215
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 210
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/recommendation/RecommendationsStore$3;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
