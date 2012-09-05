.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 1280
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received broadcast "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1283
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1284
    .local v5, replacing:Z
    const/4 v1, 0x0

    .line 1285
    .local v1, added:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1286
    .local v2, extras:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 1287
    .local v3, pkgList:[Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 1290
    :cond_3c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 1291
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_43

    .line 1334
    .end local v1           #added:Z
    .end local v6           #uri:Landroid/net/Uri;
    :cond_42
    :goto_42
    return-void

    .line 1294
    .restart local v1       #added:Z
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_43
    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1295
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_4e

    .line 1296
    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    .end local v3           #pkgList:[Ljava/lang/String;
    aput-object v4, v3, v10

    .line 1298
    .restart local v3       #pkgList:[Ljava/lang/String;
    :cond_4e
    const-string v7, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1301
    const/4 v5, 0x1

    move v1, v5

    .line 1314
    .end local v1           #added:Z
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_58
    :goto_58
    if-eqz v3, :cond_42

    array-length v7, v3

    if-eqz v7, :cond_42

    .line 1317
    if-eqz v1, :cond_a3

    .line 1318
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v7, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1319
    if-eqz v5, :cond_9d

    .line 1320
    :try_start_66
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->updatePackageParticipantsLocked([Ljava/lang/String;)V

    .line 1324
    :goto_6b
    monitor-exit v8

    goto :goto_42

    :catchall_6d
    move-exception v7

    monitor-exit v8
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_6d

    throw v7

    .line 1303
    .restart local v1       #added:Z
    .restart local v4       #pkgName:Ljava/lang/String;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_70
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1304
    const-string v7, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_58

    .line 1306
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_7d
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 1307
    const/4 v1, 0x1

    .line 1308
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_58

    .line 1309
    :cond_8d
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 1310
    const/4 v1, 0x0

    .line 1311
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_58

    .line 1322
    .end local v1           #added:Z
    :cond_9d
    :try_start_9d
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_9d .. :try_end_a2} :catchall_6d

    goto :goto_6b

    .line 1326
    :cond_a3
    if-nez v5, :cond_42

    .line 1329
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v8, v7, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1330
    :try_start_aa
    iget-object v7, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;)V

    .line 1331
    monitor-exit v8

    goto :goto_42

    :catchall_b1
    move-exception v7

    monitor-exit v8
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_b1

    throw v7
.end method
