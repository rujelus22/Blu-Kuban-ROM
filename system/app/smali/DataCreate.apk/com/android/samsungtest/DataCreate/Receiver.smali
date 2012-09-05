.class public Lcom/android/samsungtest/DataCreate/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "Receiver.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public makeFile()V
    .registers 10

    .prologue
    .line 207
    const/4 v5, 0x0

    .line 209
    .local v5, fileCopyOutputStream:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 215
    .local v4, fileCopyInputStream:Ljava/io/InputStream;
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v7, "/sdcard/1kHz.mp3"

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_91
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b2

    .line 217
    .end local v5           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .local v6, fileCopyOutputStream:Ljava/io/FileOutputStream;
    :try_start_9
    iget-object v7, p0, Lcom/android/samsungtest/DataCreate/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f04

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 219
    const-string v7, "FileOutputStream:"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v7, "FileInputStream:"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v7, 0x7d0

    new-array v0, v7, [B

    .line 227
    .local v0, buffer:[B
    :goto_2b
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_4b

    .line 229
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    goto :goto_2b

    .line 241
    .end local v0           #buffer:[B
    :catch_35
    move-exception v1

    move-object v5, v6

    .line 243
    .end local v6           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v5       #fileCopyOutputStream:Ljava/io/FileOutputStream;
    :goto_37
    :try_start_37
    const-string v7, "FileCopyError"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_91

    .line 249
    if-eqz v5, :cond_45

    .line 251
    :try_start_42
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_7f

    .line 273
    :cond_45
    :goto_45
    if-eqz v4, :cond_4a

    .line 275
    :try_start_47
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_8c

    .line 287
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    return-void

    .line 233
    .end local v5           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .restart local v0       #buffer:[B
    .restart local v6       #fileCopyOutputStream:Ljava/io/FileOutputStream;
    :cond_4b
    :try_start_4b
    const-string v7, "FileOutputStream:"

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v7, "FileInputStream:"

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_60
    .catchall {:try_start_4b .. :try_end_60} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_60} :catch_35

    .line 249
    if-eqz v6, :cond_65

    .line 251
    :try_start_62
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_6c

    .line 273
    :cond_65
    :goto_65
    if-eqz v4, :cond_6a

    .line 275
    :try_start_67
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_79

    :cond_6a
    move-object v5, v6

    .line 283
    .end local v6           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #fileCopyOutputStream:Ljava/io/FileOutputStream;
    goto :goto_4a

    .line 255
    .end local v5           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #fileCopyOutputStream:Ljava/io/FileOutputStream;
    :catch_6c
    move-exception v2

    .line 257
    .local v2, ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    :try_start_70
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_65

    .line 263
    :catch_74
    move-exception v3

    .line 265
    .local v3, ex2:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    .line 279
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #ex2:Ljava/io/IOException;
    :catch_79
    move-exception v2

    .line 281
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 285
    .end local v6           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #fileCopyOutputStream:Ljava/io/FileOutputStream;
    goto :goto_4a

    .line 255
    .end local v0           #buffer:[B
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_7f
    move-exception v2

    .line 257
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    :try_start_83
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_45

    .line 263
    :catch_87
    move-exception v3

    .line 265
    .restart local v3       #ex2:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 279
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #ex2:Ljava/io/IOException;
    :catch_8c
    move-exception v2

    .line 281
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4a

    .line 247
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_91
    move-exception v7

    .line 249
    :goto_92
    if-eqz v5, :cond_97

    .line 251
    :try_start_94
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_9d

    .line 273
    :cond_97
    :goto_97
    if-eqz v4, :cond_9c

    .line 275
    :try_start_99
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_aa

    .line 283
    :cond_9c
    :goto_9c
    throw v7

    .line 255
    :catch_9d
    move-exception v2

    .line 257
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 261
    :try_start_a1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_97

    .line 263
    :catch_a5
    move-exception v3

    .line 265
    .restart local v3       #ex2:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_97

    .line 279
    .end local v2           #ex:Ljava/io/IOException;
    .end local v3           #ex2:Ljava/io/IOException;
    :catch_aa
    move-exception v2

    .line 281
    .restart local v2       #ex:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9c

    .line 247
    .end local v2           #ex:Ljava/io/IOException;
    .end local v5           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .restart local v6       #fileCopyOutputStream:Ljava/io/FileOutputStream;
    :catchall_af
    move-exception v7

    move-object v5, v6

    .end local v6           #fileCopyOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #fileCopyOutputStream:Ljava/io/FileOutputStream;
    goto :goto_92

    .line 241
    :catch_b2
    move-exception v1

    goto :goto_37
.end method

.method public mp3Copy()V
    .registers 5

    .prologue
    .line 179
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/1kHz.mp3"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, localFile:Ljava/io/File;
    const-string v2, "DataCopyRilSupport"

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 185
    invoke-virtual {p0}, Lcom/android/samsungtest/DataCreate/Receiver;->makeFile()V

    .line 191
    :cond_1d
    const-string v2, "DataCopyRilSupport"

    const-string v3, "sendSuccess :com.android.samsungtest.Mp3_COPY_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.Mp3_COPY_SUCCESS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v1, makeMp3FileInSdCardActionSuccess:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/samsungtest/DataCreate/Receiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/samsungtest/DataCreate/Receiver;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v2, "3282*727336*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 109
    const-class v1, Lcom/android/samsungtest/CurrentDataState/CurrentDataState;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 159
    :cond_2a
    :goto_2a
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    :cond_32
    :goto_32
    return-void

    .line 115
    :cond_33
    const-string v2, "273283*255*3282*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 117
    const-class v1, Lcom/android/samsungtest/DataCopy/DataCopy;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2a

    .line 123
    :cond_41
    const-string v2, "273283*255*663282*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 125
    const-class v1, Lcom/android/samsungtest/FileCopy/FileCopy;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2a

    .line 131
    :cond_4f
    const-string v2, "12580*369"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 133
    const-class v1, Lcom/android/samsungtest/Ver/MainVersion;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2a

    .line 137
    :cond_5d
    const-string v2, "1234"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 139
    const-class v1, Lcom/android/samsungtest/Ver/SimpleVersion;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2a

    .line 153
    :cond_6b
    const-string v2, "44336"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 155
    const-class v1, Lcom/android/samsungtest/Ver/InternalVersion;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_2a

    .line 165
    :cond_79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.samsungtest.Mp3_COPY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 167
    invoke-virtual {p0}, Lcom/android/samsungtest/DataCreate/Receiver;->mp3Copy()V

    goto :goto_32
.end method
