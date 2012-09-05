.class Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;
.super Ljava/lang/Object;
.source "MusicSettingsEqEffect.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomEqControlBarChangeListener"
.end annotation


# instance fields
.field private final eqNum:I

.field final synthetic this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;I)V
    .registers 3
    .parameter
    .parameter "num"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 695
    iput p2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    .line 696
    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V
    .registers 8
    .parameter "controlBar"
    .parameter "postion"
    .parameter "fromTouch"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    add-int/lit8 v3, p2, -0x6

    aput v3, v1, v2

    .line 701
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$900(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I
    invoke-static {v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[I

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setEqBubblePostion(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    invoke-static {v1, v2, p1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1000(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 707
    :try_start_2e
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/ICorePlayerService;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 708
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCorePlayer:Lcom/sec/android/app/music/ICorePlayerService;
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$100(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)Lcom/sec/android/app/music/ICorePlayerService;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getR2vsSum()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I
    invoke-static {v3}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[I

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/music/ICorePlayerService;->setR2VSUserEQ(I[I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_49} :catch_4a

    .line 714
    :cond_49
    :goto_49
    return-void

    .line 710
    :catch_4a
    move-exception v0

    .line 711
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomEqualizerSeekBarChangeListener:onProgressChanged()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 5
    .parameter "controlBar"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$900(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mCustomEqArray:[I
    invoke-static {v1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$800(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->setBubbleText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    #calls: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->setEqBubblePostion(ILcom/sec/android/touchwiz/widget/TwSeekBar;)V
    invoke-static {v0, v1, p1}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$1000(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;ILcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 722
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V
    .registers 4
    .parameter "controlBar"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$900(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->hideBubble()V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->this$0:Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;

    #getter for: Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->mEqControlBubble:[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;
    invoke-static {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;->access$900(Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect;)[Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsEqEffect$CustomEqControlBarChangeListener;->eqNum:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarBubble;->invalidate()V

    .line 728
    return-void
.end method
