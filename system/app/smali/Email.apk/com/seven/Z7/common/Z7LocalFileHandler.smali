.class public Lcom/seven/Z7/common/Z7LocalFileHandler;
.super Ljava/util/logging/StreamHandler;
.source "Z7LocalFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;
    }
.end annotation


# static fields
.field private static final allLocks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private count:I

.field fileName:Ljava/lang/String;

.field private files:[Ljava/io/File;

.field private limit:I

.field lock:Ljava/nio/channels/FileLock;

.field private manager:Ljava/util/logging/LogManager;

.field private output:Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;

.field private pattern:Ljava/lang/String;

.field uniqueID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 118
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/seven/Z7/common/Z7LocalFileHandler;->allLocks:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Ljava/util/logging/StreamHandler;-><init>()V

    .line 143
    iput-object v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 146
    iput-object v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    .line 149
    const/4 v0, -0x1

    iput v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->uniqueID:I

    .line 163
    invoke-direct {p0, v1, v1, v1, v1}, Lcom/seven/Z7/common/Z7LocalFileHandler;->init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 164
    return-void
.end method

.method private getBooleanProperty(Ljava/lang/String;Z)Z
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 348
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, property:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 358
    .end local p2
    :goto_8
    return p2

    .line 352
    .restart local p2
    :cond_9
    move v1, p2

    .line 353
    .local v1, result:Z
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 354
    const/4 v1, 0x1

    :cond_13
    :goto_13
    move p2, v1

    .line 358
    goto :goto_8

    .line 355
    :cond_15
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 356
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private getIntProperty(Ljava/lang/String;I)I
    .registers 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 369
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v2, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, property:Ljava/lang/String;
    move v1, p2

    .line 371
    .local v1, result:I
    if-eqz v0, :cond_d

    .line 373
    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result v1

    .line 378
    :cond_d
    :goto_d
    return v1

    .line 374
    :catch_e
    move-exception v2

    goto :goto_d
.end method

.method private getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v1, p1}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, property:Ljava/lang/String;
    if-nez v0, :cond_9

    .end local p2
    :goto_8
    return-object p2

    .restart local p2
    :cond_9
    move-object p2, v0

    goto :goto_8
.end method

.method private init(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .parameter "p"
    .parameter "a"
    .parameter "l"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->manager:Ljava/util/logging/LogManager;

    .line 170
    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->manager:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V

    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/seven/Z7/common/Z7LocalFileHandler;->initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 172
    invoke-direct {p0}, Lcom/seven/Z7/common/Z7LocalFileHandler;->initOutputFiles()V

    .line 173
    return-void
.end method

.method private initOutputFiles()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 178
    :goto_1
    iget v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->uniqueID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->uniqueID:I

    .line 180
    const/4 v2, 0x0

    .local v2, generation:I
    :goto_8
    iget v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    if-ge v2, v4, :cond_1c

    .line 182
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/seven/Z7/common/Z7LocalFileHandler;->parseFileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 184
    :cond_1c
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    .line 185
    sget-object v5, Lcom/seven/Z7/common/Z7LocalFileHandler;->allLocks:Ljava/util/Hashtable;

    monitor-enter v5

    .line 190
    :try_start_29
    sget-object v4, Lcom/seven/Z7/common/Z7LocalFileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 191
    monitor-exit v5

    goto :goto_1

    .line 219
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_35

    throw v4

    .line 193
    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7e

    iget-boolean v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->append:Z

    if-eqz v4, :cond_57

    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    iget v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->limit:I

    int-to-long v8, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_7e

    .line 194
    :cond_57
    iget v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    add-int/lit8 v3, v4, -0x1

    .local v3, i:I
    :goto_5b
    if-lez v3, :cond_7e

    .line 195
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 196
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 198
    :cond_6e
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    add-int/lit8 v6, v3, -0x1

    aget-object v4, v4, v6

    iget-object v6, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 194
    add-int/lit8 v3, v3, -0x1

    goto :goto_5b

    .line 201
    .end local v3           #i:I
    :cond_7e
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".lck"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, fileStream:Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 208
    .local v0, channel:Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v4

    iput-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->lock:Ljava/nio/channels/FileLock;

    .line 209
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->lock:Ljava/nio/channels/FileLock;
    :try_end_a4
    .catchall {:try_start_38 .. :try_end_a4} :catchall_35

    if-nez v4, :cond_ac

    .line 211
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_35
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_a9} :catch_db

    .line 215
    :goto_a9
    :try_start_a9
    monitor-exit v5

    goto/16 :goto_1

    .line 217
    :cond_ac
    sget-object v4, Lcom/seven/Z7/common/Z7LocalFileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v6, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    iget-object v7, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v4, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    monitor-exit v5
    :try_end_b6
    .catchall {:try_start_a9 .. :try_end_b6} :catchall_35

    .line 222
    new-instance v4, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->append:Z

    invoke-direct {v6, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    const/16 v7, 0x2000

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iget-object v6, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;J)V

    iput-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->output:Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;

    .line 225
    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->output:Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;

    invoke-virtual {p0, v4}, Lcom/seven/Z7/common/Z7LocalFileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 226
    return-void

    .line 212
    :catch_db
    move-exception v4

    goto :goto_a9
