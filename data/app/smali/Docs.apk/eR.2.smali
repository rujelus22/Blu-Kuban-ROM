.class public LeR;
.super Ljava/lang/Object;
.source "ErrorNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Lck;

    iget-object v1, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 79
    new-instance v0, LXM;

    iget-object v1, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    const-string v2, "android_docs"

    invoke-direct {v0, v1, v2}, LXM;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 82
    const-string v1, "stack_trace"

    iget-object v2, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LXM;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_25
    iget-object v1, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:LXO;

    invoke-interface {v1, v0}, LXO;->a(LXM;)V

    .line 85
    iget-object v0, p0, LeR;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->finish()V

    .line 86
    return-void
.end method
