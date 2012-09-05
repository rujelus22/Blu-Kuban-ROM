.class Lcom/sprint/smps/activities/Login$3;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/Login;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/Login;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/Login;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/Login$3;->this$0:Lcom/sprint/smps/activities/Login;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7
    .parameter "dialogInterface"

    .prologue
    const v4, 0x7f08002c

    .line 332
    sget-boolean v0, Lcom/sprint/smps/properties/Properties;->loggedIn:Z

    if-nez v0, :cond_27

    .line 334
    const-string v1, "Login"

    invoke-static {}, Lcom/sprint/smps/activities/Login;->access$1()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sprint/smps/activities/Login$3;->this$0:Lcom/sprint/smps/activities/Login;

    iget-object v0, p0, Lcom/sprint/smps/activities/Login$3;->this$0:Lcom/sprint/smps/activities/Login;

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v2, v3, v0}, Lcom/sprint/smps/util/Utilities;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    .line 335
    iget-object v0, p0, Lcom/sprint/smps/activities/Login$3;->this$0:Lcom/sprint/smps/activities/Login;

    invoke-virtual {v0, v4}, Lcom/sprint/smps/activities/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    :cond_27
    return-void
.end method
