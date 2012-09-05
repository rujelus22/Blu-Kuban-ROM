.class public Lcom/wssnps/database/smlMediaItem;
.super Ljava/lang/Object;
.source "smlMediaItem.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copy(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .parameter "fOrg"
    .parameter "fTarget"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 311
    .local v1, io:Ljava/io/FileInputStream;
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 313
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 315
    .local v3, out:Ljava/io/FileOutputStream;
    const/16 v4, 0x2000

    new-array v0, v4, [B

    .line 318
    .local v0, bBuffer:[B
    :goto_11
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, nRead:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1d

    .line 320
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_11

    .line 323
    :cond_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 324
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 325
    return-void
.end method

.method public static getMedia(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 37
    .parameter "cResolver"
    .parameter "id"

    .prologue
    .line 51
    const-string v2, "content://com.samsung.android.elibrary"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 52
    .local v3, uri:Landroid/net/Uri;
    const/16 v2, 0x8

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "author"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "title"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "location"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "rights"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "publisher"

    aput-object v6, v4, v2

    const/4 v2, 0x5

    const-string v6, "date"

    aput-object v6, v4, v2

    const/4 v2, 0x6

    const-string v6, "cover_bookshelf"

    aput-object v6, v4, v2

    const/4 v2, 0x7

    const-string v6, "isbn"

    aput-object v6, v4, v2

    .line 54
    .local v4, select:[Ljava/lang/String;
    const-string v2, "_id = %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, where:Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v23, mediadata:Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 59
    .local v16, cursor:Landroid/database/Cursor;
    if-nez v16, :cond_55

    .line 61
    const/4 v2, 0x1

    const-string v6, "getMedia() cursor==null"

    invoke-static {v2, v6}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 62
    const/4 v2, 0x0

    .line 304
    :goto_54
    return-object v2

    .line 65
    :cond_55
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2f7

    .line 67
    const/4 v10, 0x0

    .local v10, coverfilename:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, covertemppath:Ljava/lang/String;
    const/16 v20, 0x0

    .local v20, filename:Ljava/lang/String;
    const/16 v25, 0x0

    .local v25, path:Ljava/lang/String;
    const/16 v30, 0x0

    .local v30, size:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, createtime:Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, readtime:Ljava/lang/String;
    const-string v17, "Free"

    .line 68
    .local v17, drm:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, author:Ljava/lang/String;
    const/16 v33, 0x0

    .local v33, title:Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, location:Ljava/lang/String;
    const/16 v29, 0x0

    .local v29, rights:Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, publisher:Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, publishdate:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, coverpath:Ljava/lang/String;
    const/16 v21, 0x0

    .line 72
    .local v21, isbn:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 73
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 74
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 75
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 76
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 77
    const/4 v2, 0x5

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 78
    const/4 v2, 0x6

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 79
    const/4 v2, 0x7

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 81
    invoke-static/range {v22 .. v22}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12d

    .line 83
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 84
    .local v14, create:Landroid/text/format/Time;
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v19, ebookfile:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 87
    const-string v2, "%04d-%02d-%02dT%02d:%02d:%02d"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v6, v7

    const/4 v7, 0x1

    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v6, v7

    const/4 v7, 0x2

    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v6, v7

    const/4 v7, 0x3

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v6, v7

    const/4 v7, 0x4

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v6, v7

    const/4 v7, 0x5

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 90
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v30

    .line 92
    const-string v2, "/"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    .line 93
    .local v24, nIndex:I
    const/4 v2, -0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_2fd

    .line 95
    move-object/from16 v20, v22

    .line 96
    const/16 v25, 0x0

    .line 145
    .end local v14           #create:Landroid/text/format/Time;
    .end local v19           #ebookfile:Ljava/io/File;
    .end local v24           #nIndex:I
    :cond_12d
    :goto_12d
    invoke-static {v11}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_198

    .line 147
    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    .restart local v24       #nIndex:I
    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_198

    .line 149
    add-int/lit8 v2, v24, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v11, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 150
    const-string v2, "/mnt/sdcard/temp/%s/"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 152
    new-instance v32, Ljava/io/File;

    move-object/from16 v0, v32

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    .local v32, tempfolder:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v9, coverfile:Ljava/io/File;
    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 155
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v12, covertempfile:Ljava/io/File;
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3a6

    .line 161
    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_39a

    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v2, 0x1

    const-string v6, "getMedia() mkdirs error"

    invoke-static {v2, v6}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 194
    :cond_17c
    :goto_17c
    if-eqz v13, :cond_198

    .line 196
    invoke-static {v13}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_198

    const-string v2, "internal:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v34, 0xb

    move/from16 v0, v34

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 224
    .end local v9           #coverfile:Ljava/io/File;
    .end local v12           #covertempfile:Ljava/io/File;
    .end local v24           #nIndex:I
    .end local v32           #tempfolder:Ljava/io/File;
    :cond_198
    const-string v2, "\t<MediaItem ID=\"%s\" Type=\"Ebook\">\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 225
    .local v31, temp:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-static/range {v25 .. v25}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c4

    .line 228
    const-string v2, "\t\t<Path>%s</Path>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v25, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 229
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :cond_1c4
    invoke-static/range {v20 .. v20}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1dd

    .line 233
    const-string v2, "\t\t<Filename>%s</Filename>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 234
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    :cond_1dd
    invoke-static/range {v30 .. v30}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f6

    .line 238
    const-string v2, "\t\t<Size>%s</Size>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v30, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 239
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    :cond_1f6
    invoke-static/range {v33 .. v33}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20f

    .line 243
    const-string v2, "\t\t<Title>%s</Title>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v33, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 244
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    :cond_20f
    invoke-static {v8}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_228

    .line 248
    const-string v2, "\t\t<Author>%s</Author>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 249
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    :cond_228
    invoke-static {v15}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_241

    .line 253
    const-string v2, "\t\t<CreateTime>%s</CreateTime>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 254
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    :cond_241
    invoke-static/range {v28 .. v28}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25a

    .line 258
    const-string v2, "\t\t<Readtime>%s</Readtime>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v28, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 259
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_25a
    invoke-static/range {v17 .. v17}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_273

    .line 263
    const-string v2, "\t\t<DRM>%s</DRM>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 264
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    :cond_273
    invoke-static {v13}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28c

    .line 268
    const-string v2, "\t\t<Image type=\"path\">%s</Image>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 269
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 278
    :cond_28c
    invoke-static/range {v27 .. v27}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a5

    .line 280
    const-string v2, "\t\t<Publisher>%s</Publisher>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v27, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 281
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    :cond_2a5
    invoke-static/range {v26 .. v26}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2be

    .line 285
    const-string v2, "\t\t<PublishDate>%s</PublishDate>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v26, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 286
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_2be
    invoke-static/range {v21 .. v21}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d7

    .line 290
    const-string v2, "\t\t<ISBN>%s</ISBN>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 291
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_2d7
    invoke-static/range {v29 .. v29}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f0

    .line 295
    const-string v2, "\t\t<Rights>%s</Rights>\r\n"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v29, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 296
    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    :cond_2f0
    const-string v2, "\t</MediaItem>\r\n"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    .end local v8           #author:Ljava/lang/String;
    .end local v10           #coverfilename:Ljava/lang/String;
    .end local v11           #coverpath:Ljava/lang/String;
    .end local v13           #covertemppath:Ljava/lang/String;
    .end local v15           #createtime:Ljava/lang/String;
    .end local v17           #drm:Ljava/lang/String;
    .end local v20           #filename:Ljava/lang/String;
    .end local v21           #isbn:Ljava/lang/String;
    .end local v22           #location:Ljava/lang/String;
    .end local v25           #path:Ljava/lang/String;
    .end local v26           #publishdate:Ljava/lang/String;
    .end local v27           #publisher:Ljava/lang/String;
    .end local v28           #readtime:Ljava/lang/String;
    .end local v29           #rights:Ljava/lang/String;
    .end local v30           #size:Ljava/lang/String;
    .end local v31           #temp:Ljava/lang/String;
    .end local v33           #title:Ljava/lang/String;
    :cond_2f7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_54

    .line 100
    .restart local v8       #author:Ljava/lang/String;
    .restart local v10       #coverfilename:Ljava/lang/String;
    .restart local v11       #coverpath:Ljava/lang/String;
    .restart local v13       #covertemppath:Ljava/lang/String;
    .restart local v14       #create:Landroid/text/format/Time;
    .restart local v15       #createtime:Ljava/lang/String;
    .restart local v17       #drm:Ljava/lang/String;
    .restart local v19       #ebookfile:Ljava/io/File;
    .restart local v20       #filename:Ljava/lang/String;
    .restart local v21       #isbn:Ljava/lang/String;
    .restart local v22       #location:Ljava/lang/String;
    .restart local v24       #nIndex:I
    .restart local v25       #path:Ljava/lang/String;
    .restart local v26       #publishdate:Ljava/lang/String;
    .restart local v27       #publisher:Ljava/lang/String;
    .restart local v28       #readtime:Ljava/lang/String;
    .restart local v29       #rights:Ljava/lang/String;
    .restart local v30       #size:Ljava/lang/String;
    .restart local v33       #title:Ljava/lang/String;
    :cond_2fd
    add-int/lit8 v2, v24, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 101
    const/4 v2, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 103
    .restart local v31       #temp:Ljava/lang/String;
    const-string v2, "/mnt/sdcard"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_330

    .line 105
    const-string v2, "internal:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v34, 0xb

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_12d

    .line 107
    :cond_330
    const-string v2, "/sdcard"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_352

    .line 109
    const-string v2, "internal:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v34, 0x7

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_12d

    .line 111
    :cond_352
    const-string v2, "/mnt/sdcard/external_sd"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_374

    .line 113
    const-string v2, "external:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v34, 0x17

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_12d

    .line 115
    :cond_374
    const-string v2, "/sdcard/external_sd"

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_396

    .line 117
    const-string v2, "external:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v34, 0x13

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v6, v7

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_12d

    .line 119
    :cond_396
    move-object/from16 v25, v31

    goto/16 :goto_12d

    .line 170
    .end local v14           #create:Landroid/text/format/Time;
    .end local v19           #ebookfile:Ljava/io/File;
    .end local v31           #temp:Ljava/lang/String;
    .restart local v9       #coverfile:Ljava/io/File;
    .restart local v12       #covertempfile:Ljava/io/File;
    .restart local v32       #tempfolder:Ljava/io/File;
    :cond_39a
    :try_start_39a
    invoke-static {v9, v12}, Lcom/wssnps/database/smlMediaItem;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_39d
    .catch Ljava/lang/Exception; {:try_start_39a .. :try_end_39d} :catch_39f

    goto/16 :goto_17c

    .line 172
    :catch_39f
    move-exception v18

    .line 174
    .local v18, e:Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const/4 v13, 0x0

    .line 176
    goto/16 :goto_17c

    .line 181
    .end local v18           #e:Ljava/lang/Exception;
    :cond_3a6
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_17c

    .line 185
    :try_start_3ac
    invoke-static {v9, v12}, Lcom/wssnps/database/smlMediaItem;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_3ac .. :try_end_3af} :catch_3b1

    goto/16 :goto_17c

    .line 187
    :catch_3b1
    move-exception v18

    .line 189
    .restart local v18       #e:Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const/4 v13, 0x0

    goto/16 :goto_17c
.end method

.method public static getMediaIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "cResolver"
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    .local v7, nCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .local v8, sbRet:Ljava/lang/StringBuilder;
    const-string v0, "content://com.samsung.android.elibrary"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 28
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    .local v2, select:[Ljava/lang/String;
    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 30
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 32
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 33
    const-string v0, "0\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 39
    :cond_35
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_35

    .line 42
    :cond_48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 44
    const-string v0, "\n"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
