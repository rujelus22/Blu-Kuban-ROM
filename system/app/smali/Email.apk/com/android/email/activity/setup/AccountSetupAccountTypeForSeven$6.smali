.class Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->onNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

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
    .line 606
    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    .line 607
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$600(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 610
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$6;->this$0:Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->cancelTask()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;->access$700(Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;)V

    .line 613
    const/4 v0, 0x1

    .line 615
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
