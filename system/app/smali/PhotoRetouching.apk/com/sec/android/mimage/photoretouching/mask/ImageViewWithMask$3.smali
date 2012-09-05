.class Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;
.super Ljava/lang/Thread;
.source "ImageViewWithMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    .line 610
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 613
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    #getter for: Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->isRunning:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->access$2(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 619
    :goto_8
    return-void

    .line 615
    :cond_9
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->isRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->access$3(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;Z)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    #calls: Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->dashed_line_anim()V
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->access$4(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)V

    .line 618
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$3;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->isRunning:Z
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->access$3(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;Z)V

    goto :goto_8
.end method
