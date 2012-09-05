.class Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;
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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    iput-object p2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->val$input:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 18
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 686
    const/4 v12, 0x0

    .line 688
    .local v12, DataLen:I
    const-string v0, "ServiceMode"

    const-string v1, "OK Button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 691
    .local v14, keyData:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 693
    if-eqz v12, :cond_84

    .line 695
    const/4 v13, 0x0

    .local v13, i:I
    :goto_19
    if-ge v13, v12, :cond_55

    .line 697
    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 698
    .local v11, CharAtOfString:C
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->ParseKeyValueForModem(C)C
    invoke-static {v0, v11}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$700(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;C)C

    move-result v4

    .line 700
    .local v4, key:C
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    iget-object v1, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v1}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V
    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$400(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;CCCCC)V

    .line 695
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    .line 703
    .end local v4           #key:C
    .end local v11           #CharAtOfString:C
    :cond_55
    iget-object v5, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    const/16 v9, 0x53

    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->this$0:Lcom/sec/android/app/servicemodeapp/ServiceModeApp;

    #getter for: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->mOem:Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;
    invoke-static {v0}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$300(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;)Lcom/sec/android/app/servicemodeapp/ServiceModeApp$OemCommands;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    #calls: Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->SendData(CCCCC)V
    invoke-static/range {v5 .. v10}, Lcom/sec/android/app/servicemodeapp/ServiceModeApp;->access$400(Lcom/sec/android/app/servicemodeapp/ServiceModeApp;CCCCC)V

    .line 707
    .end local v13           #i:I
    :cond_84
    iget-object v0, p0, Lcom/sec/android/app/servicemodeapp/ServiceModeApp$3;->val$input:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 708
    return-void
.end method
