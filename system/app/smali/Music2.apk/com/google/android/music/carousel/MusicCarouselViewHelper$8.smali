.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onInvalidateDetailTexture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 722
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;->val$id:I

    #calls: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    invoke-static {v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 723
    .local v0, info:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_d

    .line 724
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mActiveDetailTexture:Z

    .line 726
    :cond_d
    return-void
.end method
