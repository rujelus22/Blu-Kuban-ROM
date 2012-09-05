.class public Lgnu/inet/ftp/FTPURLConnection;
.super Ljava/net/URLConnection;
.source "FTPURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;,
        Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;
    }
.end annotation


# instance fields
.field protected connection:Lgnu/inet/ftp/FTPConnection;

.field protected fileStructure:I

.field protected passive:Z

.field protected representationType:I

.field protected transferMode:I


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 83
    invoke-direct {p0, p1}, Ljava/net/URLConnection;-><init>(Ljava/net/URL;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    .line 86
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    .line 87
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    .line 88
    return-void
.end method

.method private addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-virtual {p0, p2}, Lgnu/inet/ftp/FTPURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-virtual {p0, p1, p2}, Lgnu/inet/ftp/FTPURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public connect()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 96
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-eqz v0, :cond_6

    .line 141
    :cond_5
    :goto_5
    return-void

    .line 100
    :cond_6
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 101
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 102
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    .line 103
    const/4 v0, 0x0

    .line 104
    if-eqz v1, :cond_45

    .line 106
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 107
    if-eq v2, v6, :cond_2e

    .line 109
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_2e
    :goto_2e
    new-instance v2, Lgnu/inet/ftp/FTPConnection;

    invoke-direct {v2, v3, v4}, Lgnu/inet/ftp/FTPConnection;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    .line 124
    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v1, v0}, Lgnu/inet/ftp/FTPConnection;->authenticate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_81

    .line 126
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Authentication failed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_45
    const-string v2, "anonymous"

    .line 116
    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "user.name"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    new-instance v1, Lgnu/inet/util/GetLocalHostAction;

    invoke-direct {v1}, Lgnu/inet/util/GetLocalHostAction;-><init>()V

    .line 119
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v1, :cond_7c

    const-string v0, "localhost"

    :goto_72
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_2e

    :cond_7c
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_72

    .line 128
    :cond_81
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget-boolean v1, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setPassive(Z)V

    .line 129
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    if-eq v0, v6, :cond_93

    .line 131
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget v1, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setRepresentationType(I)V

    .line 133
    :cond_93
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    if-eq v0, v6, :cond_9e

    .line 135
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget v1, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setFileStructure(I)V

    .line 137
    :cond_9e
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    if-eq v0, v6, :cond_5

    .line 139
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    iget v1, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    invoke-virtual {v0, v1}, Lgnu/inet/ftp/FTPConnection;->setTransferMode(I)V

    goto/16 :goto_5
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-nez v0, :cond_8

    .line 167
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPURLConnection;->connect()V

    .line 169
    :cond_8
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_1b
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 176
    const/4 v1, -0x1

    if-eq v3, v1, :cond_3d

    .line 178
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget-object v3, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v3, v0}, Lgnu/inet/ftp/FTPConnection;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 182
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    move-object v1, v2

    .line 185
    :cond_3e
    if-eqz v1, :cond_52

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    .line 187
    new-instance v0, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;

    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v1}, Lgnu/inet/ftp/FTPConnection;->retrieve(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;-><init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/InputStream;)V

    .line 191
    :goto_51
    return-object v0

    :cond_52
    new-instance v0, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;

    iget-object v1, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v1, v2}, Lgnu/inet/ftp/FTPConnection;->list(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/inet/ftp/FTPURLConnection$ClosingInputStream;-><init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/InputStream;)V

    goto :goto_51
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-nez v0, :cond_7

    .line 203
    invoke-virtual {p0}, Lgnu/inet/ftp/FTPURLConnection;->connect()V

    .line 205
    :cond_7
    iget-object v0, p0, Lgnu/inet/ftp/FTPURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 206
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_1a
    const/4 v1, 0x0

    .line 211
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 212
    const/4 v3, -0x1

    if-eq v2, v3, :cond_58

    .line 214
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v0}, Lgnu/inet/ftp/FTPConnection;->changeWorkingDirectory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 218
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3d
    move-object v0, v1

    .line 221
    :goto_3e
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    .line 223
    new-instance v1, Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;

    iget-object v2, p0, Lgnu/inet/ftp/FTPURLConnection;->connection:Lgnu/inet/ftp/FTPConnection;

    invoke-virtual {v2, v0}, Lgnu/inet/ftp/FTPConnection;->store(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lgnu/inet/ftp/FTPURLConnection$ClosingOutputStream;-><init>(Lgnu/inet/ftp/FTPURLConnection;Ljava/io/OutputStream;)V

    return-object v1

    .line 227
    :cond_52
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_58
    move-object v0, v1

    goto :goto_3e
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 279
    const-string v1, "passive"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 280
    const-string v1, "representationType"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 281
    const-string v1, "fileStructure"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 282
    const-string v1, "transferMode"

    invoke-direct {p0, v0, v1}, Lgnu/inet/ftp/FTPURLConnection;->addRequestPropertyValue(Ljava/util/Map;Ljava/lang/String;)V

    .line 283
    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 233
    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 235
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 273
    :goto_e
    return-object v0

    .line 237
    :cond_f
    const-string v0, "representationType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 239
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    packed-switch v0, :pswitch_data_56

    .line 273
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    goto :goto_e

    .line 242
    :pswitch_1e
    const-string v0, "ASCII"

    goto :goto_e

    .line 244
    :pswitch_21
    const-string v0, "EBCDIC"

    goto :goto_e

    .line 246
    :pswitch_24
    const-string v0, "BINARY"

    goto :goto_e

    .line 249
    :cond_27
    const-string v0, "fileStructure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 251
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    packed-switch v0, :pswitch_data_60

    goto :goto_1c

    .line 254
    :pswitch_35
    const-string v0, "FILE"

    goto :goto_e

    .line 256
    :pswitch_38
    const-string v0, "RECORD"

    goto :goto_e

    .line 258
    :pswitch_3b
    const-string v0, "PAGE"

    goto :goto_e

    .line 261
    :cond_3e
    const-string v0, "transferMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 263
    iget v0, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    packed-switch v0, :pswitch_data_6a

    goto :goto_1c

    .line 266
    :pswitch_4c
    const-string v0, "STREAM"

    goto :goto_e

    .line 268
    :pswitch_4f
    const-string v0, "BLOCK"

    goto :goto_e

    .line 270
    :pswitch_52
    const-string v0, "COMPRESSED"

    goto :goto_e

    .line 239
    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch

    .line 251
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_35
        :pswitch_38
        :pswitch_3b
    .end packed-switch

    .line 263
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_4f
        :pswitch_52
    .end packed-switch
.end method

.method public setDoInput(Z)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-boolean p1, p0, Lgnu/inet/ftp/FTPURLConnection;->doInput:Z

    .line 149
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-boolean p1, p0, Lgnu/inet/ftp/FTPURLConnection;->doOutput:Z

    .line 157
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 294
    iget-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 298
    :cond_d
    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 300
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lgnu/inet/ftp/FTPURLConnection;->passive:Z

    .line 368
    :cond_1f
    :goto_1f
    return-void

    .line 302
    :cond_20
    const-string v0, "representationType"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 304
    const-string v0, "A"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "ASCII"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 307
    :cond_38
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    goto :goto_1f

    .line 309
    :cond_3b
    const-string v0, "E"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "EBCDIC"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 312
    :cond_4b
    iput v2, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    goto :goto_1f

    .line 314
    :cond_4e
    const-string v0, "I"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, "BINARY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 317
    :cond_5e
    iput v3, p0, Lgnu/inet/ftp/FTPURLConnection;->representationType:I

    goto :goto_1f

    .line 321
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_67
    const-string v0, "fileStructure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 326
    const-string v0, "F"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7f

    const-string v0, "FILE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 329
    :cond_7f
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    goto :goto_1f

    .line 331
    :cond_82
    const-string v0, "R"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "RECORD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 334
    :cond_92
    iput v2, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    goto :goto_1f

    .line 336
    :cond_95
    const-string v0, "P"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a5

    const-string v0, "PAGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 339
    :cond_a5
    iput v3, p0, Lgnu/inet/ftp/FTPURLConnection;->fileStructure:I

    goto/16 :goto_1f

    .line 343
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_af
    const-string v0, "transferMode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 348
    const-string v0, "S"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c7

    const-string v0, "STREAM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 351
    :cond_c7
    iput v1, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    goto/16 :goto_1f

    .line 353
    :cond_cb
    const-string v0, "B"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_db

    const-string v0, "BLOCK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 356
    :cond_db
    iput v2, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    goto/16 :goto_1f

    .line 358
    :cond_df
    const-string v0, "C"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ef

    const-string v0, "COMPRESSED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3

    .line 361
    :cond_ef
    iput v3, p0, Lgnu/inet/ftp/FTPURLConnection;->transferMode:I

    goto/16 :goto_1f

    .line 365
    :cond_f3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
