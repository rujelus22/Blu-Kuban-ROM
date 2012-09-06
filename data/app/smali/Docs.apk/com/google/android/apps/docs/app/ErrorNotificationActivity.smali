.class public Lcom/google/android/apps/docs/app/ErrorNotificationActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "ErrorNotificationActivity.java"


# instance fields
.field private a:I

.field public a:LXO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/app/AlertDialog;

.field private a:Ljava/lang/String;

.field public b:LdQ;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)Landroid/content/Intent;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    const-class v1, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    const-string v1, "notification_message"

    sget v2, LcY;->ouch_msg_unhandled_exception_drivev2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    invoke-static {p1}, LZA;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "stack_trace"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    invoke-static {}, LZG;->a()LdX;

    move-result-object v0

    iget-boolean v0, v0, LdX;->a:Z

    if-eqz v0, :cond_10

    .line 126
    new-instance v0, LeU;

    invoke-direct {v0, p0}, LeU;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 138
    :cond_10
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x2

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->b:LdQ;

    const-string v2, "notification_message"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, LdQ;->a(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:I

    .line 55
    const-string v1, "stack_trace"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:LXO;

    if-nez v0, :cond_32

    .line 59
    const-string v0, "ErrorNotificationActivity"

    const-string v1, "This should never happen: feedbackReporter not initialized by guice"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, LXN;

    invoke-direct {v0}, LXN;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:LXO;

    .line 63
    :cond_32
    invoke-static {p0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->ouch_title_sawwrie:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->ouch_button_close:I

    new-instance v3, LeS;

    invoke-direct {v3, p0}, LeS;-><init>(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->ouch_button_report:I

    new-instance v3, LeR;

    invoke-direct {v3, p0}, LeR;-><init>(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Landroid/app/AlertDialog;

    .line 90
    iget-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Landroid/app/AlertDialog;

    new-instance v1, LeT;

    invoke-direct {v1, p0}, LeT;-><init>(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 100
    return-void
.end method
