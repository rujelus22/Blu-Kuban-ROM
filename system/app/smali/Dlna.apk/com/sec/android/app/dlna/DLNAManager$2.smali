.class Lcom/sec/android/app/dlna/DLNAManager$2;
.super Ljava/lang/Object;
.source "DLNAManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAManager;->refreshServerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAManager;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager$2;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 424
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->refreshDeviceList(Ljava/lang/String;)V

    .line 425
    return-void
.end method
