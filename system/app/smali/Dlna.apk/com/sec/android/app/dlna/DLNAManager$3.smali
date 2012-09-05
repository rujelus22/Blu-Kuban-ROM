.class Lcom/sec/android/app/dlna/DLNAManager$3;
.super Ljava/lang/Object;
.source "DLNAManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/DLNAManager;

.field final synthetic val$b_clearAll:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/DLNAManager;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager$3;->this$0:Lcom/sec/android/app/dlna/DLNAManager;

    iput-boolean p2, p0, Lcom/sec/android/app/dlna/DLNAManager$3;->val$b_clearAll:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager$3;->val$b_clearAll:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    .line 455
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    const-string v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->refreshDeviceList(Ljava/lang/String;)V

    .line 460
    :goto_e
    return-void

    .line 458
    :cond_f
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->refreshDeviceList()V

    goto :goto_e
.end method
