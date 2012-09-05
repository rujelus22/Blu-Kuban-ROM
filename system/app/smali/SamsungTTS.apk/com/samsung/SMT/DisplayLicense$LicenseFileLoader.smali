.class Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;
.super Ljava/lang/Object;
.source "DisplayLicense.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/SMT/DisplayLicense;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseFileLoader"
.end annotation


# static fields
.field public static final STATUS_EMPTY_FILE:I = 0x3

.field public static final STATUS_FINAL_ERROR:I = 0x4

.field public static final STATUS_NOT_FOUND:I = 0x1

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_READ_ERROR:I = 0x2


# instance fields
.field private m_oHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/samsung/SMT/DisplayLicense;


# direct methods
.method public constructor <init>(Lcom/samsung/SMT/DisplayLicense;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "oHandler"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;->this$0:Lcom/samsung/SMT/DisplayLicense;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;->m_oHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/16 v8, 0x800

    .line 68
    const/4 v3, 0x0

    .line 70
    .local v3, iStatus:I
    const/4 v4, 0x0

    .line 71
    .local v4, oInputStream:Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 75
    .local v7, oStringBuilder:Ljava/lang/StringBuilder;
    const/16 v8, 0x800

    :try_start_b
    new-array v0, v8, [C

    .line 76
    .local v0, acBuffer:[C
    const/4 v2, 0x0

    .line 78
    .local v2, iNumberOfRead:I
    iget-object v8, p0, Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;->this$0:Lcom/samsung/SMT/DisplayLicense;

    #getter for: Lcom/samsung/SMT/DisplayLicense;->m_oAssetManager:Landroid/content/res/AssetManager;
    invoke-static {v8}, Lcom/samsung/SMT/DisplayLicense;->access$0(Lcom/samsung/SMT/DisplayLicense;)Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "license.html"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 79
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v5, oInputStreamReader:Ljava/io/InputStreamReader;
    :goto_1f
    invoke-virtual {v5, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_22} :catch_54
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_22} :catch_6d

    move-result v2

    if-gez v2, :cond_4f

    .line 101
    if-eqz v4, :cond_2a

    .line 102
    :try_start_27
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_97

    .line 112
    .end local v0           #acBuffer:[C
    .end local v2           #iNumberOfRead:I
    .end local v5           #oInputStreamReader:Ljava/io/InputStreamReader;
    :cond_2a
    :goto_2a
    if-nez v3, :cond_3a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 114
    const-string v8, "Samsung TTS"

    const-string v9, "License HTML is empty."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v3, 0x3

    .line 119
    :cond_3a
    iget-object v8, p0, Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;->m_oHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 121
    .local v6, oMessage:Landroid/os/Message;
    if-nez v3, :cond_49

    .line 122
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    :cond_49
    iget-object v8, p0, Lcom/samsung/SMT/DisplayLicense$LicenseFileLoader;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 125
    return-void

    .line 82
    .end local v6           #oMessage:Landroid/os/Message;
    .restart local v0       #acBuffer:[C
    .restart local v2       #iNumberOfRead:I
    .restart local v5       #oInputStreamReader:Ljava/io/InputStreamReader;
    :cond_4f
    const/4 v8, 0x0

    :try_start_50
    invoke-virtual {v7, v0, v8, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_86
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_6d

    goto :goto_1f

    .line 85
    .end local v0           #acBuffer:[C
    .end local v2           #iNumberOfRead:I
    .end local v5           #oInputStreamReader:Ljava/io/InputStreamReader;
    :catch_54
    move-exception v1

    .line 87
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_55
    const-string v8, "Samsung TTS"

    const-string v9, "License HTML file not found."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c
    .catchall {:try_start_55 .. :try_end_5c} :catchall_86

    .line 88
    const/4 v3, 0x1

    .line 101
    if-eqz v4, :cond_2a

    .line 102
    :try_start_5f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_2a

    .line 105
    :catch_63
    move-exception v1

    .line 107
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Samsung TTS"

    const-string v9, "Error(finally) occured."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v3, 0x4

    goto :goto_2a

    .line 91
    .end local v1           #e:Ljava/io/IOException;
    :catch_6d
    move-exception v1

    .line 93
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_6e
    const-string v8, "Samsung TTS"

    const-string v9, "Error reading license HTML file."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_86

    .line 94
    const/4 v3, 0x2

    .line 101
    if-eqz v4, :cond_2a

    .line 102
    :try_start_78
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_2a

    .line 105
    :catch_7c
    move-exception v1

    .line 107
    const-string v8, "Samsung TTS"

    const-string v9, "Error(finally) occured."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v3, 0x4

    goto :goto_2a

    .line 98
    .end local v1           #e:Ljava/io/IOException;
    :catchall_86
    move-exception v8

    .line 101
    if-eqz v4, :cond_8c

    .line 102
    :try_start_89
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 110
    :cond_8c
    :goto_8c
    throw v8

    .line 105
    :catch_8d
    move-exception v1

    .line 107
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "Samsung TTS"

    const-string v10, "Error(finally) occured."

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v3, 0x4

    goto :goto_8c

    .line 105
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #acBuffer:[C
    .restart local v2       #iNumberOfRead:I
    .restart local v5       #oInputStreamReader:Ljava/io/InputStreamReader;
    :catch_97
    move-exception v1

    .line 107
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "Samsung TTS"

    const-string v9, "Error(finally) occured."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    const/4 v3, 0x4

    goto :goto_2a
.end method
