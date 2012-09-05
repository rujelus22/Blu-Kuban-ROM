.class public Lcom/google/android/gsf/checkin/ServiceDumpSys;
.super Ljava/lang/Object;
.source "ServiceDumpSys.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpServices(Ljava/util/Map;Landroid/os/DropBoxManager;Ljava/io/File;)V
    .registers 15
    .parameter
    .parameter "dropbox"
    .parameter "temp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/DropBoxManager;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ef

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 53
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    .local v4, name:Ljava/lang/String;
    const-string v9, "dumpsys:"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3b

    .line 55
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad service key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 58
    :cond_3b
    const-string v9, "dumpsys:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 59
    .local v7, service:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 60
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_8b

    const/4 v9, 0x0

    new-array v0, v9, [Ljava/lang/String;

    .line 61
    .local v0, args:[Ljava/lang/String;
    :goto_54
    const/4 v5, 0x0

    .line 63
    .local v5, output:Ljava/io/FileOutputStream;
    :try_start_55
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_e4
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_c1

    .line 64
    .end local v5           #output:Ljava/io/FileOutputStream;
    .local v6, output:Ljava/io/FileOutputStream;
    :try_start_5a
    const-string v9, "ServiceDumpSys"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumping service ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-static {v7, v9, v0}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_7f
    .catchall {:try_start_5a .. :try_end_7f} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_7f} :catch_f3

    move-result v9

    if-nez v9, :cond_98

    .line 70
    if-eqz v6, :cond_8

    :try_start_84
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8

    :catch_88
    move-exception v9

    goto/16 :goto_8

    .line 60
    .end local v0           #args:[Ljava/lang/String;
    .end local v6           #output:Ljava/io/FileOutputStream;
    :cond_8b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "\\s+"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    .line 70
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :cond_98
    if-eqz v6, :cond_9d

    :try_start_9a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_eb

    .line 74
    :cond_9d
    :goto_9d
    const/4 v9, 0x2

    :try_start_9e
    invoke-virtual {p1, v4, p2, v9}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a4} :catch_a6

    goto/16 :goto_8

    .line 76
    :catch_a6
    move-exception v1

    .line 77
    .local v1, e:Ljava/io/IOException;
    const-string v9, "ServiceDumpSys"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t log service dump: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 66
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    :catch_c1
    move-exception v1

    .line 67
    .restart local v1       #e:Ljava/io/IOException;
    :goto_c2
    :try_start_c2
    const-string v9, "ServiceDumpSys"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t dump service: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_c2 .. :try_end_da} :catchall_e4

    .line 70
    if-eqz v5, :cond_8

    :try_start_dc
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_e1

    goto/16 :goto_8

    :catch_e1
    move-exception v9

    goto/16 :goto_8

    .end local v1           #e:Ljava/io/IOException;
    :catchall_e4
    move-exception v9

    :goto_e5
    if-eqz v5, :cond_ea

    :try_start_e7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ed

    :cond_ea
    :goto_ea
    throw v9

    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :catch_eb
    move-exception v9

    goto :goto_9d

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    :catch_ed
    move-exception v10

    goto :goto_ea

    .line 80
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #output:Ljava/io/FileOutputStream;
    .end local v7           #service:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_ef
    return-void

    .line 70
    .restart local v0       #args:[Ljava/lang/String;
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    .restart local v7       #service:Ljava/lang/String;
    .restart local v8       #value:Ljava/lang/String;
    :catchall_f0
    move-exception v9

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    goto :goto_e5

    .line 66
    .end local v5           #output:Ljava/io/FileOutputStream;
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :catch_f3
    move-exception v1

    move-object v5, v6

    .end local v6           #output:Ljava/io/FileOutputStream;
    .restart local v5       #output:Ljava/io/FileOutputStream;
    goto :goto_c2
.end method
