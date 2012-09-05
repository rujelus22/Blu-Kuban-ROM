.class Lcom/vlingo/client/car/nav/NavController$4;
.super Ljava/lang/Object;
.source "NavController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/car/nav/NavController;->showHomeAddressEditDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/car/nav/NavController;

.field final synthetic val$editView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vlingo/client/car/nav/NavController;Landroid/widget/EditText;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/vlingo/client/car/nav/NavController$4;->this$0:Lcom/vlingo/client/car/nav/NavController;

    iput-object p2, p0, Lcom/vlingo/client/car/nav/NavController$4;->val$editView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 153
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 154
    .local v1, res2:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavController$4;->val$editView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavController$4;->val$editView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_48

    .line 155
    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavController$4;->val$editView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, address:Ljava/lang/String;
    const-string v2, "car_nav_home_address"

    invoke-static {v2, v0}, Lcom/vlingo/client/settings/Settings;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavController$4;->this$0:Lcom/vlingo/client/car/nav/NavController;

    #getter for: Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;
    invoke-static {v2}, Lcom/vlingo/client/car/nav/NavController;->access$000(Lcom/vlingo/client/car/nav/NavController;)Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090201

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 162
    .end local v0           #address:Ljava/lang/String;
    :goto_44
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 163
    return-void

    .line 160
    :cond_48
    iget-object v2, p0, Lcom/vlingo/client/car/nav/NavController$4;->this$0:Lcom/vlingo/client/car/nav/NavController;

    #getter for: Lcom/vlingo/client/car/nav/NavController;->delegate:Lcom/vlingo/client/car/CarActivityDelegate;
    invoke-static {v2}, Lcom/vlingo/client/car/nav/NavController;->access$000(Lcom/vlingo/client/car/nav/NavController;)Lcom/vlingo/client/car/CarActivityDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/vlingo/client/car/CarActivityDelegate;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090200

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_44
.end method
