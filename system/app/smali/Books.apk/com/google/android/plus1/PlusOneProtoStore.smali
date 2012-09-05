.class public Lcom/google/android/plus1/PlusOneProtoStore;
.super Ljava/lang/Object;
.source "PlusOneProtoStore.java"

# interfaces
.implements Lcom/google/android/plus1/PlusOneStore;


# static fields
.field private static final PROTOS_FILENAME:Ljava/lang/String; = "protos"

.field private static final TAG:Ljava/lang/String; = "+1ProtoStore"


# instance fields
.field private final mBaseDirectory:Ljava/io/File;

.field protected mCache:Lcom/google/android/plus1/PlusOneStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "relativePath"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 57
    .local v0, appFilesDir:Ljava/io/File;
    if-eqz p2, :cond_11

    .line 58
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    .local v1, baseDir:Ljava/io/File;
    :goto_e
    iput-object v1, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mBaseDirectory:Ljava/io/File;

    .line 63
    return-void

    .line 60
    .end local v1           #baseDir:Ljava/io/File;
    :cond_11
    move-object v1, v0

    .restart local v1       #baseDir:Ljava/io/File;
    goto :goto_e
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .parameter "baseDirectory"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mBaseDirectory:Ljava/io/File;

    .line 45
    return-void
.end method

.method private getProtoFile()Ljava/io/File;
    .registers 4

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mBaseDirectory:Ljava/io/File;

    const-string v2, "protos"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private load()V
    .registers 10

    .prologue
    const/4 v8, 0x6

    .line 70
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    if-nez v6, :cond_37

    .line 71
    const/4 v2, 0x0

    .line 73
    .local v2, is:Ljava/io/InputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->getProtoFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_f} :catch_4a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_72

    .line 74
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_f
    invoke-static {v3}, Lcom/google/android/plus1/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 75
    .local v0, buffer:[B
    invoke-static {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->parseFrom([B)Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    move-result-object v4

    .line 79
    .local v4, proto:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    new-instance v5, Lcom/google/android/plus1/PlusOneMemoryStore;

    invoke-direct {v5}, Lcom/google/android/plus1/PlusOneMemoryStore;-><init>()V

    .line 80
    .local v5, store:Lcom/google/android/plus1/PlusOneStore;
    invoke-static {v4, v5}, Lcom/google/android/plus1/PlusOneProtoUtils;->copyProtoIntoStore(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;Lcom/google/android/plus1/PlusOneStore;)V

    .line 82
    iput-object v5, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_21} :catch_b8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_b5

    .line 93
    if-eqz v3, :cond_bb

    .line 95
    :try_start_23
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_38

    move-object v2, v3

    .line 104
    .end local v0           #buffer:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #proto:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .end local v5           #store:Lcom/google/android/plus1/PlusOneStore;
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_27
    :goto_27
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    if-nez v6, :cond_37

    .line 105
    iget-object v6, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mBaseDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 106
    new-instance v6, Lcom/google/android/plus1/PlusOneMemoryStore;

    invoke-direct {v6}, Lcom/google/android/plus1/PlusOneMemoryStore;-><init>()V

    iput-object v6, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    .line 109
    .end local v2           #is:Ljava/io/InputStream;
    :cond_37
    return-void

    .line 96
    .restart local v0       #buffer:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #proto:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .restart local v5       #store:Lcom/google/android/plus1/PlusOneStore;
    :catch_38
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    const-string v6, "+1ProtoStore"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 98
    const-string v6, "+1ProtoStore"

    const-string v7, "IO error occurred while closing +1 file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    move-object v2, v3

    .line 100
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_27

    .line 84
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #proto:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .end local v5           #store:Lcom/google/android/plus1/PlusOneStore;
    :catch_4a
    move-exception v1

    .line 85
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_4b
    :try_start_4b
    const-string v6, "+1ProtoStore"

    const/4 v7, 0x4

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 86
    const-string v6, "+1ProtoStore"

    const-string v7, "+1 file not found"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4b .. :try_end_5b} :catchall_9a

    .line 93
    :cond_5b
    if-eqz v2, :cond_27

    .line 95
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_27

    .line 96
    :catch_61
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    const-string v6, "+1ProtoStore"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 98
    const-string v6, "+1ProtoStore"

    const-string v7, "IO error occurred while closing +1 file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 88
    .end local v1           #e:Ljava/io/IOException;
    :catch_72
    move-exception v1

    .line 89
    .restart local v1       #e:Ljava/io/IOException;
    :goto_73
    :try_start_73
    const-string v6, "+1ProtoStore"

    const/4 v7, 0x6

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_83

    .line 90
    const-string v6, "+1ProtoStore"

    const-string v7, "IO error occurred while loading +1 file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_73 .. :try_end_83} :catchall_9a

    .line 93
    :cond_83
    if-eqz v2, :cond_27

    .line 95
    :try_start_85
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    goto :goto_27

    .line 96
    :catch_89
    move-exception v1

    .line 97
    const-string v6, "+1ProtoStore"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 98
    const-string v6, "+1ProtoStore"

    const-string v7, "IO error occurred while closing +1 file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 93
    .end local v1           #e:Ljava/io/IOException;
    :catchall_9a
    move-exception v6

    :goto_9b
    if-eqz v2, :cond_a0

    .line 95
    :try_start_9d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 100
    :cond_a0
    :goto_a0
    throw v6

    .line 96
    :catch_a1
    move-exception v1

    .line 97
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "+1ProtoStore"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a0

    .line 98
    const-string v7, "+1ProtoStore"

    const-string v8, "IO error occurred while closing +1 file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 93
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_b2
    move-exception v6

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_9b

    .line 88
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_b5
    move-exception v1

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_73

    .line 84
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_b8
    move-exception v1

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_4b

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #proto:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;
    .restart local v5       #store:Lcom/google/android/plus1/PlusOneStore;
    :cond_bb
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto/16 :goto_27
.end method


# virtual methods
.method public addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 215
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->addOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->save()V

    .line 217
    return-void
.end method

.method protected copyStoreIntoProto(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;)V
    .registers 4
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/google/android/plus1/PlusOneProtoUtils;->copyStoreIntoProto(Lcom/google/android/plus1/PlusOneStore;Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;Z)V

    .line 151
    return-void
.end method

.method public getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 156
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0}, Lcom/google/android/plus1/PlusOneStore;->getAccountStatus()Lcom/google/android/plus1/PlusOneStatus;

    move-result-object v0

    return-object v0
