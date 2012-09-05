.class Lcom/android/email/activity/setup/snc/AccountSetupWizard$2;
.super Ljava/lang/Object;
.source "AccountSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/snc/AccountSetupWizard;->showErrorDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/snc/AccountSetupWizard;)V
    .registers 2
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/android/email/activity/setup/snc/AccountSetupWizard$2;->this$0:Lcom/android/email/activity/setup/snc/AccountSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "info"
    .parameter "keycode"
    .parameter "keyevent"

    .prologue
    .line 669
    const/4 v0, 0x4

    if-eq p2, v0, :cond_7

    const/16 v0, 0x54

    if-ne p2, v0, :cond_e

    .line 670
    :cond_7
    const-string v0, "AccountSetupWizard"

    const-string v1, "Ignore Serach Key Event"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
