.class public Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;
.super Ljava/lang/Object;
.source "FileBasedKeyValueStore.java"

# interfaces
.implements Lcom/google/android/finsky/utils/persistence/KeyValueStore;


# instance fields
.field private final mDataStoreId:Ljava/lang/String;

.field private final mRootDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .parameter "rootDirectory"
    .parameter "dataStoreId"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A dataStoreId must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_11
    iput-object p1, p0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mRootDirectory:Ljava/io/File;

    .line 44
    iput-object p2, p0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mDataStoreId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private parseMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 159
    .local v2, outputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 160
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 161
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 163
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 165
    :cond_22
    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 168
    .end local v0           #key:Ljava/lang/String;
    :cond_27
    return-object v2
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 7
    .parameter "key"

    .prologue
    .line 49
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mRootDirectory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mDataStoreId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 51
    .local v0, deleted:Z
    if-nez v0, :cond_2b

    .line 52
    const-string v2, "Attempt to delete \'%s\' failed!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_2b
    return-void
.end method

.method public fetchAll()Ljava/util/Map;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v13

    .line 59
    .local v13, output:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 60
    .local v6, files:[Ljava/io/File;
    if-eqz v6, :cond_b0

    .line 61
    move-object v1, v6

    .local v1, arr$:[Ljava/io/File;
    array-length v11, v1

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_11
    if-ge v8, v11, :cond_b0

    aget-object v4, v1, v8

    .line 62
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, fileName:Ljava/lang/String;
    :try_start_19
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mDataStoreId:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_26

    .line 61
    :cond_23
    :goto_23
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 68
    :cond_26
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v7, fis:Ljava/io/FileInputStream;
    new-instance v12, Ljava/io/ObjectInputStream;

    invoke-direct {v12, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    .local v12, ois:Ljava/io/ObjectInputStream;
    move-object v10, v5

    .line 72
    .local v10, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mDataStoreId:Ljava/lang/String;

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 73
    invoke-virtual {v12}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v14

    .line 74
    .local v14, valueJson:Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .local v9, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 77
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->parseMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v13, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_52} :catch_53
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_52} :catch_7d

    goto :goto_23

    .line 78
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #jsonObject:Lorg/json/JSONObject;
    .end local v10           #key:Ljava/lang/String;
    .end local v12           #ois:Ljava/io/ObjectInputStream;
    .end local v14           #valueJson:Ljava/lang/String;
    :catch_53
    move-exception v3

    .line 79
    .local v3, e:Ljava/io/IOException;
    const-string v15, "IOException when reading file \'%s\'. Deleting."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 81
    .local v2, deleted:Z
    if-nez v2, :cond_23

    .line 82
    const-string v15, "Attempt to delete \'%s\' failed!"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23

    .line 84
    .end local v2           #deleted:Z
    .end local v3           #e:Ljava/io/IOException;
    :catch_7d
    move-exception v3

    .line 85
    .local v3, e:Lorg/json/JSONException;
    const-string v15, "JSONException when reading file \'%s\'. Deleting. error=[%s]"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v2

    .line 88
    .restart local v2       #deleted:Z
    if-nez v2, :cond_23

    .line 89
    const-string v15, "Attempt to delete \'%s\' failed!"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_23

    .line 94
    .end local v1           #arr$:[Ljava/io/File;
    .end local v2           #deleted:Z
    .end local v3           #e:Lorg/json/JSONException;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fileName:Ljava/lang/String;
    .end local v8           #i$:I
    .end local v11           #len$:I
    :cond_b0
    return-object v13
.end method

.method public put(Ljava/lang/String;Ljava/util/Map;)V
    .registers 12
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p2, valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 133
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mRootDirectory:Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/android/finsky/utils/persistence/FileBasedKeyValueStore;->mDataStoreId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_4a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_20} :catch_3e

    .line 135
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_20
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v4, oos:Ljava/io/ObjectOutputStream;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 138
    .local v3, jsonObject:Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_53
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_34} :catch_56

    .line 143
    if-eqz v2, :cond_59

    .line 145
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3b

    move-object v1, v2

    .line 149
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :cond_3a
    :goto_3a
    return-void

    .line 146
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :catch_3b
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3a

    .line 140
    .end local v3           #jsonObject:Lorg/json/JSONObject;
    .end local v4           #oos:Ljava/io/ObjectOutputStream;
    :catch_3e
    move-exception v0

    .line 141
    .local v0, e:Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_4a

    .line 143
    if-eqz v1, :cond_3a

    .line 145
    :try_start_44
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_3a

    .line 146
    :catch_48
    move-exception v5

    goto :goto_3a

    .line 143
    .end local v0           #e:Ljava/io/IOException;
    :catchall_4a
    move-exception v5

    :goto_4b
    if-eqz v1, :cond_50

    .line 145
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    .line 146
    :cond_50
    :goto_50
    throw v5

    :catch_51
    move-exception v6

    goto :goto_50

    .line 143
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_53
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_4b

    .line 140
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_56
    move-exception v0

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3f

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #oos:Ljava/io/ObjectOutputStream;
    :cond_59
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3a
.end method