.end method

.method public getOperations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 204
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0}, Lcom/google/android/plus1/PlusOneStore;->getOperations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;
    .registers 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 168
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->getPlusOne(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOnes()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 179
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPlusOnes(Ljava/util/Set;)Ljava/util/Map;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/plus1/PlusOne;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    .local p1, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 173
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->getPlusOnes(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 221
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->removeOperation(Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;)V

    .line 222
    invoke-virtual {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->save()V

    .line 223
    return-void
.end method

.method public save()V
    .registers 10

    .prologue
    const/4 v8, 0x6

    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, os:Ljava/io/OutputStream;
    :try_start_2
    const-string v5, "protos"

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mBaseDirectory:Ljava/io/File;

    invoke-static {v5, v6, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 117
    .local v4, tempFile:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_10} :catch_3e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_66
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_2 .. :try_end_10} :catch_8e

    .line 118
    .end local v2           #os:Ljava/io/OutputStream;
    .local v3, os:Ljava/io/OutputStream;
    :try_start_10
    invoke-static {}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->newBuilder()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;

    move-result-object v0

    .line 120
    .local v0, builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    invoke-virtual {p0, v0}, Lcom/google/android/plus1/PlusOneProtoStore;->copyStoreIntoProto(Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;)V

    .line 121
    invoke-virtual {v0}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;->build()Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore;->writeTo(Ljava/io/OutputStream;)V

    .line 122
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->getProtoFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_cf
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_25} :catch_d8
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_25} :catch_d5
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_10 .. :try_end_25} :catch_d2

    .line 136
    if-eqz v3, :cond_dc

    .line 138
    :try_start_27
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2c

    move-object v2, v3

    .line 146
    .end local v0           #builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #tempFile:Ljava/io/File;
    .restart local v2       #os:Ljava/io/OutputStream;
    :cond_2b
    :goto_2b
    return-void

    .line 139
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v0       #builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #tempFile:Ljava/io/File;
    :catch_2c
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/IOException;
    const-string v5, "+1ProtoStore"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 141
    const-string v5, "+1ProtoStore"

    const-string v6, "IO error occurred while closing +1 file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move-object v2, v3

    .line 143
    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_2b

    .line 123
    .end local v0           #builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #tempFile:Ljava/io/File;
    :catch_3e
    move-exception v1

    .line 124
    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_3f
    :try_start_3f
    const-string v5, "+1ProtoStore"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 125
    const-string v5, "+1ProtoStore"

    const-string v6, "File not found while saving +1 file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_b7

    .line 136
    :cond_4f
    if-eqz v2, :cond_2b

    .line 138
    :try_start_51
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    goto :goto_2b

    .line 139
    :catch_55
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/IOException;
    const-string v5, "+1ProtoStore"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 141
    const-string v5, "+1ProtoStore"

    const-string v6, "IO error occurred while closing +1 file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 127
    .end local v1           #e:Ljava/io/IOException;
    :catch_66
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/io/IOException;
    :goto_67
    :try_start_67
    const-string v5, "+1ProtoStore"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_77

    .line 129
    const-string v5, "+1ProtoStore"

    const-string v6, "IO error occurred while saving +1 file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_67 .. :try_end_77} :catchall_b7

    .line 136
    :cond_77
    if-eqz v2, :cond_2b

    .line 138
    :try_start_79
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_2b

    .line 139
    :catch_7d
    move-exception v1

    .line 140
    const-string v5, "+1ProtoStore"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 141
    const-string v5, "+1ProtoStore"

    const-string v6, "IO error occurred while closing +1 file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 131
    .end local v1           #e:Ljava/io/IOException;
    :catch_8e
    move-exception v1

    .line 132
    .local v1, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    :goto_8f
    :try_start_8f
    const-string v5, "+1ProtoStore"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 133
    const-string v5, "+1ProtoStore"

    const-string v6, "Error occurred while saving +1 file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_8f .. :try_end_9f} :catchall_b7

    .line 136
    :cond_9f
    if-eqz v2, :cond_2b

    .line 138
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_2b

    .line 139
    :catch_a5
    move-exception v1

    .line 140
    .local v1, e:Ljava/io/IOException;
    const-string v5, "+1ProtoStore"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 141
    const-string v5, "+1ProtoStore"

    const-string v6, "IO error occurred while closing +1 file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 136
    .end local v1           #e:Ljava/io/IOException;
    :catchall_b7
    move-exception v5

    :goto_b8
    if-eqz v2, :cond_bd

    .line 138
    :try_start_ba
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_bd} :catch_be

    .line 143
    :cond_bd
    :goto_bd
    throw v5

    .line 139
    :catch_be
    move-exception v1

    .line 140
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "+1ProtoStore"

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_bd

    .line 141
    const-string v6, "+1ProtoStore"

    const-string v7, "IO error occurred while closing +1 file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 136
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    .restart local v4       #tempFile:Ljava/io/File;
    :catchall_cf
    move-exception v5

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_b8

    .line 131
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_d2
    move-exception v1

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_8f

    .line 127
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_d5
    move-exception v1

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto :goto_67

    .line 123
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_d8
    move-exception v1

    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto/16 :goto_3f

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v0       #builder:Lcom/google/android/plus1/proto/PlusOneProtos$PlusOneStore$Builder;
    .restart local v3       #os:Ljava/io/OutputStream;
    :cond_dc
    move-object v2, v3

    .end local v3           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    goto/16 :goto_2b
