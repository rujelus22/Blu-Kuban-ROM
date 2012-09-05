.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17$1;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;)V
    .registers 2
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17$1;->this$1:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$17;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 784
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectPlayer(Lcom/samsung/api/DeviceItem;)Z

    .line 785
    return-void
.end method
