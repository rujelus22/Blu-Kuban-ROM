.class Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CustomerCare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/dsa/diagnostics/CustomerCare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TSPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;


# direct methods
.method constructor <init>(Lcom/sprint/dsa/diagnostics/CustomerCare;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 7
    .parameter "location"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    .line 139
    instance-of v2, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_80

    move-object v0, p1

    .line 140
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 141
    .local v0, cellLoc:Landroid/telephony/cdma/CdmaCellLocation;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08008e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f08008f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080090

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    const-string v3, "cell_location"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sprint/dsa/diagnostics/CustomerCare;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$1(Lcom/sprint/dsa/diagnostics/CustomerCare;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v0           #cellLoc:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_80
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 7
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080096

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    packed-switch p2, :pswitch_data_96

    .line 195
    :pswitch_27
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :goto_37
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sprint/dsa/diagnostics/CustomerCare;->checkConnectionState(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$2(Lcom/sprint/dsa/diagnostics/CustomerCare;Ljava/lang/String;)V

    .line 202
    return-void

    .line 180
    :pswitch_41
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08009b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 183
    :pswitch_52
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 186
    :pswitch_63
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 189
    :pswitch_74
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 192
    :pswitch_85
    iget-object v1, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 178
    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_85
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_52
        :pswitch_63
        :pswitch_74
        :pswitch_41
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 7
    .parameter "signalStrength"

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080092

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080093

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080094

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 161
    .local v1, snr:I
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    #getter for: Lcom/sprint/dsa/diagnostics/CustomerCare;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$0(Lcom/sprint/dsa/diagnostics/CustomerCare;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080095

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    if-ltz v1, :cond_c8

    const/16 v2, 0x8

    if-gt v1, v2, :cond_c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_b9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v2, p0, Lcom/sprint/dsa/diagnostics/CustomerCare$TSPhoneStateListener;->this$0:Lcom/sprint/dsa/diagnostics/CustomerCare;

    const-string v3, "signal_strength"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/sprint/dsa/diagnostics/CustomerCare;->updateStatus(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/sprint/dsa/diagnostics/CustomerCare;->access$1(Lcom/sprint/dsa/diagnostics/CustomerCare;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 162
    :cond_c8
    const-string v2, "N/A"

    goto :goto_b9
.end method
