.class Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;
.super Ljava/lang/Object;
.source "ServiceModeApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

.field final synthetic val$select:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    iput-object p2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->val$select:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 741
    const/4 v6, 0x0

    .line 743
    .local v6, DataLen:I
    const-string v0, "ServiceMode"

    const-string v1, "OK Button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :try_start_8
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->val$select:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 748
    .local v10, num:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 750
    .local v8, line:I
    const-string v0, "ServiceMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "line is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->ParseKeyValueToIPCDefineValue(I)C
    invoke-static {v4, v8}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$600(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;I)C

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$400(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;CCCCC)V

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->val$select:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_68} :catch_69

    .line 759
    .end local v8           #line:I
    .end local v10           #num:Ljava/lang/String;
    :goto_68
    return-void

    .line 754
    :catch_69
    move-exception v7

    .line 755
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "ServiceMode"

    const-string v1, "Exception in Select Option Menu!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v9, "Wrong value. Enter the row"

    .line 757
    .local v9, msg:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$4;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    const/4 v1, 0x1

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_68
.end method
