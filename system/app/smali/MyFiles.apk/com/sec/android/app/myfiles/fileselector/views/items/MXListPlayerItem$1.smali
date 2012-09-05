.class Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;
.super Ljava/lang/Object;
.source "MXListPlayerItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setPlaying(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

.field final synthetic val$duration:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iput p2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->val$duration:I

    iput p3, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->val$position:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 96
    :cond_15
    :goto_15
    return-void

    .line 77
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setIconOverlay(I)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->access$000(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->setScroll(Z)V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    #setter for: Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->access$002(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;Z)Z

    .line 83
    :cond_30
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    if-eqz v0, :cond_15

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4a

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->setVisibility(I)V

    .line 86
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-boolean v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->isSetDrawable:Z

    if-nez v0, :cond_5f

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v1, v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->setPregressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iput-boolean v2, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->isSetDrawable:Z

    .line 91
    :cond_5f
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->val$duration:I

    if-eqz v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    iget v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->val$position:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->val$duration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->setProgress(F)V

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;->postInvalidate()V

    goto :goto_15
.end method
