.class Lcom/sec/android/app/dlna/DLNAAddinManager$1;
.super Ljava/lang/Object;
.source "DLNAAddinManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAAddinManager;->refreshPlayerList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAAddinManager;)V
    .registers 2
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;
    invoke-static {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/ControlPoint;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->removeDeviceList(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAAddinManager$1;->this$0:Lcom/sec/android/app/dlna/DLNAAddinManager;

    #getter for: Lcom/sec/android/app/dlna/DLNAAddinManager;->cp:Lcom/samsung/upnp/ControlPoint;
    invoke-static {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->access$000(Lcom/sec/android/app/dlna/DLNAAddinManager;)Lcom/samsung/upnp/ControlPoint;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Lcom/samsung/upnp/ControlPoint;->searchTarget(Ljava/lang/String;)V

    .line 346
    return-void
.end method