.end method

.method public setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V
    .registers 3
    .parameter "status"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 162
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->setAccountStatus(Lcom/google/android/plus1/PlusOneStatus;)V

    .line 163
    invoke-virtual {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->save()V

    .line 164
    return-void
.end method

.method public setOperations(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, operations:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/plus1/PlusOneStore$PlusOneOperation;>;"
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 209
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1}, Lcom/google/android/plus1/PlusOneStore;->setOperations(Ljava/util/List;)V

    .line 210
    invoke-virtual {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->save()V

    .line 211
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V
    .registers 4
    .parameter "uri"
    .parameter "plusOne"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 198
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;Lcom/google/android/plus1/PlusOne;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->save()V

    .line 200
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;Z)V
    .registers 4
    .parameter "uri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/plus1/PlusOneProtoStore;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 185
    return-void
.end method

.method public setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 5
    .parameter "uri"
    .parameter "value"
    .parameter "abuseToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/plus1/PlusOneReader$PlusOneException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->load()V

    .line 191
    iget-object v0, p0, Lcom/google/android/plus1/PlusOneProtoStore;->mCache:Lcom/google/android/plus1/PlusOneStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/plus1/PlusOneStore;->setPlusOne(Landroid/net/Uri;ZLjava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/google/android/plus1/PlusOneProtoStore;->save()V

    .line 193
    return-void
.end method
