.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;
.super Ljava/lang/Object;
.source "FunctionTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->setOnDiscoverable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 1120
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-string v1, "My device can be discoverable!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1123
    const-string v0, "BT\'s visibility on"

    const-string v1, "BT\'s visibility is changed on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 1125
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    const-string v1, "23"

    const-string v2, "P"

    invoke-virtual {v0, v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->mBTRFButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$500(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$18;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-virtual {v1}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1127
    return-void
.end method
