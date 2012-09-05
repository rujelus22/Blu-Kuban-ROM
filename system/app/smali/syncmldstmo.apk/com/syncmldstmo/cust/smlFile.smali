.class public Lcom/syncmldstmo/cust/smlFile;
.super Ljava/lang/Object;
.source "smlFile.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static smlFileExist(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 16
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 19
    const/4 v1, 0x1

    .line 21
    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static smlFileRead(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7
    .parameter "path"

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, ObjIn:Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 52
    .local v3, obj:Ljava/lang/Object;
    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_21

    .line 53
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .local v1, ObjIn:Ljava/io/ObjectInputStream;
    :try_start_c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_48
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_4b

    move-result-object v3

    .line 63
    if-eqz v1, :cond_15

    .line 64
    :try_start_12
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_17

    :cond_15
    move-object v0, v1

    .line 71
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .end local v3           #obj:Ljava/lang/Object;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    :cond_16
    :goto_16
    return-object v3

    .line 66
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v3       #obj:Ljava/lang/Object;
    :catch_17
    move-exception v2

    .line 68
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    move-object v0, v1

    .line 70
    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_16

    .line 55
    .end local v2           #e:Ljava/io/IOException;
    :catch_21
    move-exception v2

    .line 57
    .local v2, e:Ljava/lang/Exception;
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_38

    .line 63
    if-eqz v0, :cond_16

    .line 64
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_16

    .line 66
    :catch_2f
    move-exception v2

    .line 68
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_16

    .line 61
    .end local v2           #e:Ljava/io/IOException;
    :catchall_38
    move-exception v4

    .line 63
    :goto_39
    if-eqz v0, :cond_3e

    .line 64
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 69
    :cond_3e
    :goto_3e
    throw v4

    .line 66
    :catch_3f
    move-exception v2

    .line 68
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_3e

    .line 61
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    :catchall_48
    move-exception v4

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_39

    .line 55
    .end local v0           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v1       #ObjIn:Ljava/io/ObjectInputStream;
    :catch_4b
    move-exception v2

    move-object v0, v1

    .end local v1           #ObjIn:Ljava/io/ObjectInputStream;
    .restart local v0       #ObjIn:Ljava/io/ObjectInputStream;
    goto :goto_22
.end method

.method public static smlFileWrite(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .parameter "path"
    .parameter "data"

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, ObjOut:Ljava/io/ObjectOutputStream;
    const/4 v3, 0x0

    .line 81
    .local v3, fOut:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_27

    .line 82
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .local v4, fOut:Ljava/io/FileOutputStream;
    :try_start_7
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_5f

    .line 83
    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .local v1, ObjOut:Ljava/io/ObjectOutputStream;
    :try_start_c
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_5b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_62

    .line 93
    if-eqz v4, :cond_14

    .line 94
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 95
    :cond_14
    if-eqz v1, :cond_19

    .line 96
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_19} :catch_1c

    :cond_19
    move-object v3, v4

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 103
    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    :cond_1b
    :goto_1b
    return-void

    .line 98
    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    :catch_1c
    move-exception v2

    .line 100
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    move-object v0, v1

    .line 102
    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    goto :goto_1b

    .line 85
    .end local v2           #e:Ljava/io/IOException;
    :catch_27
    move-exception v2

    .line 87
    .local v2, e:Ljava/lang/Exception;
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_43

    .line 93
    if-eqz v3, :cond_34

    .line 94
    :try_start_31
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 95
    :cond_34
    if-eqz v0, :cond_1b

    .line 96
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_1b

    .line 98
    :catch_3a
    move-exception v2

    .line 100
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_1b

    .line 91
    .end local v2           #e:Ljava/io/IOException;
    :catchall_43
    move-exception v5

    .line 93
    :goto_44
    if-eqz v3, :cond_49

    .line 94
    :try_start_46
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 95
    :cond_49
    if-eqz v0, :cond_4e

    .line 96
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4e} :catch_4f

    .line 101
    :cond_4e
    :goto_4e
    throw v5

    .line 98
    :catch_4f
    move-exception v2

    .line 100
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_4e

    .line 91
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    :catchall_58
    move-exception v5

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    goto :goto_44

    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    :catchall_5b
    move-exception v5

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    goto :goto_44

    .line 85
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    :catch_5f
    move-exception v2

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    goto :goto_28

    .end local v0           #ObjOut:Ljava/io/ObjectOutputStream;
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v1       #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v4       #fOut:Ljava/io/FileOutputStream;
    :catch_62
    move-exception v2

    move-object v3, v4

    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    move-object v0, v1

    .end local v1           #ObjOut:Ljava/io/ObjectOutputStream;
    .restart local v0       #ObjOut:Ljava/io/ObjectOutputStream;
    goto :goto_28
.end method
