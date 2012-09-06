.class public Lcom/estrongs/android/util/ad;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/ContentResolver;Lcom/estrongs/android/util/TypedMap;)Landroid/net/Uri;
    .registers 12

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "_data"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/util/TypedMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v0, "_size"

    invoke-virtual {p1, v0}, Lcom/estrongs/android/util/TypedMap;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_90

    :goto_21
    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {v1}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/util/a/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3d

    const-string v2, "audio/*"

    :cond_3d
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "_data"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "mime_type"

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_ringtone"

    if-ne v5, v3, :cond_95

    move v0, v3

    :goto_5f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "is_notification"

    const/4 v0, 0x2

    if-ne v5, v0, :cond_97

    move v0, v3

    :goto_6c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_alarm"

    const/4 v1, 0x4

    if-ne v5, v1, :cond_79

    move v4, v3

    :cond_79
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "is_music"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :try_start_8b
    invoke-virtual {p0, v0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_99

    move-result-object v0

    :goto_8f
    return-object v0

    :cond_90
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_95
    move v0, v4

    goto :goto_5f

    :cond_97
    move v0, v4

    goto :goto_6c

    :catch_99
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_8f
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/net/Uri;
    .registers 12

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_f
    if-ne p2, v1, :cond_82

    const-string v0, "is_ringtone"

    move-object v6, v0

    :goto_14
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_1a
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v6, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "_data=\'"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\'"

    const-string v4, "\'\'"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4a
    .catchall {:try_start_1a .. :try_end_4a} :catchall_ea

    move-result-object v1

    if-eqz v1, :cond_53

    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8c

    :cond_53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v2}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    const-string v3, "_data"

    invoke-virtual {v2, v3, p1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "android.intent.extra.ringtone.TYPE"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/estrongs/android/util/ad;->a(Landroid/content/ContentResolver;Lcom/estrongs/android/util/TypedMap;)Landroid/net/Uri;
    :try_end_7b
    .catchall {:try_start_4d .. :try_end_7b} :catchall_e3

    move-result-object v0

    if-eqz v1, :cond_81

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_81
    :goto_81
    return-object v0

    :cond_82
    if-ne p2, v2, :cond_88

    const-string v0, "is_notification"

    move-object v6, v0

    goto :goto_14

    :cond_88
    const-string v0, "is_alarm"

    move-object v6, v0

    goto :goto_14

    :cond_8c
    :try_start_8c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_bd

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_a8
    .catchall {:try_start_8c .. :try_end_a8} :catchall_e3

    :try_start_a8
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_bd
    .catchall {:try_start_a8 .. :try_end_bd} :catchall_e3
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_bd} :catch_de

    :cond_bd
    :goto_bd
    :try_start_bd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_d7
    .catchall {:try_start_bd .. :try_end_d7} :catchall_e3

    move-result-object v0

    if-eqz v1, :cond_81

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_81

    :catch_de
    move-exception v0

    :try_start_df
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e2
    .catchall {:try_start_df .. :try_end_e2} :catchall_e3

    goto :goto_bd

    :catchall_e3
    move-exception v0

    :goto_e4
    if-eqz v1, :cond_e9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e9
    throw v0

    :catchall_ea
    move-exception v0

    move-object v1, v7

    goto :goto_e4
.end method
