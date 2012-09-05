.class Lcom/sec/android/app/wlantest/WlanTest$13;
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
    .line 762
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$13;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 765
    const-string v1, "WlanTest"

    const-string v2, "  ........ in btStopTx......"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$13;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v1, v1, Lcom/sec/android/app/wlantest/WlanTest;->btStopTx:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 768
    const/4 v0, 0x0

    .line 771
    .local v0, resultStop:Z
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$13;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->TP:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 779
    :cond_22
    :goto_22
    if-nez v0, :cond_2b

    .line 780
    const-string v1, "WlanTest"

    const-string v2, "Tx Stop - failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_2b
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$13;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v1, v1, Lcom/sec/android/app/wlantest/WlanTest;->btStartTx:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 784
    return-void

    .line 772
    :cond_34
    const-string v1, "WlanTest"

    const-string v2, "1.Tx Stop - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$13;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v2, Lcom/sec/android/app/wlantest/WlanTest$DutId;->CD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 775
    const-string v1, "WlanTest"

    const-string v2, "2.Close DUT - OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/4 v0, 0x1

    goto :goto_22
.end method
