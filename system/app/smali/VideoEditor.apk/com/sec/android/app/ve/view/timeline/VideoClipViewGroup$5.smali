.class Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$5;
.super Ljava/lang/Object;
.source "VideoClipViewGroup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->onDoubleTap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

.field private final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Landroid/widget/SeekBar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    iput-object p2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$5;->val$seekBar:Landroid/widget/SeekBar;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 519
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$5;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 520
    .local v0, volume:I
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$5;->this$0:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    mul-int/lit8 v2, v0, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting volume for this clip:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 522
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 523
    return-void
.end method
