.class Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$4;
.super Ljava/lang/Object;
.source "PopUpSearchDeviceList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;)V
    .registers 2
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$4;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 391
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectUploadServerUdn(Ljava/lang/String;)Z

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList$4;->this$0:Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PopUpSearchDeviceList;->finish()V

    .line 393
    return-void
.end method
