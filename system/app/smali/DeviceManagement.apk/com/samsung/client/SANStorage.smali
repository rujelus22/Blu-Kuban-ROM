.class public Lcom/samsung/client/SANStorage;
.super Ljava/lang/Object;
.source "SANStorage.java"


# static fields
.field private static fileExists:Z

.field public static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/client/TslcmnSan$TslSanMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/SANStorage;->fileExists:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized append_san_msg(Landroid/content/Context;Lcom/samsung/client/TslcmnSan$TslSanMsg;)I
    .registers 14
    .parameter "context"
    .parameter "add"

    .prologue
    const/4 v7, 0x1

    .line 41
    const-class v8, Lcom/samsung/client/SANStorage;

    monitor-enter v8

    :try_start_4
    sget-boolean v9, Lcom/samsung/client/SANStorage;->fileExists:Z

    if-nez v9, :cond_28

    .line 42
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->isFileExists(Landroid/content/Context;)Z

    move-result v9

    sput-boolean v9, Lcom/samsung/client/SANStorage;->fileExists:Z

    .line 43
    const-string v9, "SANStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fileExists: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-boolean v11, Lcom/samsung/client/SANStorage;->fileExists:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_28
    sget-boolean v9, Lcom/samsung/client/SANStorage;->fileExists:Z
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_a6

    if-nez v9, :cond_44

    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 50
    .local v3, out:Ljava/io/ObjectOutputStream;
    :try_start_2e
    const-string v9, "san_storage"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 51
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3a} :catch_54

    .line 52
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .local v4, out:Ljava/io/ObjectOutputStream;
    const/4 v9, 0x0

    :try_start_3b
    invoke-virtual {v4, v9}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 53
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_a6
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_ac

    .line 58
    const/4 v9, 0x1

    :try_start_42
    sput-boolean v9, Lcom/samsung/client/SANStorage;->fileExists:Z

    .line 62
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v4           #out:Ljava/io/ObjectOutputStream;
    :cond_44
    invoke-virtual {p1}, Lcom/samsung/client/TslcmnSan$TslSanMsg;->isErroneous()Z

    move-result v9

    if-eqz v9, :cond_60

    .line 63
    const-string v7, "SANStorage"

    const-string v9, "Message is Erroneous"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_a6

    .line 64
    const/4 v7, -0x2

    .line 94
    :goto_52
    monitor-exit v8

    return v7

    .line 54
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :catch_54
    move-exception v0

    .line 55
    .local v0, ex:Ljava/lang/Exception;
    :goto_55
    :try_start_55
    const-string v7, "SANStorage"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v7, -0x1

    goto :goto_52

    .line 67
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    :cond_60
    sget-object v9, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    if-nez v9, :cond_67

    .line 68
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->load_san_msgs(Landroid/content/Context;)I

    .line 71
    :cond_67
    const/4 v5, 0x0

    .line 72
    .local v5, replaced:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_69
    sget-object v9, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_9b

    .line 73
    sget-object v9, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/client/TslcmnSan$TslSanMsg;

    .line 75
    .local v6, tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    invoke-virtual {p1, v6}, Lcom/samsung/client/TslcmnSan$TslSanMsg;->isDuplicate(Lcom/samsung/client/TslcmnSan$TslSanMsg;)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 76
    const-string v7, "SANStorage"

    const-string v9, "Message is a duplicate"

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v7, -0x3

    goto :goto_52

    .line 81
    :cond_88
    iget v9, p1, Lcom/samsung/client/TslcmnSan$TslSanMsg;->sessionId:I

    iget v10, v6, Lcom/samsung/client/TslcmnSan$TslSanMsg;->sessionId:I

    if-ne v9, v10, :cond_a9

    .line 82
    sget-object v9, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v9, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/4 v5, 0x1

    .line 84
    const-string v9, "SANStorage"

    const-string v10, "Message is replaced"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v6           #tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :cond_9b
    if-nez v5, :cond_a2

    .line 90
    sget-object v9, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_a2
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->unload_san_msgs(Landroid/content/Context;)I
    :try_end_a5
    .catchall {:try_start_55 .. :try_end_a5} :catchall_a6

    goto :goto_52

    .line 41
    .end local v2           #i:I
    .end local v5           #replaced:Z
    :catchall_a6
    move-exception v7

    monitor-exit v8

    throw v7

    .line 72
    .restart local v2       #i:I
    .restart local v5       #replaced:Z
    .restart local v6       #tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    .line 54
    .end local v2           #i:I
    .end local v5           #replaced:Z
    .end local v6           #tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/ObjectOutputStream;
    :catch_ac
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    goto :goto_55
.end method

