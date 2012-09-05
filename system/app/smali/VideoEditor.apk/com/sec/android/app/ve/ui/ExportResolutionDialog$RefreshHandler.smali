.class Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;
.super Landroid/os/Handler;
.source "ExportResolutionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/ui/ExportResolutionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/ui/ExportResolutionDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/ui/ExportResolutionDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;->this$0:Lcom/sec/android/app/ve/ui/ExportResolutionDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/ve/ui/ExportResolutionDialog$RefreshHandler;->this$0:Lcom/sec/android/app/ve/ui/ExportResolutionDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/ui/ExportResolutionDialog;->dismiss()V

    .line 36
    return-void
.end method
