.class Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;
.super Landroid/os/Handler;
.source "ImageViewWithMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;
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
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xd002

    if-ne v0, v1, :cond_14

    .line 37
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    #getter for: Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->drawbrushanimation:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->access$0(Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask$1;->this$0:Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/ImageViewWithMask;->invalidate()V

    .line 40
    :cond_14
    return-void
.end method
