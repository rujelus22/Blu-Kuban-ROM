.class Lcom/sec/android/app/wlantest/WlanTest$4;
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

.field final synthetic val$adapter_channelRx:Landroid/widget/ArrayAdapter;

.field final synthetic val$adapter_channelRx5G:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/app/wlantest/WlanTest;Landroid/widget/ArrayAdapter;Landroid/widget/ArrayAdapter;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iput-object p2, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->val$adapter_channelRx:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->val$adapter_channelRx5G:Landroid/widget/ArrayAdapter;

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
    .line 460
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    add-int/lit8 v1, p3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/wlantest/WlanTest;->posBandRx:Ljava/lang/String;

    .line 461
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

    .line 463
    if-nez p3, :cond_36

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v0, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelRx:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->val$adapter_channelRx:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 470
    :goto_35
    return-void

    .line 465
    :cond_36
    const/4 v0, 0x1

    if-ne v0, p3, :cond_43

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->this$0:Lcom/sec/android/app/wlantest/WlanTest;

    iget-object v0, v0, Lcom/sec/android/app/wlantest/WlanTest;->channelRx:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/wlantest/WlanTest$4;->val$adapter_channelRx5G:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_35

    .line 468
    :cond_43
    const-string v0, "WlanTest"

    const-string v1, "Band selection failed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
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
    .line 475
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
