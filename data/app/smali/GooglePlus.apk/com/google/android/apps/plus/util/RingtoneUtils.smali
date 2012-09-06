.class public Lcom/google/android/apps/plus/util/RingtoneUtils;
.super Ljava/lang/Object;
.source "RingtoneUtils.java"


# direct methods
.method private static getHangoutRingtoneFileName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ogg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getHangoutRingtonePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static needToRegisterHangoutRingtone(Landroid/content/Context;)Z
    .registers 11
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 43
    new-instance v7, Ljava/io/File;

    invoke-static {p0}, Lcom/google/android/apps/plus/util/RingtoneUtils;->getHangoutRingtonePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/util/RingtoneUtils;->getHangoutRingtoneFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .local v7, ringtoneFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    .line 57
    :goto_16
    return v9

    .line 50
    :cond_17
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 51
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_data"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 57
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_53

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_56

    :cond_53
    move v0, v9

    :goto_54
    move v9, v0

    goto :goto_16

    :cond_56
    move v0, v8

    goto :goto_54
.end method

.method public static registerHangoutRingtoneIfNecessary(Landroid/content/Context;)V
    .registers 25
    .parameter "context"

    .prologue
    .line 71
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/RingtoneUtils;->needToRegisterHangoutRingtone(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 154
    :cond_6
    :goto_6
    return-void

    .line 75
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/RingtoneUtils;->getHangoutRingtonePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, path:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/RingtoneUtils;->getHangoutRingtoneFileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, filename:Ljava/lang/String;
    const v20, 0x7f080017

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, ringtoneName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 82
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_57

    .line 83
    const-string v20, "RingtoneUtils"

    const/16 v21, 0x6

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 84
    const-string v20, "RingtoneUtils"

    const-string v21, "Could not create the directory %s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_6

    .line 151
    .end local v5           #dir:Ljava/io/File;
    .end local v8           #filename:Ljava/lang/String;
    .end local v15           #path:Ljava/lang/String;
    .end local v17           #ringtoneName:Ljava/lang/String;
    :catch_4a
    move-exception v6

    .line 152
    .local v6, e:Ljava/lang/Error;
    const-string v20, "RingtoneUtils"

    const-string v21, "Could not register the Hangout ringtone"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 90
    .end local v6           #e:Ljava/lang/Error;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v8       #filename:Ljava/lang/String;
    .restart local v15       #path:Ljava/lang/String;
    .restart local v17       #ringtoneName:Ljava/lang/String;
    :cond_57
    :try_start_57
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f060005

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_61
    .catch Ljava/lang/Error; {:try_start_57 .. :try_end_61} :catch_4a

    move-result-object v10

    .line 93
    .local v10, inputStream:Ljava/io/InputStream;
    :try_start_62
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v20

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 94
    .local v3, buffer:[B
    invoke-virtual {v10, v3}, Ljava/io/InputStream;->read([B)I

    .line 95
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 96
    new-instance v14, Ljava/io/FileOutputStream;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 98
    .local v14, outputStream:Ljava/io/FileOutputStream;
    invoke-virtual {v14, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_98} :catch_ca
    .catch Ljava/lang/Error; {:try_start_62 .. :try_end_98} :catch_4a

    .line 107
    :try_start_98
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v15, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v12, newRingtoneFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_e2

    .line 109
    const-string v20, "RingtoneUtils"

    const/16 v21, 0x6

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 110
    const-string v20, "RingtoneUtils"

    const-string v21, "Could not create the file %s/%s for the Hangout ringtone"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    const/16 v23, 0x1

    aput-object v8, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 100
    .end local v3           #buffer:[B
    .end local v12           #newRingtoneFile:Ljava/io/File;
    .end local v14           #outputStream:Ljava/io/FileOutputStream;
    :catch_ca
    move-exception v9

    .line 101
    .local v9, ie:Ljava/io/IOException;
    const-string v20, "RingtoneUtils"

    const/16 v21, 0x6

    invoke-static/range {v20 .. v21}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 102
    const-string v20, "RingtoneUtils"

    const-string v21, "Could not create a file for the Hangout ringtone"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 119
    .end local v9           #ie:Ljava/io/IOException;
    .restart local v3       #buffer:[B
    .restart local v12       #newRingtoneFile:Ljava/io/File;
    .restart local v14       #outputStream:Ljava/io/FileOutputStream;
    :cond_e2
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v19, values:Landroid/content/ContentValues;
    const-string v20, "_data"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v20, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v20, "mime_type"

    const-string v21, "audio/ogg"

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v20, "_size"

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string v20, "artist"

    const v21, 0x7f080040

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string v20, "is_ringtone"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    const-string v20, "is_notification"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 127
    const-string v20, "is_alarm"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 128
    const-string v20, "is_music"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 130
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 133
    .local v18, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 136
    .local v4, contentResolver:Landroid/content/ContentResolver;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "_data=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 138
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "title=\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 145
    .local v13, newUri:Landroid/net/Uri;
    const v20, 0x7f080011

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 146
    .local v11, key:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 148
    .local v16, preferences:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 149
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1ca
    .catch Ljava/lang/Error; {:try_start_98 .. :try_end_1ca} :catch_4a

    goto/16 :goto_6
.end method
