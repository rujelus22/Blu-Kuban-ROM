.class public Lcom/sec/android/app/dlna/dlnaservice/ContentsHelper;
.super Ljava/lang/Object;
.source "ContentsHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContentInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;
    .registers 14
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 34
    .local v1, tempUri:Landroid/net/Uri;
    const-string v3, "DLNA"

    const-string v4, "ContentsHelper.HashMap()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-nez v1, :cond_f

    .line 79
    :goto_e
    return-object v2

    .line 38
    :cond_f
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v10, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 42
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 43
    .local v6, cur:Landroid/database/Cursor;
    if-nez v6, :cond_41

    .line 44
    const-string v3, "DLNA"

    const-string v4, "Cursor null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 47
    :cond_41
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 49
    const/4 v9, 0x0

    .local v9, i:I
    :goto_45
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v9, v2, :cond_c9

    .line 50
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_size"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_93

    .line 51
    const/4 v11, 0x0

    .line 53
    .local v11, size:I
    :try_start_59
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_77

    move-result v11

    .line 57
    :goto_5d
    if-nez v11, :cond_87

    .line 59
    :try_start_5f
    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    .line 60
    .local v8, file:Landroid/content/res/AssetFileDescriptor;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_74} :catch_7c

    .line 49
    .end local v8           #file:Landroid/content/res/AssetFileDescriptor;
    .end local v11           #size:I
    :goto_74
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 54
    .restart local v11       #size:I
    :catch_77
    move-exception v7

    .line 55
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5d

    .line 61
    .end local v7           #e:Ljava/lang/Exception;
    :catch_7c
    move-exception v7

    .line 62
    .local v7, e:Ljava/io/FileNotFoundException;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 65
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_87
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 69
    .end local v11           #size:I
    :cond_93
    :try_start_93
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 70
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/xml/XML;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_ae} :catch_af

    goto :goto_74

    .line 73
    :catch_af
    move-exception v7

    .line 74
    .local v7, e:Ljava/lang/Exception;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_74

    .line 72
    .end local v7           #e:Ljava/lang/Exception;
    :cond_bd
    :try_start_bd
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c8} :catch_af

    goto :goto_74

    :cond_c9
    move-object v2, v10

    .line 79
    goto/16 :goto_e
.end method
