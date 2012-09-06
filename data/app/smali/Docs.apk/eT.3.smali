.class public LeT;
.super Ljava/lang/Object;
.source "ErrorNotificationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, LeT;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, LeT;->a:Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->finish()V

    .line 94
    return-void
.end method
