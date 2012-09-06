.class public LeS;
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
    .line 68
    iput-object p1, p0, LeS;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, LeS;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a:Lck;

    iget-object v1, p0, LeS;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, LeS;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->finish()V

    .line 73
    return-void
.end method
