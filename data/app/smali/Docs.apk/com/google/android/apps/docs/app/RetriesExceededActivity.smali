.class public Lcom/google/android/apps/docs/app/RetriesExceededActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "RetriesExceededActivity.java"


# instance fields
.field public a:LLh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/app/AlertDialog;

.field public a:Lmi;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    const-class v1, Lcom/google/android/apps/docs/app/RetriesExceededActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    return-object v0
.end method

.method public static a(Landroid/content/Context;LLh;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-static {p0}, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 95
    sget v3, LcY;->operation_retry_error:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 96
    new-instance v4, Landroid/app/Notification;

    const v5, 0x1080078

    invoke-direct {v4, v5, v3, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 98
    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 99
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 100
    const-string v1, ""

    invoke-virtual {v4, p0, v3, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 101
    const/4 v0, 0x3

    invoke-interface {p1, v0, v4}, LLh;->a(ILandroid/app/Notification;)V

    .line 103
    return-void
.end method


# virtual methods
.method public e()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:LLh;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, LLh;->a(I)V

    .line 107
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x2

    .line 37
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->getIntent()Landroid/content/Intent;

    .line 41
    invoke-static {p0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 42
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->operation_retry_error:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->operation_retry_exceeded_message:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->operation_retry_exceeded_retry:I

    new-instance v3, Lhn;

    invoke-direct {v3, p0}, Lhn;-><init>(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, Lhm;

    invoke-direct {v3, p0}, Lhm;-><init>(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:Landroid/app/AlertDialog;

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:Landroid/app/AlertDialog;

    new-instance v1, Lho;

    invoke-direct {v1, p0}, Lho;-><init>(Lcom/google/android/apps/docs/app/RetriesExceededActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/docs/app/RetriesExceededActivity;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 77
    return-void
.end method
