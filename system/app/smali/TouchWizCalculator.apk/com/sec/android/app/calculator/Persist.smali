.class Lcom/sec/android/app/calculator/Persist;
.super Ljava/lang/Object;
.source "Persist.java"


# instance fields
.field history:Lcom/sec/android/app/calculator/History;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/sec/android/app/calculator/History;

    invoke-direct {v0}, Lcom/sec/android/app/calculator/History;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;

    .line 41
    iput-object p1, p0, Lcom/sec/android/app/calculator/Persist;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/calculator/Persist;->load()V

    .line 43
    return-void
.end method

.method private load()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 50
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_3
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v6, p0, Lcom/sec/android/app/calculator/Persist;->mContext:Landroid/content/Context;

    const-string v7, "calculator.data"

    invoke-virtual {v6, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_ae
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_12} :catch_d9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_12} :catch_7c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_12} :catch_95

    .line 51
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_12
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_c4
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_17} :catch_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_d2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_cb

    .line 52
    .end local v1           #in:Ljava/io/DataInputStream;
    .local v2, in:Ljava/io/DataInputStream;
    :try_start_17
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 53
    .local v5, version:I
    if-le v5, v8, :cond_52

    .line 54
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; expected "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_41
    .catchall {:try_start_17 .. :try_end_41} :catchall_c7
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_41} :catch_41
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_41} :catch_d5
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_41} :catch_ce

    .line 59
    .end local v5           #version:I
    :catch_41
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 60
    .end local v4           #is:Ljava/io/InputStream;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_ae

    .line 68
    if-eqz v1, :cond_4c

    .line 70
    :try_start_49
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_72

    .line 75
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_4c
    :goto_4c
    if-eqz v3, :cond_51

    .line 77
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_77

    .line 83
    :cond_51
    :goto_51
    return-void

    .line 57
    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #version:I
    :cond_52
    :try_start_52
    new-instance v6, Lcom/sec/android/app/calculator/History;

    invoke-direct {v6, v5, v2}, Lcom/sec/android/app/calculator/History;-><init>(ILjava/io/DataInput;)V

    iput-object v6, p0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;
    :try_end_59
    .catchall {:try_start_52 .. :try_end_59} :catchall_c7
    .catch Ljava/lang/NullPointerException; {:try_start_52 .. :try_end_59} :catch_41
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_59} :catch_d5
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_59} :catch_ce

    .line 68
    if-eqz v2, :cond_5e

    .line 70
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_66

    .line 75
    :cond_5e
    :goto_5e
    if-eqz v4, :cond_e0

    .line 77
    :try_start_60
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6b

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 80
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_51

    .line 71
    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_66
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5e

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    :catch_6b
    move-exception v0

    .line 79
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .line 80
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_51

    .line 71
    .end local v5           #version:I
    .local v0, e:Ljava/lang/NullPointerException;
    :catch_72
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4c

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    :catch_77
    move-exception v0

    .line 79
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 62
    .end local v0           #e:Ljava/io/IOException;
    :catch_7c
    move-exception v0

    .line 63
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_7d
    :try_start_7d
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_ae

    .line 68
    if-eqz v1, :cond_85

    .line 70
    :try_start_82
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_90

    .line 75
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_85
    :goto_85
    if-eqz v3, :cond_51

    .line 77
    :try_start_87
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_51

    .line 78
    :catch_8b
    move-exception v0

    .line 79
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 71
    .local v0, e:Ljava/io/FileNotFoundException;
    :catch_90
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_85

    .line 64
    .end local v0           #e:Ljava/io/IOException;
    :catch_95
    move-exception v0

    .line 66
    .restart local v0       #e:Ljava/io/IOException;
    :goto_96
    :try_start_96
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_ae

    .line 68
    if-eqz v1, :cond_9e

    .line 70
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a9

    .line 75
    :cond_9e
    :goto_9e
    if-eqz v3, :cond_51

    .line 77
    :try_start_a0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_51

    .line 78
    :catch_a4
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 71
    :catch_a9
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9e

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    :catchall_ae
    move-exception v6

    :goto_af
    if-eqz v1, :cond_b4

    .line 70
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_ba

    .line 75
    :cond_b4
    :goto_b4
    if-eqz v3, :cond_b9

    .line 77
    :try_start_b6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bf

    .line 80
    :cond_b9
    :goto_b9
    throw v6

    .line 71
    :catch_ba
    move-exception v0

    .line 72
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b4

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    :catch_bf
    move-exception v0

    .line 79
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b9

    .line 68
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_c4
    move-exception v6

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_af

    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_c7
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_af

    .line 64
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_cb
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_96

    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_ce
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_96

    .line 62
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_d2
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_7d

    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_d5
    move-exception v0

    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_7d

    .line 59
    :catch_d9
    move-exception v0

    goto/16 :goto_44

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_dc
    move-exception v0

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto/16 :goto_44

    .end local v1           #in:Ljava/io/DataInputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #version:I
    :cond_e0
    move-object v1, v2

    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto/16 :goto_51
.end method


# virtual methods
.method save()V
    .registers 9

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, os:Ljava/io/OutputStream;
    const/4 v3, 0x0

    .line 90
    .local v3, out:Ljava/io/DataOutputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/sec/android/app/calculator/Persist;->mContext:Landroid/content/Context;

    const-string v6, "calculator.data"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_2d

    .line 91
    .end local v1           #os:Ljava/io/OutputStream;
    .local v2, os:Ljava/io/OutputStream;
    :try_start_12
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_3c

    .line 92
    .end local v3           #out:Ljava/io/DataOutputStream;
    .local v4, out:Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_18
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    iget-object v5, p0, Lcom/sec/android/app/calculator/Persist;->history:Lcom/sec/android/app/calculator/History;

    invoke-virtual {v5, v4}, Lcom/sec/android/app/calculator/History;->write(Ljava/io/DataOutput;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_3f

    move-object v3, v4

    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    move-object v1, v2

    .line 99
    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    :goto_22
    if-eqz v3, :cond_27

    .line 101
    :try_start_24
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_32

    .line 107
    :cond_27
    :goto_27
    if-eqz v1, :cond_2c

    .line 109
    :try_start_29
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_37

    .line 115
    :cond_2c
    :goto_2c
    return-void

    .line 94
    :catch_2d
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    :goto_2e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 102
    .end local v0           #e:Ljava/io/IOException;
    :catch_32
    move-exception v0

    .line 103
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 110
    .end local v0           #e:Ljava/io/IOException;
    :catch_37
    move-exception v0

    .line 111
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 94
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #os:Ljava/io/OutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    :catch_3c
    move-exception v0

    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2e

    .end local v1           #os:Ljava/io/OutputStream;
    .end local v3           #out:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/OutputStream;
    .restart local v4       #out:Ljava/io/DataOutputStream;
    :catch_3f
    move-exception v0

    move-object v3, v4

    .end local v4           #out:Ljava/io/DataOutputStream;
    .restart local v3       #out:Ljava/io/DataOutputStream;
    move-object v1, v2

    .end local v2           #os:Ljava/io/OutputStream;
    .restart local v1       #os:Ljava/io/OutputStream;
    goto :goto_2e
.end method
