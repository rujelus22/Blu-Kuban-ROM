.class Lcom/sec/android/app/wlantest/WlanTest$9;
.super Ljava/lang/Object;
.source "WlanTest.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

.field final synthetic val$adapter_channelTx:Landroid/widget/ArrayAdapter;

.field final synthetic val$adapter_channelTx5G:Landroid/widget/ArrayAdapter;

.field final synthetic val$adapter_txRate:Landroid/widget/ArrayAdapter;

.field final synthetic val$adapter_txRate5G:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iput-object p2, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_channelTx:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_txRate:Landroid/widget/ArrayAdapter;

    iput-object p4, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_channelTx5G:Landroid/widget/ArrayAdapter;

    iput-object p5, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_txRate5G:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 625
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/wlantest/WlanTest;->posBandTx:Ljava/lang/String;

    .line 626
    const-string v0, "WlanTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-nez p3, :cond_5f

    .line 629
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v0, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelTx:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_channelTx:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v0, v0, Lcom/sec/android/app/wlantest/WlanTest;->txRate:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_txRate:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 637
    :goto_3e
    const-string v0, "WlanTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    return-void

    .line 631
    :cond_5f
    const/4 v0, 0x1

    if-ne v0, p3, :cond_75

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v0, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelTx:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_channelTx5G:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v0, v0, Lcom/sec/android/app/wlantest/WlanTest;->txRate:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$9;->val$adapter_txRate5G:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_3e

    .line 635
    :cond_75
    const-string v0, "WlanTest"

    const-string v1, "Band selection failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 643
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
