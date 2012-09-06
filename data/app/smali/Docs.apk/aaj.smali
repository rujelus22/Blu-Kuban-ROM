.class public Laaj;
.super Landroid/os/Handler;
.source "ToastErrorReporter.java"


# instance fields
.field private a:Landroid/widget/Toast;

.field final synthetic a:Lcom/google/android/apps/docs/utils/ToastErrorReporter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/utils/ToastErrorReporter;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Laaj;->a:Lcom/google/android/apps/docs/utils/ToastErrorReporter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Laaj;->a:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Laaj;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Laaj;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 55
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 57
    iget-object v1, p0, Laaj;->a:Landroid/widget/Toast;

    if-nez v1, :cond_2a

    .line 58
    iget-object v1, p0, Laaj;->a:Lcom/google/android/apps/docs/utils/ToastErrorReporter;

    invoke-static {v1}, Lcom/google/android/apps/docs/utils/ToastErrorReporter;->a(Lcom/google/android/apps/docs/utils/ToastErrorReporter;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Laaj;->a:Landroid/widget/Toast;

    .line 62
    :goto_24
    iget-object v0, p0, Laaj;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_29
    return-void

    .line 60
    :cond_2a
    iget-object v1, p0, Laaj;->a:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24
.end method
