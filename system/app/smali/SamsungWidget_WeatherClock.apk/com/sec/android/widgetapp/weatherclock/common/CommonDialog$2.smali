.class final Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog;->hide(Landroid/app/AlertDialog;ILcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;->val$dialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;->val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_f

    .line 91
    :goto_5
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;->val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;

    if-eqz v0, :cond_e

    .line 93
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/common/CommonDialog$2;->val$interaction:Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/weatherclock/common/DialogClosedInteraction;->dialogClosed()V

    .line 95
    :cond_e
    return-void

    .line 86
    :catch_f
    move-exception v0

    goto :goto_5
.end method