.method public static declared-synchronized isEmpty(Landroid/content/Context;)Z
    .registers 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 150
    const-class v6, Lcom/samsung/client/SANStorage;

    monitor-enter v6

    const/4 v1, 0x0

    .line 151
    .local v1, empty:Z
    const/4 v2, 0x0

    .line 152
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 154
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_7
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->isFileExists(Landroid/content/Context;)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_42

    move-result v7

    if-nez v7, :cond_f

    .line 177
    :goto_d
    monitor-exit v6

    return v5

    .line 158
    :cond_f
    :try_start_f
    sget-object v7, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;
    :try_end_11
    .catchall {:try_start_f .. :try_end_11} :catchall_42

    if-nez v7, :cond_3b

    .line 160
    :try_start_13
    const-string v7, "san_storage"

    invoke-virtual {p0, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 161
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_42
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_2b

    .line 162
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v7

    if-nez v7, :cond_25

    .line 163
    const/4 v1, 0x1

    .line 165
    :cond_25
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_48
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_45

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :goto_29
    move v5, v1

    .line 177
    goto :goto_d

    .line 166
    :catch_2b
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    :goto_2c
    :try_start_2c
    const-string v7, "SANStorage"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_42

    .line 169
    :try_start_35
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_42
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_d

    .line 172
    :catch_39
    move-exception v5

    goto :goto_29

    .line 175
    .end local v0           #e:Ljava/io/IOException;
    :cond_3b
    :try_start_3b
    sget-object v5, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_42

    move-result v5

    goto :goto_d

    .line 150
    :catchall_42
    move-exception v5

    :goto_43
    monitor-exit v6

    throw v5

    .line 166
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_45
    move-exception v0

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_2c

    .line 150
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catchall_48
    move-exception v5

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_43
.end method

.method public static isFileExists(Landroid/content/Context;)Z
    .registers 9
    .parameter "context"

    .prologue
    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, files:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_7
    if-ge v3, v4, :cond_30

    aget-object v1, v0, v3

    .line 29
    .local v1, file:Ljava/lang/String;
    const-string v5, "SANStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v5, "san_storage"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 31
    const/4 v5, 0x1

    .line 35
    .end local v1           #file:Ljava/lang/String;
    :goto_2c
    return v5

    .line 28
    .restart local v1       #file:Ljava/lang/String;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 35
    .end local v1           #file:Ljava/lang/String;
    :cond_30
    const/4 v5, 0x0

    goto :goto_2c
.end method

.method public static declared-synchronized load_san_msgs(Landroid/content/Context;)I
    .registers 11
    .parameter "context"

    .prologue
    const/4 v7, -0x1

    .line 99
    const-class v8, Lcom/samsung/client/SANStorage;

    monitor-enter v8

    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_51

    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 103
    .local v3, in:Ljava/io/ObjectInputStream;
    :try_start_d
    const-string v6, "san_storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 104
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_51
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_18} :catch_40

    .line 105
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .local v4, in:Ljava/io/ObjectInputStream;
    :try_start_18
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 106
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, v5, :cond_2d

    .line 107
    sget-object v9, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/client/TslcmnSan$TslSanMsg;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 109
    :cond_2d
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_51
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_30} :catch_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_30} :catch_54

    move-object v3, v4

    .line 122
    .end local v2           #i:I
    .end local v4           #in:Ljava/io/ObjectInputStream;
    .end local v5           #size:I
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    :goto_31
    const/4 v6, 0x1

    :goto_32
    monitor-exit v8

    return v6

    .line 110
    :catch_34
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/IOException;
    :goto_35
    :try_start_35
    const-string v6, "SANStorage"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v6, v7

    .line 112
    goto :goto_32

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    :catch_40
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :goto_41
    const-string v6, "SANStorage"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_51

    .line 116
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4f

    move v6, v7

    .line 117
    goto :goto_32

    .line 119
    :catch_4f
    move-exception v6

    goto :goto_31

    .line 99
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v3           #in:Ljava/io/ObjectInputStream;
    :catchall_51
    move-exception v6

    monitor-exit v8

    throw v6

    .line 113
    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_54
    move-exception v0

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_41

    .line 110
    .end local v3           #in:Ljava/io/ObjectInputStream;
    .restart local v4       #in:Ljava/io/ObjectInputStream;
    :catch_57
    move-exception v0

    move-object v3, v4

    .end local v4           #in:Ljava/io/ObjectInputStream;
    .restart local v3       #in:Ljava/io/ObjectInputStream;
    goto :goto_35
