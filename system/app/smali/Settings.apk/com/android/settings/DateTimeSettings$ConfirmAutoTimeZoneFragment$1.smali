.class Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;
.super Ljava/lang/Object;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;

    iput-object p2, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 633
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time_zone"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 636
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 637
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;->this$0:Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;

    const v5, 0x7f0b084e

    invoke-virtual {v4, v5}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 639
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 640
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 641
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 644
    const-string v4, "shutdownlogger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v2

    .line 645
    .local v2, service:Landroid/app/IShutdownLogger;
    new-instance v3, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v3, v2}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 646
    .local v3, slm:Landroid/app/ShutdownLoggerManager;
    const-string v4, "DateTimeSettings.DIALOG_AUTO_TIME_ZONE"

    invoke-virtual {v3, v4}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 649
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 650
    .local v1, rebootHandler:Landroid/os/Handler;
    new-instance v4, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1$1;

    invoke-direct {v4, p0}, Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1$1;-><init>(Lcom/android/settings/DateTimeSettings$ConfirmAutoTimeZoneFragment$1;)V

    const-wide/16 v5, 0x5dc

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 656
    return-void
.end method
