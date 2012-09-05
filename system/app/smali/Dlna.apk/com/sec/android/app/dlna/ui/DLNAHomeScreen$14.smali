.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$14;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$14;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 430
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$14;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->isPrevClicked:Z
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$1000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 432
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestPrevious()Z

    .line 441
    :goto_1d
    return-void

    .line 435
    :cond_1e
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestNext()V

    goto :goto_1d

    .line 439
    :cond_2a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$14;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    const/16 v1, 0x7d4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->dismissDialog(I)V

    goto :goto_1d
.end method
