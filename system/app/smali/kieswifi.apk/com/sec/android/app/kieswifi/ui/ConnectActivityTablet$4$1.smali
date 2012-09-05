.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4$1;
.super Ljava/lang/Object;
.source "ConnectActivityTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;)V
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4$1;->this$1:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 407
    :try_start_0
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->access$000()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ipAddr:Ljava/lang/String;

    const-string v3, "Cancel"

    const-string v4, "SetSyncConnectionInfo"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/api/SyncControllerAPI;->optionalCommand(Lcom/samsung/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_0 .. :try_end_12} :catch_13

    .line 411
    :goto_12
    return-void

    .line 408
    :catch_13
    move-exception v6

    .line 409
    .local v6, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v6}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_12
.end method
