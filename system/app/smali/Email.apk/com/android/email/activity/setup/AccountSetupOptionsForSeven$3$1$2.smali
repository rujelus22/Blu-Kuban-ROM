.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$2;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$2;->this$2:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 421
    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    .line 422
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 423
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1$2;->this$2:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$3;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->saveAccountAndFinish()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$100(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    .line 425
    :cond_f
    const/4 v0, 0x0

    return v0
.end method