.end method

.method public static declared-synchronized next_san_msg(Landroid/content/Context;)Lcom/samsung/client/TslcmnSan$TslSanMsg;
    .registers 5
    .parameter "context"

    .prologue
    .line 182
    const-class v2, Lcom/samsung/client/SANStorage;

    monitor-enter v2

    const/4 v0, 0x0

    .line 183
    .local v0, tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :try_start_4
    sget-object v1, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 184
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->load_san_msgs(Landroid/content/Context;)I

    .line 186
    :cond_b
    sget-object v1, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 187
    sget-object v1, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    check-cast v0, Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1e

    .line 189
    .restart local v0       #tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :cond_1c
    monitor-exit v2

    return-object v0

    .line 182
    .end local v0           #tmp:Lcom/samsung/client/TslcmnSan$TslSanMsg;
    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized remove_san_msg(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 193
    const-class v1, Lcom/samsung/client/SANStorage;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 194
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->load_san_msgs(Landroid/content/Context;)I

    .line 196
    :cond_a
    sget-object v0, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 197
    sget-object v0, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 198
    invoke-static {p0}, Lcom/samsung/client/SANStorage;->unload_san_msgs(Landroid/content/Context;)I
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    .line 200
    :cond_1b
    monitor-exit v1

    return-void

    .line 193
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unload_san_msgs(Landroid/content/Context;)I
    .registers 10
    .parameter "context"

    .prologue
    .line 127
    const-class v7, Lcom/samsung/client/SANStorage;

    monitor-enter v7

    const/4 v1, 0x0

    .line 128
    .local v1, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 130
    .local v3, out:Ljava/io/ObjectOutputStream;
    :try_start_5
    const-string v6, "san_storage"

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 131
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_3f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_33

    .line 132
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .local v4, out:Ljava/io/ObjectOutputStream;
    :try_start_11
    sget-object v6, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 133
    .local v5, size:I
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 134
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    if-ge v2, v5, :cond_29

    .line 135
    sget-object v6, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 137
    :cond_29
    const/4 v6, 0x0

    sput-object v6, Lcom/samsung/client/SANStorage;->list:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_45
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2f} :catch_42

    .line 144
    const/4 v6, 0x1

    move-object v3, v4

    .end local v2           #i:I
    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .end local v5           #size:I
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    :goto_31
    monitor-exit v7

    return v6

    .line 139
    :catch_33
    move-exception v0

    .line 140
    .local v0, e:Ljava/io/IOException;
    :goto_34
    :try_start_34
    const-string v6, "SANStorage"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3f

    .line 141
    const/4 v6, -0x1

    goto :goto_31

    .line 127
    .end local v0           #e:Ljava/io/IOException;
    :catchall_3f
    move-exception v6

    :goto_40
    monitor-exit v7

    throw v6

    .line 139
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v4       #out:Ljava/io/ObjectOutputStream;
    :catch_42
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    goto :goto_34

    .line 127
    .end local v3           #out:Ljava/io/ObjectOutputStream;
    .restart local v4       #out:Ljava/io/ObjectOutputStream;
    :catchall_45
    move-exception v6

    move-object v3, v4

    .end local v4           #out:Ljava/io/ObjectOutputStream;
    .restart local v3       #out:Ljava/io/ObjectOutputStream;
    goto :goto_40
.end method
