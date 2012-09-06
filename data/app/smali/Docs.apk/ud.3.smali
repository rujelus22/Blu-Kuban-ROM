.class public Lud;
.super Ljava/lang/Object;
.source "ErrorNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lud;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lud;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a:Lck;

    iget-object v1, p0, Lud;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lud;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    iget-object v1, p0, Lud;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lud;->a:Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;->finish()V

    .line 88
    return-void
.end method
