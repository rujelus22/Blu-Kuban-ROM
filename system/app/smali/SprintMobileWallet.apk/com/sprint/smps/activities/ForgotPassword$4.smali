.class Lcom/sprint/smps/activities/ForgotPassword$4;
.super Ljava/lang/Object;
.source "ForgotPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/smps/activities/ForgotPassword;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/smps/activities/ForgotPassword;


# direct methods
.method constructor <init>(Lcom/sprint/smps/activities/ForgotPassword;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/smps/activities/ForgotPassword$4;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sprint/smps/activities/ForgotPassword$4;->this$0:Lcom/sprint/smps/activities/ForgotPassword;

    #getter for: Lcom/sprint/smps/activities/ForgotPassword;->successful:Z
    invoke-static {v0}, Lcom/sprint/smps/activities/ForgotPassword;->access$4(Lcom/sprint/smps/activities/ForgotPassword;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 290
    const-string v0, "Login"

    invoke-static {v0}, Lcom/sprint/smps/activities/ForgotPassword;->dismissActivities(Ljava/lang/String;)V

    .line 291
    :cond_d
    return-void
.end method
