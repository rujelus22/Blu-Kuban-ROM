.class public Lcom/android/certinstaller/CertInstallerMain;
.super Lcom/android/certinstaller/CertFile;
.source "CertInstallerMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/certinstaller/CertFile;-><init>()V

    return-void
.end method

.method private installByType(Ljava/lang/String;[B)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    const-string v1, "application/x-pkcs12"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 124
    const-string v1, "PKCS12"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 131
    :goto_14
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertInstallerMain;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void

    .line 125
    :cond_19
    const-string v1, "application/x-x509-ca-cert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "application/x-x509-user-cert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 127
    :cond_29
    const-string v1, "CERT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_14

    .line 129
    :cond_2f
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onCreate(Landroid/os/Bundle;)V

    .line 43
    if-eqz p1, :cond_6

    .line 56
    :goto_5
    return-void

    .line 47
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/certinstaller/CertInstallerMain$1;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertInstallerMain$1;-><init>(Lcom/android/certinstaller/CertInstallerMain;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method protected onError(I)V
    .registers 2
    .parameter "errorId"

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 143
    return-void
.end method

.method protected onInstallationDone(Z)V
    .registers 2
    .parameter "success"

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onInstallationDone(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 138
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 61
    if-nez v2, :cond_32

    move-object v0, v1

    .line 63
    :goto_a
    const-string v3, "android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 64
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 66
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 67
    :cond_1e
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->isSdCardPresent()Z

    move-result v0

    if-nez v0, :cond_37

    .line 68
    const v0, 0x7f06001f

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->finish()V

    .line 119
    :goto_31
    return-void

    .line 61
    :cond_32
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 71
    :cond_37
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getAllCertFiles()Ljava/util/List;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 73
    const v0, 0x7f06001d

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2e

    .line 75
    :cond_4c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_5c

    .line 76
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstallerMain;->installFromFile(Ljava/io/File;)V

    goto :goto_31

    .line 79
    :cond_5c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertFileList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/android/certinstaller/CertInstallerMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_31

    .line 85
    :cond_67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0, v5}, Lcom/android/certinstaller/CertInstallerMain;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_31

    .line 90
    :cond_75
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 91
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 92
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 93
    if-eqz v0, :cond_2e

    if-eqz v2, :cond_2e

    .line 97
    :try_start_89
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstallerMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_90} :catch_ce

    move-result-object v0

    .line 98
    :try_start_91
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 101
    :goto_9a
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_b4

    .line 102
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a4
    .catchall {:try_start_91 .. :try_end_a4} :catchall_c9
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a4} :catch_a5

    goto :goto_9a

    .line 106
    :catch_a5
    move-exception v3

    .line 109
    :goto_a6
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 111
    :goto_a9
    if-nez v1, :cond_c4

    .line 112
    const-string v0, "CertInstaller"

    const-string v1, "Unable to read stream for for certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 104
    :cond_b4
    :try_start_b4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 105
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_ba
    .catchall {:try_start_b4 .. :try_end_ba} :catchall_c9
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_ba} :catch_a5

    move-result-object v1

    .line 109
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_a9

    :catchall_bf
    move-exception v0

    :goto_c0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 114
    :cond_c4
    invoke-direct {p0, v2, v1}, Lcom/android/certinstaller/CertInstallerMain;->installByType(Ljava/lang/String;[B)V

    goto/16 :goto_2e

    .line 109
    :catchall_c9
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_c0

    .line 106
    :catch_ce
    move-exception v0

    move-object v0, v1

    goto :goto_a6
.end method
