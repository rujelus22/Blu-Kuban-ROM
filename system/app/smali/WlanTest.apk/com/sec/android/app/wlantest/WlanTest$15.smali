.class Lcom/sec/android/app/wlantest/WlanTest$15;
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
    .line 828
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v10, 0x1

    .line 831
    const-string v6, "WlanTest"

    const-string v7, "  ........ in btStopRx......"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v6, v6, Lcom/sec/android/app/wlantest/WlanTest;->btStopRx:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 834
    const/4 v4, 0x0

    .line 838
    .local v4, resultStop:Z
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v7, Lcom/sec/android/app/wlantest/WlanTest$DutId;->RP:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    .line 859
    :cond_23
    :goto_23
    if-nez v4, :cond_2c

    .line 860
    const-string v6, "WlanTest"

    const-string v7, "Rx Stop - failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_2c
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v6, v6, Lcom/sec/android/app/wlantest/WlanTest;->btStartRx:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 864
    return-void

    .line 839
    :cond_34
    const-string v6, "WlanTest"

    const-string v7, "Rx Stop - OK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v7, Lcom/sec/android/app/wlantest/WlanTest$DutId;->RG:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, goodframes:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v6, v6, Lcom/sec/android/app/wlantest/WlanTest;->received:Landroid/widget/EditText;

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v7, Lcom/sec/android/app/wlantest/WlanTest$DutId;->RE:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, errorframes:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v6, v6, Lcom/sec/android/app/wlantest/WlanTest;->error:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 847
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 848
    .local v0, errorInt:I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int v5, v6, v0

    .line 850
    .local v5, total:I
    int-to-float v6, v0

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4059

    mul-double/2addr v6, v8

    double-to-float v3, v6

    .line 851
    .local v3, perError:F
    const-string v6, "WlanTest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perError : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v6, v6, Lcom/sec/android/app/wlantest/WlanTest;->per:Landroid/widget/EditText;

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v6, p0, Lcom/sec/android/app/wlantest/WlanTest$15;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    sget-object v7, Lcom/sec/android/app/wlantest/WlanTest$DutId;->CD:Lcom/sec/android/app/wlantest/WlanTest$DutId;

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/wlantest/WlanTest;->dutCommand(Lcom/sec/android/app/wlantest/WlanTest$DutId;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 855
    const-string v6, "WlanTest"

    const-string v7, "Close DUT - OK"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/4 v4, 0x1

    goto/16 :goto_23
.end method
