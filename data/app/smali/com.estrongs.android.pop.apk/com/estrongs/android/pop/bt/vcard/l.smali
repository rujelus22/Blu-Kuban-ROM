.class public Lcom/estrongs/android/pop/bt/vcard/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 11

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    :try_start_c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_14

    move-result v0

    if-nez v0, :cond_1a

    move v0, v6

    :goto_13
    return v0

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v6

    goto :goto_13

    :cond_1a
    new-instance v7, Lcom/estrongs/android/pop/bt/vcard/b;

    invoke-direct {v7}, Lcom/estrongs/android/pop/bt/vcard/b;-><init>()V

    :try_start_1f
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3f

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_44

    :cond_3f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_13

    :cond_44
    const-wide/16 v1, 0x0

    :cond_46
    invoke-virtual {v7, v3, v0}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Landroid/database/Cursor;Landroid/content/ContentResolver;)V

    invoke-virtual {v7, v8}, Lcom/estrongs/android/pop/bt/vcard/b;->a(Ljava/lang/Appendable;)V

    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_46

    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_58} :catch_5a

    const/4 v0, 0x1

    goto :goto_13

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v6

    goto :goto_13
.end method
