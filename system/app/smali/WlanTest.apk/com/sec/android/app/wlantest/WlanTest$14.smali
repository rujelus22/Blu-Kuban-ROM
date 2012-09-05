.class Lcom/sec/android/app/wlantest/WlanTest$14;
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
    .line 798
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 801
    const-string v1, "WlanTest"

    const-string v2, "  ........ in btStartRx......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v1, v1, Lcom/sec/android/app/wlantest/WlanTest;->btStartRx:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 803
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v1, v1, Lcom/sec/android/app/wlantest/WlanTest;->btStopRx:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 805
    const/4 v0, 0x0

    .line 808
    .local v0, resultRx:Z
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->OD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 822
    :cond_2a
    :goto_2a
    if-nez v0, :cond_33

    .line 823
    const-string v1, "WlanTest"

    const-string v2, "Rx Test failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    :cond_33
    return-void

    .line 809
    :cond_34
    const-string v1, "WlanTest"

    const-string v2, "1.Open DUT - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->SB:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posBandRx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 812
    const-string v1, "WlanTest"

    const-string v2, "2.Set Band - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->CH:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    iget-object v3, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v3, v3, Lcom/sec/android/app/wlantest/WlanTest;->posChannelRx:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 815
    const-string v1, "WlanTest"

    const-string v2, "3.Set Channel - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$14;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->RS:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 818
    const-string v1, "WlanTest"

    const-string v2, "4.Rx Start - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v0, 0x1

    goto :goto_2a
.end method
