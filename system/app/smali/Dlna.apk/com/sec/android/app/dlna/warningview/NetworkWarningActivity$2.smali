.class Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$2;
.super Ljava/lang/Object;
.source "NetworkWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$2;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 160
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/16 v1, 0x2f1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity$2;->this$0:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->finish()V

    .line 163
    return-void
.end method
