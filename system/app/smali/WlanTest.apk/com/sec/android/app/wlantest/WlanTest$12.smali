.class Lcom/sec/android/app/wlantest/WlanTest$12;
.super Ljava/lang/Object;
.source "WlanTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/wlantest/WlanTest;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/wlantest/WlanTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/wlantest/WlanTest;)V
    .registers 2
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 714
    const-string v1, "WlanTest"

    const-string v2, "  ........ in btStartTx......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v1, v1, Lcom/sec/android/app/wlantest/WlanTest;->btStartTx:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v1, v1, Lcom/sec/android/app/wlantest/WlanTest;->btStopTx:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v2, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v2, v2, Lcom/sec/android/app/wlantest/WlanTest;->burst:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/wlantest/WlanTest;->posBurstTx:Ljava/lang/String;

    .line 719
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v2, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v2, v2, Lcom/sec/android/app/wlantest/WlanTest;->payload:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/wlantest/WlanTest;->posPayloadTx:Ljava/lang/String;

    .line 721
    const/4 v0, 0x0

    .line 724
    .local v0, resultTx:Z
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->OD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 756
    :cond_4a
    :goto_4a
    if-nez v0, :cond_53

    .line 757
    const-string v1, "WlanTest"

    const-string v2, "Tx Test failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_53
    return-void

    .line 725
    :cond_54
    const-string v1, "WlanTest"

    const-string v2, "1.Open DUT - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->SB:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posBandTx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 728
    const-string v1, "WlanTest"

    const-string v2, "2.Set Band - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->CH:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posChannelTx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 731
    const-string v1, "WlanTest"

    const-string v2, "3.Set Channel - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->DR:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posTxRate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 734
    const-string v1, "WlanTest"

    const-string v2, "4.Set Data Rate - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->SP:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posPreambleTx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 737
    const-string v1, "WlanTest"

    const-string v2, "5.Set Preamble or Short Guard Interval - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->BI:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posBurstTx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 740
    const-string v1, "WlanTest"

    const-string v2, "6.Set Burst Interval - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->PL:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posPayloadTx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 743
    const-string v1, "WlanTest"

    const-string v2, "7.Set PayLoad - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->BW:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posBandwidthTx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 746
    const-string v1, "WlanTest"

    const-string v2, "8.Set BandWidth - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->TG:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posPower:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 749
    const-string v1, "WlanTest"

    const-string v2, "9.Set Tx Gain - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->TS:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$12;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posPacketTx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 752
    const-string v1, "WlanTest"

    const-string v2, "10.Tx Start - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x1

    goto/16 :goto_4a
.end method
