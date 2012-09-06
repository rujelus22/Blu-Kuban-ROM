.class public Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;
.super Lcom/google/android/apps/docs/RoboFragmentActivity;
.source "ErrorNotificationActivity.java"


# instance fields
.field public a:LXO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/content/Intent;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)Landroid/content/Intent;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->i:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/high16 v6, 0x2

    const/4 v5, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget v0, Luq;->error_notification:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->setContentView(I)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    const-string v1, "stack_trace"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, "kix_editor_intent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:Landroid/content/Intent;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:LXO;

    if-nez v0, :cond_31

    .line 59
    const-string v0, "ErrorNotificationActivity"

    const-string v2, "This should never happen: feedbackReporter not initialized by guice"

    invoke-static {v0, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, LXN;

    invoke-direct {v0}, LXN;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:LXO;

    .line 63
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a()Lx;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a(Lx;)V

    .line 65
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lus;->error_report_title:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lus;->error_report_description:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lus;->error_report_button_report:I

    new-instance v4, Lue;

    invoke-direct {v4, p0, v1}, Lue;-><init>(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lus;->error_report_button_reload:I

    new-instance v3, Lud;

    invoke-direct {v3, p0}, Lud;-><init>(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lus;->error_report_button_close:I

    new-instance v3, Luc;

    invoke-direct {v3, p0}, Luc;-><init>(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 104
    iput-boolean v5, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->i:Z

    .line 105
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 39
    invoke-super {p0}, Lcom/google/android/apps/docs/RoboFragmentActivity;->onResume()V

    .line 40
    iget-boolean v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->i:Z

    if-eqz v0, :cond_14

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->finish()V

    .line 46
    :cond_14
    return-void
.end method
