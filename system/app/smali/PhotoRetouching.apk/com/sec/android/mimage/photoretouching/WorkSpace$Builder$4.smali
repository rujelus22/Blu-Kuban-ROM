.class Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$4;
.super Ljava/lang/Object;
.source "WorkSpace.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->create()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$4;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder$4;->this$1:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->this$0:Lcom/sec/android/mimage/photoretouching/WorkSpace;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Lcom/sec/android/mimage/photoretouching/WorkSpace;

    move-result-object v0

    #getter for: Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Lcom/sec/android/mimage/photoretouching/EffectController;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/EffectController;->change_step(I)V

    .line 361
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 354
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 348
    return-void
.end method
