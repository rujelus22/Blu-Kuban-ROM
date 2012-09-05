.class Lcom/android/phone/BluetoothHandsfree$29;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .registers 2
    .parameter

    .prologue
    .line 3636
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 7
    .parameter "args"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 3640
    array-length v1, p1

    if-ne v1, v0, :cond_b

    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/Integer;

    if-nez v1, :cond_11

    .line 3641
    :cond_b
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 3654
    :goto_10
    return-object v1

    .line 3643
    :cond_11
    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v3, v1}, Lcom/android/phone/BluetoothHandsfree;->access$7702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3644
    const-string v1, "sec_korea_mm_audio"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3645
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$7700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v1

    const/16 v3, 0xe

    if-ne v1, v3, :cond_3e

    .line 3647
    const-string v1, "Bluetooth HS/HF"

    const-string v3, "when mScoGain is 14 , set 15 because of IOT"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/16 v3, 0xf

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v1, v3}, Lcom/android/phone/BluetoothHandsfree;->access$7702(Lcom/android/phone/BluetoothHandsfree;I)I

    .line 3651
    :cond_3e
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 3653
    .local v0, flag:I
    :goto_4a
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/phone/BluetoothHandsfree;->access$500(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$29;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mScoGain:I
    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$7700(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v4

    invoke-virtual {v1, v3, v4, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3654
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_10

    .end local v0           #flag:I
    :cond_60
    move v0, v2

    .line 3651
    goto :goto_4a
.end method
