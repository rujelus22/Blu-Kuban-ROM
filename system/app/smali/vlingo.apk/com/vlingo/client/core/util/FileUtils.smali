.class public Lcom/vlingo/client/core/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final inputStreamToFile(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 8
    .parameter "is"
    .parameter "outFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 149
    const/16 v4, 0x1f4

    new-array v0, v4, [B

    .line 150
    .local v0, buf:[B
    const/4 v2, 0x0

    .line 153
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_2d

    .line 154
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 155
    .local v1, bytesRead:I
    :goto_b
    :try_start_b
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_21

    .line 157
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_17

    goto :goto_b

    .line 161
    :catchall_17
    move-exception v4

    move-object v2, v3

    .end local v1           #bytesRead:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_19
    if-eqz v2, :cond_1f

    .line 162
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_2b

    .line 163
    :goto_1e
    const/4 v2, 0x0

    .line 165
    :cond_1f
    const/4 v0, 0x0

    throw v4

    .line 161
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bytesRead:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_21
    if-eqz v3, :cond_2f

    .line 162
    :try_start_23
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_29

    .line 163
    :goto_26
    const/4 v2, 0x0

    .line 165
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_27
    const/4 v0, 0x0

    .line 167
    return-void

    .line 162
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_29
    move-exception v4

    goto :goto_26

    .end local v1           #bytesRead:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2b
    move-exception v5

    goto :goto_1e

    .line 161
    :catchall_2d
    move-exception v4

    goto :goto_19

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bytesRead:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_2f
    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_27
.end method

.method public static final readFile(Ljava/lang/String;)[B
    .registers 11
    .parameter "file"

    .prologue
    const/16 v7, 0x1f4

    .line 36
    const/4 v5, 0x0

    .line 37
    .local v5, is:Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 38
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 39
    .local v3, data:[B
    new-array v1, v7, [B

    .line 40
    .local v1, buf:[B
    const/4 v2, 0x0

    .line 46
    .local v2, bytesRead:I
    :try_start_c
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_6e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_96

    .line 47
    .end local v5           #is:Ljava/io/FileInputStream;
    .local v6, is:Ljava/io/FileInputStream;
    :goto_11
    :try_start_11
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2d

    .line 49
    const/4 v7, 0x0

    invoke-virtual {v0, v1, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_93
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 54
    :catch_1d
    move-exception v7

    move-object v5, v6

    .line 60
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :goto_1f
    if-eqz v5, :cond_25

    .line 62
    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_58

    .line 66
    :goto_24
    const/4 v5, 0x0

    .line 68
    :cond_25
    if-eqz v0, :cond_2b

    .line 70
    :try_start_27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_63

    .line 74
    :goto_2a
    const/4 v0, 0x0

    .line 85
    :cond_2b
    const/4 v1, 0x0

    .line 87
    :goto_2c
    return-object v3

    .line 52
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_93
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_1d

    move-result-object v3

    .line 60
    if-eqz v6, :cond_98

    .line 62
    :try_start_36
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_42

    .line 66
    :goto_39
    const/4 v5, 0x0

    .line 68
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :goto_3a
    if-eqz v0, :cond_40

    .line 70
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_4d

    .line 74
    :goto_3f
    const/4 v0, 0x0

    .line 85
    :cond_40
    const/4 v1, 0x0

    .line 86
    goto :goto_2c

    .line 63
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catch_42
    move-exception v4

    .line 64
    .local v4, ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 71
    .end local v4           #ex:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    :catch_4d
    move-exception v4

    .line 72
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 63
    .end local v4           #ex:Ljava/io/IOException;
    :catch_58
    move-exception v4

    .line 64
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 71
    .end local v4           #ex:Ljava/io/IOException;
    :catch_63
    move-exception v4

    .line 72
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 60
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_6e
    move-exception v7

    :goto_6f
    if-eqz v5, :cond_75

    .line 62
    :try_start_71
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_7d

    .line 66
    :goto_74
    const/4 v5, 0x0

    .line 68
    :cond_75
    if-eqz v0, :cond_7b

    .line 70
    :try_start_77
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_88

    .line 74
    :goto_7a
    const/4 v0, 0x0

    .line 85
    :cond_7b
    const/4 v1, 0x0

    throw v7

    .line 63
    :catch_7d
    move-exception v4

    .line 64
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 71
    .end local v4           #ex:Ljava/io/IOException;
    :catch_88
    move-exception v4

    .line 72
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v8, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 60
    .end local v4           #ex:Ljava/io/IOException;
    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :catchall_93
    move-exception v7

    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_6f

    .line 54
    :catch_96
    move-exception v7

    goto :goto_1f

    .end local v5           #is:Ljava/io/FileInputStream;
    .restart local v6       #is:Ljava/io/FileInputStream;
    :cond_98
    move-object v5, v6

    .end local v6           #is:Ljava/io/FileInputStream;
    .restart local v5       #is:Ljava/io/FileInputStream;
    goto :goto_3a
.end method

.method public static final readResource(Ljava/lang/String;)[B
    .registers 10
    .parameter "resource"

    .prologue
    const/16 v6, 0x1f4

    .line 93
    const/4 v5, 0x0

    .line 94
    .local v5, is:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 95
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 96
    .local v3, data:[B
    new-array v1, v6, [B

    .line 97
    .local v1, buf:[B
    const/4 v2, 0x0

    .line 101
    .local v2, bytesRead:I
    :try_start_c
    const-class v6, Ljava/lang/Class;

    invoke-virtual {v6, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_96
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_45

    move-result-object v5

    .line 102
    if-nez v5, :cond_39

    .line 103
    const/4 v6, 0x0

    .line 117
    if-eqz v5, :cond_1b

    .line 119
    :try_start_17
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_23

    .line 123
    :goto_1a
    const/4 v5, 0x0

    .line 125
    :cond_1b
    if-eqz v0, :cond_21

    .line 127
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2e

    .line 131
    :goto_20
    const/4 v0, 0x0

    .line 133
    :cond_21
    const/4 v1, 0x0

    .line 135
    :goto_22
    return-object v6

    .line 120
    :catch_23
    move-exception v4

    .line 121
    .local v4, ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 128
    .end local v4           #ex:Ljava/io/IOException;
    :catch_2e
    move-exception v4

    .line 129
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 104
    .end local v4           #ex:Ljava/io/IOException;
    :cond_39
    :goto_39
    :try_start_39
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_55

    .line 106
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_96
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_44} :catch_45

    goto :goto_39

    .line 111
    :catch_45
    move-exception v6

    .line 117
    if-eqz v5, :cond_4c

    .line 119
    :try_start_48
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_80

    .line 123
    :goto_4b
    const/4 v5, 0x0

    .line 125
    :cond_4c
    if-eqz v0, :cond_52

    .line 127
    :try_start_4e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_8b

    .line 131
    :goto_51
    const/4 v0, 0x0

    .line 133
    :cond_52
    const/4 v1, 0x0

    :goto_53
    move-object v6, v3

    .line 135
    goto :goto_22

    .line 109
    :cond_55
    :try_start_55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 110
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_96
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_45

    move-result-object v3

    .line 117
    if-eqz v5, :cond_62

    .line 119
    :try_start_5e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_6a

    .line 123
    :goto_61
    const/4 v5, 0x0

    .line 125
    :cond_62
    if-eqz v0, :cond_68

    .line 127
    :try_start_64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_75

    .line 131
    :goto_67
    const/4 v0, 0x0

    .line 133
    :cond_68
    const/4 v1, 0x0

    .line 134
    goto :goto_53

    .line 120
    :catch_6a
    move-exception v4

    .line 121
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 128
    .end local v4           #ex:Ljava/io/IOException;
    :catch_75
    move-exception v4

    .line 129
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 120
    .end local v4           #ex:Ljava/io/IOException;
    :catch_80
    move-exception v4

    .line 121
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 128
    .end local v4           #ex:Ljava/io/IOException;
    :catch_8b
    move-exception v4

    .line 129
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v6, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 117
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_96
    move-exception v6

    if-eqz v5, :cond_9d

    .line 119
    :try_start_99
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_a5

    .line 123
    :goto_9c
    const/4 v5, 0x0

    .line 125
    :cond_9d
    if-eqz v0, :cond_a3

    .line 127
    :try_start_9f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_b0

    .line 131
    :goto_a2
    const/4 v0, 0x0

    .line 133
    :cond_a3
    const/4 v1, 0x0

    throw v6

    .line 120
    :catch_a5
    move-exception v4

    .line 121
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 128
    .end local v4           #ex:Ljava/io/IOException;
    :catch_b0
    move-exception v4

    .line 129
    .restart local v4       #ex:Ljava/io/IOException;
    const-string v7, "VLG_EXCEPTION"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2
.end method
