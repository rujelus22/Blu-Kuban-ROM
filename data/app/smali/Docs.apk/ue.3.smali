.class public Lue;
.super Ljava/lang/Object;
.source "ErrorNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lue;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    iput-object p2, p0, Lue;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lue;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:Lck;

    iget-object v1, p0, Lue;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 73
    new-instance v0, LXM;

    iget-object v1, p0, Lue;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    const-string v2, "android_docs_editors"

    invoke-direct {v0, v1, v2}, LXM;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lue;->a:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 76
    const-string v1, "stack_trace"

    iget-object v2, p0, Lue;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LXM;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1d
    iget-object v1, p0, Lue;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:LXO;

    invoke-interface {v1, v0}, LXO;->a(LXM;)V

    .line 79
    iget-object v0, p0, Lue;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;Z)Z

    .line 80
    return-void
.end method