.end method

.method private initProperties(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 10
    .parameter "p"
    .parameter "a"
    .parameter "l"
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, className:Ljava/lang/String;
    if-nez p1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".pattern"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "%h/java%u.log"

    invoke-direct {p0, v1, v4}, Lcom/seven/Z7/common/Z7LocalFileHandler;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_25
    iput-object p1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    .line 234
    iget-object v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    if-eqz v1, :cond_35

    const-string v1, ""

    iget-object v4, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 236
    :cond_35
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "19=Pattern cannot be empty"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_3d
    if-nez p2, :cond_a3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".append"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/seven/Z7/common/Z7LocalFileHandler;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v1

    :goto_56
    iput-boolean v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->append:Z

    .line 240
    if-nez p4, :cond_a8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".count"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/seven/Z7/common/Z7LocalFileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    :goto_71
    iput v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    .line 241
    if-nez p3, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".limit"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/seven/Z7/common/Z7LocalFileHandler;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    :goto_8c
    iput v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->limit:I

    .line 242
    iget v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    if-ge v1, v2, :cond_b2

    move v1, v2

    :goto_93
    iput v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    .line 243
    iget v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->limit:I

    if-gez v1, :cond_b5

    move v1, v3

    :goto_9a
    iput v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->limit:I

    .line 244
    iget v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    new-array v1, v1, [Ljava/io/File;

    iput-object v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    .line 245
    return-void

    .line 238
    :cond_a3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_56

    .line 240
    :cond_a8
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_71

    .line 241
    :cond_ad
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8c

    .line 242
    :cond_b2
    iget v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    goto :goto_93

    .line 243
    :cond_b5
    iget v1, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->limit:I

    goto :goto_9a
.end method

.method private parseFileName(I)Ljava/lang/String;
    .registers 16
    .parameter "gen"

    .prologue
    const/16 v13, 0x25

    const/4 v10, 0x0

    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, cur:I
    const/4 v5, 0x0

    .line 278
    .local v5, next:I
    const/4 v2, 0x0

    .line 279
    .local v2, hasUniqueID:Z
    const/4 v1, 0x0

    .line 283
    .local v1, hasGeneration:Z
    const-string v11, "java.io.tmpdir"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, tempPath:Ljava/lang/String;
    if-nez v7, :cond_50

    move v8, v10

    .line 286
    .local v8, tempPathHasSepEnd:Z
    :goto_10
    const-string v11, "user.home"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, homePath:Ljava/lang/String;
    if-nez v3, :cond_57

    move v4, v10

    .line 289
    .local v4, homePathHasSepEnd:Z
    :goto_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v6, sb:Ljava/lang/StringBuilder;
    iget-object v10, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    const/16 v11, 0x2f

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    .line 292
    iget-object v10, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 293
    .local v9, value:[C
    :cond_30
    :goto_30
    iget-object v10, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10, v13, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-ltz v5, :cond_ac

    .line 294
    add-int/lit8 v5, v5, 0x1

    iget-object v10, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->pattern:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v5, v10, :cond_30

    .line 295
    aget-char v10, v9, v5

    sparse-switch v10, :sswitch_data_d8

    .line 324
    sub-int v10, v5, v0

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 326
    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    move v0, v5

    goto :goto_30

    .line 284
    .end local v3           #homePath:Ljava/lang/String;
    .end local v4           #homePathHasSepEnd:Z
    .end local v6           #sb:Ljava/lang/StringBuilder;
    .end local v8           #tempPathHasSepEnd:Z
    .end local v9           #value:[C
    :cond_50
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    goto :goto_10

    .line 287
    .restart local v3       #homePath:Ljava/lang/String;
    .restart local v8       #tempPathHasSepEnd:Z
    :cond_57
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_19

    .line 297
    .restart local v4       #homePathHasSepEnd:Z
    .restart local v6       #sb:Ljava/lang/StringBuilder;
    .restart local v9       #value:[C
    :sswitch_5e
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    const/4 v1, 0x1

    .line 299
    goto :goto_4c

    .line 301
    :sswitch_6b
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->uniqueID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    const/4 v2, 0x1

    .line 303
    goto :goto_4c

    .line 309
    :sswitch_7a
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    if-nez v8, :cond_4c

    .line 311
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 315
    :sswitch_8d
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    if-nez v4, :cond_4c

    .line 317
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 321
    :sswitch_a0
    sub-int v10, v5, v0

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 332
    :cond_ac
    array-length v10, v9

    sub-int/2addr v10, v0

    invoke-virtual {v6, v9, v0, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 334
    if-nez v1, :cond_c1

    iget v10, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    const/4 v11, 0x1

    if-le v10, v11, :cond_c1

    .line 335
    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    :cond_c1
    if-nez v2, :cond_d2

    iget v10, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->uniqueID:I

    if-lez v10, :cond_d2

    .line 339
    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->uniqueID:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 342
    :cond_d2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 295
    nop

    :sswitch_data_d8
    .sparse-switch
        0x25 -> :sswitch_a0
        0x67 -> :sswitch_5e
        0x68 -> :sswitch_8d
        0x74 -> :sswitch_7a
        0x75 -> :sswitch_6b
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 521
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 522
    sget-object v2, Lcom/seven/Z7/common/Z7LocalFileHandler;->allLocks:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :try_start_a
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->channel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 525
    .local v0, channel:Ljava/nio/channels/FileChannel;
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V

    .line 526
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 527
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".lck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_35} :catch_36

    .line 532
    .end local v0           #channel:Ljava/nio/channels/FileChannel;
    .end local v1           #file:Ljava/io/File;
    :goto_35
    return-void

    .line 529
    :catch_36
    move-exception v2

    goto :goto_35
.end method

.method findNextGeneration()V
    .registers 8

    .prologue
    .line 248
    invoke-super {p0}, Ljava/util/logging/StreamHandler;->close()V

    .line 249
    iget v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->count:I

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_7
    if-lez v1, :cond_2a

    .line 250
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 251
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 253
    :cond_1a
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 249
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 257
    :cond_2a
    :try_start_2a
    new-instance v2, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->files:[Ljava/io/File;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v2, v3}, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->output:Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_42} :catch_48

    .line 265
    :goto_42
    iget-object v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->output:Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;

    invoke-virtual {p0, v2}, Lcom/seven/Z7/common/Z7LocalFileHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 266
    return-void

    .line 260
    :catch_48
    move-exception v0

    .line 262
    .local v0, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/seven/Z7/common/Z7LocalFileHandler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v2

    const-string v3, "1A=Error happened when open log file."

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_42
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .registers 6
    .parameter "record"

    .prologue
    .line 541
    invoke-super {p0, p1}, Ljava/util/logging/StreamHandler;->publish(Ljava/util/logging/LogRecord;)V

    .line 542
    invoke-virtual {p0}, Lcom/seven/Z7/common/Z7LocalFileHandler;->flush()V

    .line 543
    iget v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->limit:I

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->output:Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;

    invoke-virtual {v0}, Lcom/seven/Z7/common/Z7LocalFileHandler$MeasureOutputStream;->getLength()J

    move-result-wide v0

    iget v2, p0, Lcom/seven/Z7/common/Z7LocalFileHandler;->limit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1f

    .line 544
    new-instance v0, Lcom/seven/Z7/common/Z7LocalFileHandler$1;

    invoke-direct {v0, p0}, Lcom/seven/Z7/common/Z7LocalFileHandler$1;-><init>(Lcom/seven/Z7/common/Z7LocalFileHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 551
    :cond_1f
    return-void
.end method
