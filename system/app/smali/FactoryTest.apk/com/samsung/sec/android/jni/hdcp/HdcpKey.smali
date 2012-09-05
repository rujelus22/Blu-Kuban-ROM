.class public Lcom/samsung/sec/android/jni/hdcp/HdcpKey;
.super Ljava/lang/Object;
.source "HdcpKey.java"


# static fields
.field private static m_bHdcpModuleLoaded:Z

.field private static m_bHdcpType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-boolean v0, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->m_bHdcpModuleLoaded:Z

    .line 25
    sput v0, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->m_bHdcpType:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-boolean v1, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->m_bHdcpModuleLoaded:Z

    if-nez v1, :cond_2f

    .line 49
    :try_start_8
    const-string v1, "/system/vsc/hatp/libhatp.so"

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 51
    const/4 v1, 0x1

    sput v1, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->m_bHdcpType:I

    .line 53
    sget v1, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->m_bHdcpType:I

    if-ne v1, v2, :cond_30

    invoke-static {}, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->isPreinstalledDevice()Z

    move-result v1

    if-nez v1, :cond_30

    .line 55
    const-string v1, "HATP"

    const-string v2, "Preinstalled hdcp module not found.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_21
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->m_bHdcpModuleLoaded:Z
    :try_end_24
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_24} :catch_38

    .line 68
    :goto_24
    sget-boolean v1, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->m_bHdcpModuleLoaded:Z

    if-nez v1, :cond_2f

    .line 70
    const-string v1, "HATP"

    const-string v2, "hatp initialize failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2f
    return-void

    .line 59
    :cond_30
    :try_start_30
    const-string v1, "HATP"

    const-string v2, "Success HdcpKey loading"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_30 .. :try_end_37} :catch_38

    goto :goto_21

    .line 63
    :catch_38
    move-exception v0

    .line 65
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HATP"

    const-string v2, "hatp Library Loading Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method public static isPreinstalledDevice()Z
    .registers 2

    .prologue
    .line 31
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libINVOKER.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public installKey(Landroid/content/Context;)I
    .registers 17
    .parameter "ctx"

    .prologue
    .line 86
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/misc/radio/hatp"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 89
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v12

    if-eqz v12, :cond_2e

    .line 91
    const-string v12, "HATP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Success setReadable : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_2e
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Ljava/io/File;->setExecutable(ZZ)Z

    move-result v12

    if-eqz v12, :cond_52

    .line 96
    const-string v12, "HATP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Success setExecutable : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_52
    const-string v12, "/data/data/com.android.phone"

    invoke-virtual {p0, v12}, Lcom/samsung/sec/android/jni/hdcp/HdcpKey;->installKey(Ljava/lang/String;)I

    move-result v11

    .line 102
    .local v11, ret:I
    const-string v9, "OK"

    .line 103
    .local v9, pOKMsg:Ljava/lang/String;
    const-string v5, "NG 1"

    .line 104
    .local v5, pFailMsg1:Ljava/lang/String;
    const-string v6, "NG 2"

    .line 105
    .local v6, pFailMsg2:Ljava/lang/String;
    const-string v7, "NG 3"

    .line 109
    .local v7, pFailMsg3:Ljava/lang/String;
    :try_start_60
    new-instance v4, Ljava/io/File;

    const-string v12, "check_result"

    invoke-direct {v4, v1, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v4, logFile:Ljava/io/File;
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 113
    .local v10, pWd:Ljava/io/FileOutputStream;
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v12

    if-eqz v12, :cond_90

    .line 115
    const-string v12, "HATP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Success setReadable : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_90
    const/4 v3, 0x0

    .line 120
    .local v3, len:I
    if-nez v11, :cond_bc

    .line 122
    move-object v8, v9

    .line 137
    .local v8, pMsg:Ljava/lang/String;
    :goto_94
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    .line 138
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 139
    .local v0, buf:[B
    const/4 v12, 0x0

    invoke-virtual {v10, v0, v12, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 140
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 143
    const-string v12, "HATP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "installKey log : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_bb} :catch_ca

    .line 152
    .end local v0           #buf:[B
    .end local v3           #len:I
    .end local v4           #logFile:Ljava/io/File;
    .end local v8           #pMsg:Ljava/lang/String;
    .end local v10           #pWd:Ljava/io/FileOutputStream;
    .end local v11           #ret:I
    :goto_bb
    return v11

    .line 124
    .restart local v3       #len:I
    .restart local v4       #logFile:Ljava/io/File;
    .restart local v10       #pWd:Ljava/io/FileOutputStream;
    .restart local v11       #ret:I
    :cond_bc
    const/16 v12, -0x61

    if-ne v11, v12, :cond_c2

    .line 126
    move-object v8, v5

    .restart local v8       #pMsg:Ljava/lang/String;
    goto :goto_94

    .line 128
    .end local v8           #pMsg:Ljava/lang/String;
    :cond_c2
    const/16 v12, -0x5d

    if-ne v11, v12, :cond_c8

    .line 130
    move-object v8, v6

    .restart local v8       #pMsg:Ljava/lang/String;
    goto :goto_94

    .line 134
    .end local v8           #pMsg:Ljava/lang/String;
    :cond_c8
    move-object v8, v7

    .restart local v8       #pMsg:Ljava/lang/String;
    goto :goto_94

    .line 147
    .end local v3           #len:I
    .end local v4           #logFile:Ljava/io/File;
    .end local v8           #pMsg:Ljava/lang/String;
    .end local v10           #pWd:Ljava/io/FileOutputStream;
    :catch_ca
    move-exception v2

    .line 148
    .local v2, e:Ljava/io/IOException;
    const-string v12, "HATP"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "File I/O Error"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "check_result"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v11, -0x1

    goto :goto_bb
.end method

.method public native installKey(Ljava/lang/String;)I
.end method
