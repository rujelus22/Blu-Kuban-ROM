.class public Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;
.super Ljava/lang/Object;
.source "BinaryDictionaryFileDumper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DICTIONARY_PROJECTION:[Ljava/lang/String; = null

.field private static final FILE_READ_BUFFER_SIZE:I = 0x400

.field private static final MAGIC_NUMBER:[B

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 45
    const-class v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    .line 44
    return-void

    .line 53
    nop

    :array_1c
    .array-data 0x1
        0x78t
        0xb1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/inputmethod/latin/AssetFileAddress;
    .registers 31
    .parameter "id"
    .parameter "locale"
    .parameter "resolver"
    .parameter "context"

    .prologue
    .line 127
    const/4 v5, 0x0

    .line 128
    .local v5, COMPRESSED_CRYPTED_COMPRESSED:I
    const/4 v7, 0x1

    .line 129
    .local v7, CRYPTED_COMPRESSED:I
    const/4 v4, 0x2

    .line 130
    .local v4, COMPRESSED_CRYPTED:I
    const/4 v6, 0x3

    .line 131
    .local v6, COMPRESSED_ONLY:I
    const/4 v8, 0x4

    .line 132
    .local v8, CRYPTED_ONLY:I
    const/4 v11, 0x5

    .line 133
    .local v11, NONE:I
    const/4 v10, 0x0

    .line 134
    .local v10, MODE_MIN:I
    const/4 v9, 0x5

    .line 136
    .local v9, MODE_MAX:I
    invoke-static/range {p0 .. p0}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 137
    .local v22, wordListUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/BinaryDictionaryGetter;->getCacheFileName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, outputFileName:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, mode:I
    :goto_17
    const/16 v23, 0x5

    move/from16 v0, v23

    if-le v15, v0, :cond_40

    .line 215
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v24, "Could not copy a word list. Will not be able to use it."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    if-gtz v23, :cond_3d

    .line 219
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v24, "In addition, we were unable to delete it."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_3d
    const/16 v23, 0x0

    :cond_3f
    :goto_3f
    return-object v23

    .line 140
    :cond_40
    const/16 v16, 0x0

    .line 141
    .local v16, originalSourceStream:Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 142
    .local v14, inputStream:Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 143
    .local v17, outputFile:Ljava/io/File;
    const/16 v20, 0x0

    .line 144
    .local v20, outputStream:Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 147
    .local v12, afd:Landroid/content/res/AssetFileDescriptor;
    :try_start_48
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_138

    move-result-object v12

    .line 149
    if-nez v12, :cond_8f

    .line 201
    if-eqz v12, :cond_57

    :try_start_54
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_5f

    .line 206
    :cond_57
    :goto_57
    if-eqz v20, :cond_5c

    :try_start_59
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_77

    .line 149
    :cond_5c
    :goto_5c
    const/16 v23, 0x0

    goto :goto_3f

    .line 202
    :catch_5f
    move-exception v13

    .line 203
    .local v13, e:Ljava/lang/Exception;
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Exception while closing a cross-process file descriptor : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 207
    .end local v13           #e:Ljava/lang/Exception;
    :catch_77
    move-exception v13

    .line 208
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Exception while closing a file : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 150
    .end local v13           #e:Ljava/lang/Exception;
    :cond_8f
    :try_start_8f
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v16

    .line 152
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_8f .. :try_end_98} :catchall_17c
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_98} :catch_138

    .line 153
    .end local v17           #outputFile:Ljava/io/File;
    .local v18, outputFile:Ljava/io/File;
    :try_start_98
    new-instance v21, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_1b8
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a1} :catch_1c2

    .line 155
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    .local v21, outputStream:Ljava/io/FileOutputStream;
    packed-switch v15, :pswitch_data_1ce

    .line 180
    :goto_a4
    :try_start_a4
    new-instance v23, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V

    .line 181
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v23

    if-gtz v23, :cond_cb

    .line 182
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v24, "Could not have the dictionary pack delete a word list"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_cb
    invoke-static/range {v19 .. v19}, Lcom/android/inputmethod/latin/AssetFileAddress;->makeFromFileName(Ljava/lang/String;)Lcom/android/inputmethod/latin/AssetFileAddress;
    :try_end_ce
    .catchall {:try_start_a4 .. :try_end_ce} :catchall_1bc
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_ce} :catch_1c7

    move-result-object v23

    .line 201
    if-eqz v12, :cond_d4

    :try_start_d1
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_120

    .line 206
    :cond_d4
    :goto_d4
    if-eqz v21, :cond_3f

    :try_start_d6
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileOutputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_db

    goto/16 :goto_3f

    .line 207
    :catch_db
    move-exception v13

    .line 208
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Exception while closing a file : "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3f

    .line 159
    .end local v13           #e:Ljava/lang/Exception;
    :pswitch_f4
    :try_start_f4
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    .line 158
    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    .line 157
    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 161
    goto :goto_a4

    .line 164
    :pswitch_101
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    .line 163
    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 165
    goto :goto_a4

    .line 168
    :pswitch_10a
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v23

    .line 167
    invoke-static/range {v23 .. v23}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 169
    goto :goto_a4

    .line 171
    :pswitch_113
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getUncompressedStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v14

    .line 172
    goto :goto_a4

    .line 174
    :pswitch_118
    invoke-static/range {v16 .. v16}, Lcom/android/inputmethod/latin/FileTransforms;->getDecryptedStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_11b
    .catchall {:try_start_f4 .. :try_end_11b} :catchall_1bc
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_11b} :catch_1c7

    move-result-object v14

    .line 175
    goto :goto_a4

    .line 177
    :pswitch_11d
    move-object/from16 v14, v16

    goto :goto_a4

    .line 202
    :catch_120
    move-exception v13

    .line 203
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Exception while closing a cross-process file descriptor : "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 186
    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #outputFile:Ljava/io/File;
    .end local v21           #outputStream:Ljava/io/FileOutputStream;
    .restart local v17       #outputFile:Ljava/io/File;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    :catch_138
    move-exception v13

    .line 190
    .restart local v13       #e:Ljava/lang/Exception;
    :goto_139
    if-eqz v17, :cond_13e

    .line 194
    :try_start_13b
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_13e
    .catchall {:try_start_13b .. :try_end_13e} :catchall_17c

    .line 201
    :cond_13e
    if-eqz v12, :cond_143

    :try_start_140
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_143} :catch_14c

    .line 206
    :cond_143
    :goto_143
    if-eqz v20, :cond_148

    :try_start_145
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_164

    .line 139
    :cond_148
    :goto_148
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_17

    .line 202
    :catch_14c
    move-exception v13

    .line 203
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Exception while closing a cross-process file descriptor : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 207
    :catch_164
    move-exception v13

    .line 208
    sget-object v23, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, "Exception while closing a file : "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    .line 197
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_17c
    move-exception v23

    .line 201
    :goto_17d
    if-eqz v12, :cond_182

    :try_start_17f
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_17f .. :try_end_182} :catch_188

    .line 206
    :cond_182
    :goto_182
    if-eqz v20, :cond_187

    :try_start_184
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_184 .. :try_end_187} :catch_1a0

    .line 210
    :cond_187
    :goto_187
    throw v23

    .line 202
    :catch_188
    move-exception v13

    .line 203
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Exception while closing a cross-process file descriptor : "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    .line 207
    .end local v13           #e:Ljava/lang/Exception;
    :catch_1a0
    move-exception v13

    .line 208
    .restart local v13       #e:Ljava/lang/Exception;
    sget-object v24, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Exception while closing a file : "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_187

    .line 197
    .end local v13           #e:Ljava/lang/Exception;
    .end local v17           #outputFile:Ljava/io/File;
    .restart local v18       #outputFile:Ljava/io/File;
    :catchall_1b8
    move-exception v23

    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto :goto_17d

    .end local v17           #outputFile:Ljava/io/File;
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    .restart local v18       #outputFile:Ljava/io/File;
    .restart local v21       #outputStream:Ljava/io/FileOutputStream;
    :catchall_1bc
    move-exception v23

    move-object/from16 v20, v21

    .end local v21           #outputStream:Ljava/io/FileOutputStream;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto :goto_17d

    .line 186
    .end local v17           #outputFile:Ljava/io/File;
    .restart local v18       #outputFile:Ljava/io/File;
    :catch_1c2
    move-exception v13

    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto/16 :goto_139

    .end local v17           #outputFile:Ljava/io/File;
    .end local v20           #outputStream:Ljava/io/FileOutputStream;
    .restart local v18       #outputFile:Ljava/io/File;
    .restart local v21       #outputStream:Ljava/io/FileOutputStream;
    :catch_1c7
    move-exception v13

    move-object/from16 v20, v21

    .end local v21           #outputStream:Ljava/io/FileOutputStream;
    .restart local v20       #outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v17, v18

    .end local v18           #outputFile:Ljava/io/File;
    .restart local v17       #outputFile:Ljava/io/File;
    goto/16 :goto_139

    .line 155
    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_f4
        :pswitch_101
        :pswitch_10a
        :pswitch_113
        :pswitch_118
        :pswitch_11d
    .end packed-switch
