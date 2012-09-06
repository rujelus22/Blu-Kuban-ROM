.class Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;
.super Ljava/lang/Object;
.source "MediaOutputSelector.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/athome/picker/MediaOutputSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrimaryVolumeListener"
.end annotation


# instance fields
.field private mBaseProgress:F

.field private mBaseRxVolumes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/athome/picker/MediaOutput;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/athome/picker/MediaOutputSelector;


# direct methods
.method private constructor <init>(Lcom/android/athome/picker/MediaOutputSelector;)V
    .registers 3
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseRxVolumes:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutputSelector$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;-><init>(Lcom/android/athome/picker/MediaOutputSelector;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 13
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 652
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mPrimarySpeakerIconLevel:Landroid/graphics/drawable/LevelListDrawable;
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$1100(Lcom/android/athome/picker/MediaOutputSelector;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/graphics/drawable/LevelListDrawable;->setLevel(I)Z

    .line 654
    if-nez p3, :cond_c

    .line 690
    :cond_b
    :goto_b
    return-void

    .line 657
    :cond_c
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$1200(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutput;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 662
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$900(Lcom/android/athome/picker/MediaOutputSelector;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_43

    .line 663
    int-to-float v5, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 664
    .local v4, volume:F
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$1200(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutput;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    .line 665
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$1300(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputSelector$Listener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mSelectedOutput:Lcom/android/athome/picker/MediaOutput;
    invoke-static {v6}, Lcom/android/athome/picker/MediaOutputSelector;->access$1200(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutput;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V

    .line 689
    .end local v4           #volume:F
    :cond_3d
    :goto_3d
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->updateMasterVolumeViews()V
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$1500(Lcom/android/athome/picker/MediaOutputSelector;)V

    goto :goto_b

    .line 666
    :cond_43
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$900(Lcom/android/athome/picker/MediaOutputSelector;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3d

    .line 667
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$1000(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v3

    .line 668
    .local v3, selectedGroup:Lcom/android/athome/picker/MediaOutputGroup;
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseRxVolumes:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 670
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/athome/picker/MediaOutput;Ljava/lang/Float;>;"
    iget v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseProgress:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_b9

    .line 673
    int-to-float v5, p2

    iget v6, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseProgress:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a8

    .line 674
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x3f80

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float v5, v7, v5

    int-to-float v7, p2

    iget v8, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseProgress:F

    sub-float/2addr v7, v8

    mul-float/2addr v5, v7

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseProgress:F

    sub-float/2addr v7, v8

    div-float/2addr v5, v7

    add-float v2, v6, v5

    .line 684
    .local v2, newVolume:F
    :goto_9e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/athome/picker/MediaOutput;

    invoke-virtual {v5, v2}, Lcom/android/athome/picker/MediaOutput;->setVolume(F)V

    goto :goto_5c

    .line 677
    .end local v2           #newVolume:F
    :cond_a8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    int-to-float v6, p2

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseProgress:F

    div-float v2, v5, v6

    .restart local v2       #newVolume:F
    goto :goto_9e

    .line 682
    .end local v2           #newVolume:F
    :cond_b9
    int-to-float v5, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .restart local v2       #newVolume:F
    goto :goto_9e

    .line 686
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/android/athome/picker/MediaOutput;Ljava/lang/Float;>;"
    .end local v2           #newVolume:F
    :cond_c2
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->updateVolumeDetailsView(Lcom/android/athome/picker/MediaOutputGroup;)V
    invoke-static {v5, v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$1400(Lcom/android/athome/picker/MediaOutputSelector;Lcom/android/athome/picker/MediaOutputGroup;)V

    .line 687
    iget-object v5, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mListener:Lcom/android/athome/picker/MediaOutputSelector$Listener;
    invoke-static {v5}, Lcom/android/athome/picker/MediaOutputSelector;->access$1300(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputSelector$Listener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/athome/picker/MediaOutputSelector$Listener;->onVolumeChanged(Lcom/android/athome/picker/MediaOutput;)V

    goto/16 :goto_3d
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 7
    .parameter "seekBar"

    .prologue
    .line 621
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$900(Lcom/android/athome/picker/MediaOutputSelector;)I

    move-result v3

    if-nez v3, :cond_9

    .line 643
    :cond_8
    return-void

    .line 624
    :cond_9
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #getter for: Lcom/android/athome/picker/MediaOutputSelector;->mMasterVolumeMode:I
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$900(Lcom/android/athome/picker/MediaOutputSelector;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    .line 630
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseProgress:F

    .line 632
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->this$0:Lcom/android/athome/picker/MediaOutputSelector;

    #calls: Lcom/android/athome/picker/MediaOutputSelector;->getSelectedGroup()Lcom/android/athome/picker/MediaOutputGroup;
    invoke-static {v3}, Lcom/android/athome/picker/MediaOutputSelector;->access$1000(Lcom/android/athome/picker/MediaOutputSelector;)Lcom/android/athome/picker/MediaOutputGroup;

    move-result-object v0

    .line 633
    .local v0, group:Lcom/android/athome/picker/MediaOutputGroup;
    if-nez v0, :cond_29

    .line 634
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "selected group is null in group volume mode."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 636
    :cond_29
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseRxVolumes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 637
    invoke-virtual {v0}, Lcom/android/athome/picker/MediaOutputGroup;->getMediaOutputs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/athome/picker/MediaOutput;

    .line 638
    .local v2, output:Lcom/android/athome/picker/MediaOutput;
    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getIsMuted()Z

    move-result v3

    if-nez v3, :cond_36

    .line 639
    iget-object v3, p0, Lcom/android/athome/picker/MediaOutputSelector$PrimaryVolumeListener;->mBaseRxVolumes:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/athome/picker/MediaOutput;->getVolume()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seekBar"

    .prologue
    .line 648
    return-void
.end method
