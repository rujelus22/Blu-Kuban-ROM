.class public Lcom/android/email/service/BackupAndRestoreService;
.super Landroid/content/BroadcastReceiver;
.source "BackupAndRestoreService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "target_File"
    .parameter "result_File"

    .prologue
    .line 40
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v8, targetFile:Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v7, resultFile:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v9, tmpFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 46
    const-string v10, "Email.BackupAndRestoreService >>"

    const-string v11, "targetFile targetfile exist!!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 49
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 51
    :cond_50
    const/4 v4, 0x0

    .line 52
    .local v4, nRead:I
    const/4 v2, 0x0

    .line 53
    .local v2, in:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 54
    .local v5, out:Ljava/io/OutputStream;
    const/16 v10, 0x2000

    new-array v0, v10, [B

    .line 56
    .local v0, buffer:[B
    :try_start_57
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_c2
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_e3

    .line 57
    .end local v2           #in:Ljava/io/InputStream;
    .local v3, in:Ljava/io/InputStream;
    :try_start_5c
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_dc
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_61} :catch_e5

    .line 59
    .end local v5           #out:Ljava/io/OutputStream;
    .local v6, out:Ljava/io/OutputStream;
    :goto_61
    :try_start_61
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v10, -0x1

    if-eq v4, v10, :cond_9d

    .line 60
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6c
    .catchall {:try_start_61 .. :try_end_6c} :catchall_df
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6c} :catch_6d

    goto :goto_61

    .line 64
    :catch_6d
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 65
    .end local v3           #in:Ljava/io/InputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/InputStream;
    :goto_70
    :try_start_70
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 66
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_7e
    .catchall {:try_start_70 .. :try_end_7e} :catchall_c2

    .line 70
    :cond_7e
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_b8

    .line 75
    :goto_81
    :try_start_81
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_bd

    .line 80
    .end local v1           #e:Ljava/io/IOException;
    :goto_84
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_8d

    .line 81
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 83
    :cond_8d
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setReadable(ZZ)Z

    .line 84
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setWritable(ZZ)Z

    .line 85
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 88
    .end local v0           #buffer:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #nRead:I
    .end local v5           #out:Ljava/io/OutputStream;
    :goto_9c
    return-void

    .line 62
    .restart local v0       #buffer:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #nRead:I
    .restart local v6       #out:Ljava/io/OutputStream;
    :cond_9d
    :try_start_9d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 63
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_df
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a3} :catch_6d

    .line 70
    :try_start_a3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_ac

    .line 75
    :goto_a6
    :try_start_a6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_b1

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 78
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_84

    .line 71
    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catch_ac
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a6

    .line 76
    .end local v1           #e:Ljava/io/IOException;
    :catch_b1
    move-exception v1

    .line 77
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 79
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_84

    .line 71
    :catch_b8
    move-exception v1

    .line 72
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_81

    .line 76
    :catch_bd
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_84

    .line 69
    .end local v1           #e:Ljava/io/IOException;
    :catchall_c2
    move-exception v10

    .line 70
    :goto_c3
    :try_start_c3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_ca

    .line 75
    :goto_c6
    :try_start_c6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_cf

    .line 78
    :goto_c9
    throw v10

    .line 71
    :catch_ca
    move-exception v1

    .line 72
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c6

    .line 76
    .end local v1           #e:Ljava/io/IOException;
    :catch_cf
    move-exception v1

    .line 77
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c9

    .line 87
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v4           #nRead:I
    .end local v5           #out:Ljava/io/OutputStream;
    :cond_d4
    const-string v10, "Email.BackupAndRestoreService >>"

    const-string v11, "Targetfile is not exist!!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 69
    .restart local v0       #buffer:[B
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v4       #nRead:I
    .restart local v5       #out:Ljava/io/OutputStream;
    :catchall_dc
    move-exception v10

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_c3

    .end local v2           #in:Ljava/io/InputStream;
    .end local v5           #out:Ljava/io/OutputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    .restart local v6       #out:Ljava/io/OutputStream;
    :catchall_df
    move-exception v10

    move-object v5, v6

    .end local v6           #out:Ljava/io/OutputStream;
    .restart local v5       #out:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_c3

    .line 64
    :catch_e3
    move-exception v1

    goto :goto_70

    .end local v2           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :catch_e5
    move-exception v1

    move-object v2, v3

    .end local v3           #in:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/InputStream;
    goto :goto_70
.end method

.method private onFinish(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter "mContext"
    .parameter "finish"

    .prologue
    .line 116
    const-string v1, "com.android.email.service.BACKUP_FINISH"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.service.BACKUP_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    const-string v1, "Email.BackupAndRestoreService >>"

    const-string v2, "BACKUP_FINISH!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v0           #i:Landroid/content/Intent;
    :goto_19
    return-void

    .line 121
    :cond_1a
    const-string v1, "com.android.email.service.RESTORE_FINISH"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.service.RESTORE_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .restart local v0       #i:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 124
    const-string v1, "Email.BackupAndRestoreService >>"

    const-string v2, "RESTORE_FINISH!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 126
    .end local v0           #i:Landroid/content/Intent;
    :cond_34
    const-string v1, "Email.BackupAndRestoreService >>"

    const-string v2, "BACKUP_RESTORE_FAILED!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 92
    const-string v5, "backup_Or_Restore"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 94
    .local v1, backupOrRestore:Z
    const-string v5, "backup_Path"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, intentPath:Ljava/lang/String;
    if-eqz v1, :cond_32

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AndroidMail.Main.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, targetfile:Ljava/lang/String;
    const-string v3, "./data/data/com.android.email/shared_prefs/AndroidMail.Main.xml"

    .line 100
    .local v3, restoreHere:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/email/service/BackupAndRestoreService;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v5, "com.android.email.service.RESTORE_FINISH"

    invoke-direct {p0, p1, v5}, Lcom/android/email/service/BackupAndRestoreService;->onFinish(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    const-string v5, "AndroidMail.Main"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 113
    .end local v3           #restoreHere:Ljava/lang/String;
    :goto_31
    return-void

    .line 105
    .end local v4           #targetfile:Ljava/lang/String;
    :cond_32
    const-string v4, "./data/data/com.android.email/shared_prefs/AndroidMail.Main.xml"

    .line 106
    .restart local v4       #targetfile:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "AndroidMail.Main.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, backupHere:Ljava/lang/String;
    const-string v5, "Email.BackupAndRestoreService >>"

    const-string v6, "Backup!!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {v4, v0}, Lcom/android/email/service/BackupAndRestoreService;->copy(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v5, "com.android.email.service.BACKUP_FINISH"

    invoke-direct {p0, p1, v5}, Lcom/android/email/service/BackupAndRestoreService;->onFinish(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_31
.end method