.end method

.method public static cacheWordListsFromContentProvider(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .parameter "locale"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/AssetFileAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 237
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 238
    .local v3, idList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, fileAddressList:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/AssetFileAddress;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_18

    .line 245
    return-object v1

    .line 239
    :cond_18
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/inputmethod/latin/WordListInfo;

    .line 240
    .local v2, id:Lcom/android/inputmethod/latin/WordListInfo;
    iget-object v6, v2, Lcom/android/inputmethod/latin/WordListInfo;->mId:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/inputmethod/latin/WordListInfo;->mLocale:Ljava/lang/String;

    invoke-static {v6, v7, v4, p1}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->cacheWordList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/content/Context;)Lcom/android/inputmethod/latin/AssetFileAddress;

    move-result-object v0

    .line 241
    .local v0, afd:Lcom/android/inputmethod/latin/AssetFileAddress;
    if-eqz v0, :cond_11

    .line 242
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private static checkMagicAndCopyFileTo(Ljava/io/BufferedInputStream;Ljava/io/FileOutputStream;)V
    .registers 8
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 261
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    array-length v4, v4

    new-array v1, v4, [B

    .line 262
    .local v1, magicNumberBuffer:[B
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    array-length v4, v4

    invoke-virtual {p0, v1, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    .line 263
    .local v3, readMagicNumberSize:I
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    array-length v4, v4

    if-ge v3, v4, :cond_1a

    .line 264
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Less bytes to read than the magic number length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 266
    :cond_1a
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 267
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Wrong magic number for downloaded file"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 269
    :cond_2a
    sget-object v4, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->MAGIC_NUMBER:[B

    invoke-virtual {p1, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 272
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 273
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    .local v2, readBytes:I
    :goto_37
    if-gez v2, :cond_3d

    .line 275
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    .line 276
    return-void

    .line 274
    :cond_3d
    invoke-virtual {p1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 273
    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    goto :goto_37
.end method

.method private static getProviderUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 3
    .parameter "path"

    .prologue
    .line 65
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 66
    const-string v1, "com.android.inputmethod.latin.dictionarypack"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method private static getWordListWordListInfos(Ljava/util/Locale;Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .parameter "locale"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/latin/WordListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->getProviderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 79
    .local v1, dictionaryPackUri:Landroid/net/Uri;
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->DICTIONARY_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 80
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 100
    :goto_1b
    return-object v8

    .line 81
    :cond_1c
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_28

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_30

    .line 82
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_1b

    .line 87
    :cond_30
    :try_start_30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    :cond_35
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 90
    .local v9, wordListId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, wordListLocale:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 93
    :goto_45
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 88
    if-nez v2, :cond_35

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_4e} :catch_4f

    goto :goto_1b

    .line 96
    .end local v8           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    .end local v9           #wordListId:Ljava/lang/String;
    .end local v10           #wordListLocale:Ljava/lang/String;
    :catch_4f
    move-exception v7

    .line 99
    .local v7, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception communicating with the dictionary pack : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    goto :goto_1b

    .line 92
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/latin/WordListInfo;>;"
    .restart local v9       #wordListId:Ljava/lang/String;
    .restart local v10       #wordListLocale:Ljava/lang/String;
    :cond_69
    :try_start_69
    new-instance v2, Lcom/android/inputmethod/latin/WordListInfo;

    invoke-direct {v2, v9, v10}, Lcom/android/inputmethod/latin/WordListInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_71} :catch_4f

    goto :goto_45
.end method

.method private static openAssetFileDescriptor(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 111
    :try_start_0
    const-string v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 115
    :goto_6
    return-object v1

    .line 112
    :catch_7
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/FileNotFoundException;
    sget-object v1, Lcom/android/inputmethod/latin/BinaryDictionaryFileDumper;->TAG:Ljava/lang/String;

    const-string v2, "Could not find a word list from the dictionary provider."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x0

    goto :goto_6
.end method
