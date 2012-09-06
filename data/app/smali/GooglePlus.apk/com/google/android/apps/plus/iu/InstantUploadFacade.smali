.class public Lcom/google/android/apps/plus/iu/InstantUploadFacade;
.super Ljava/lang/Object;
.source "InstantUploadFacade.java"


# static fields
.field public static final instantUploadUri:Landroid/net/Uri;

.field private static sNetworkReceiver:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final settingsUri:Landroid/net/Uri;

.field public static final uploadAllUri:Landroid/net/Uri;

.field public static final uploadRecordsUri:Landroid/net/Uri;

.field public static final uploadsUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 126
    const-string v1, "content://com.google.android.apps.plus.iu.EsGoogleIuProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 127
    .local v0, baseUri:Landroid/net/Uri;
    const-string v1, "uploads"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    .line 128
    const-string v1, "upload_records"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadRecordsUri:Landroid/net/Uri;

    .line 129
    const-string v1, "upload_all"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadAllUri:Landroid/net/Uri;

    .line 130
    const-string v1, "iu"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->instantUploadUri:Landroid/net/Uri;

    .line 131
    const-string v1, "settings"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->settingsUri:Landroid/net/Uri;

    .line 132
    return-void
.end method

.method public static broadcastOperationReport(Landroid/content/Context;Ljava/lang/String;JJIJJ)V
    .registers 13
    .parameter "context"
    .parameter "name"
    .parameter "totalTime"
    .parameter "netTime"
    .parameter "transactionCount"
    .parameter "bytesSent"
    .parameter "bytesReceived"

    .prologue
    .line 166
    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->sNetworkReceiver:Ljava/lang/Class;

    if-nez v1, :cond_5

    .line 177
    :goto_4
    return-void

    .line 168
    :cond_5
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->sNetworkReceiver:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.google.android.picasasync.op_report"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v1, "op_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "total_time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 172
    const-string v1, "net_duration"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    const-string v1, "transaction_count"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v1, "sent_bytes"

    invoke-virtual {v0, v1, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 175
    const-string v1, "received_bytes"

    invoke-virtual {v0, v1, p9, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public static getUploadUri(J)Landroid/net/Uri;
    .registers 4
    .parameter "id"

    .prologue
    .line 142
    sget-object v0, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->uploadsUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static requestUploadSync(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 150
    invoke-static {p0}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->get(Landroid/content/Context;)Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/iu/InstantUploadSyncManager;->updateTasks(J)V

    .line 151
    return-void
.end method

.method public static setNetworkReceiver(Ljava/lang/Class;)V
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, networkReceiver:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sput-object p0, Lcom/google/android/apps/plus/iu/InstantUploadFacade;->sNetworkReceiver:Ljava/lang/Class;

    .line 139
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 2
    .parameter "state"

    .prologue
    .line 180
    packed-switch p0, :pswitch_data_36

    .line 214
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 182
    :pswitch_6
    const-string v0, "SYNC_STATE_IDLE"

    goto :goto_5

    .line 184
    :pswitch_9
    const-string v0, "SYNC_STATE_SYNCING"

    goto :goto_5

    .line 186
    :pswitch_c
    const-string v0, "SYNC_STATE_REJECT_ON_WIFI"

    goto :goto_5

    .line 188
    :pswitch_f
    const-string v0, "SYNC_STATE_REJECT_ON_ROAMING"

    goto :goto_5

    .line 190
    :pswitch_12
    const-string v0, "SYNC_STATE_REJECT_ON_POWER"

    goto :goto_5

    .line 192
    :pswitch_15
    const-string v0, "SYNC_STATE_REJECT_ON_USER_AUTH"

    goto :goto_5

    .line 194
    :pswitch_18
    const-string v0, "SYNC_STATE_REJECT_ON_AUTO_SYNC"

    goto :goto_5

    .line 196
    :pswitch_1b
    const-string v0, "SYNC_STATE_REJECT_ON_DISABLED_DOWNSYNC"

    goto :goto_5

    .line 198
    :pswitch_1e
    const-string v0, "SYNC_STATE_REJECT_ON_BACKGROUND_DATA"

    goto :goto_5

    .line 200
    :pswitch_21
    const-string v0, "SYNC_STATE_STOP_ON_QUOTA_REACHED"

    goto :goto_5

    .line 202
    :pswitch_24
    const-string v0, "SYNC_STATE_STOP_ON_USER_AUTH"

    goto :goto_5

    .line 204
    :pswitch_27
    const-string v0, "SYNC_STATE_WAIT_ON_SDCARD"

    goto :goto_5

    .line 206
    :pswitch_2a
    const-string v0, "SYNC_STATE_STOP_ON_SDCARD"

    goto :goto_5

    .line 208
    :pswitch_2d
    const-string v0, "SYNC_STATE_YIELD"

    goto :goto_5

    .line 210
    :pswitch_30
    const-string v0, "SYNC_STATE_STOP_ON_NETWORK"

    goto :goto_5

    .line 212
    :pswitch_33
    const-string v0, "SYNC_STATE_STOP_ON_IOE"

    goto :goto_5

    .line 180
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
    .end packed-switch
.end method
