.class public Lcom/android/certinstaller/CertFile;
.super Landroid/preference/PreferenceActivity;
.source "CertFile.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private mCertFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private install(Ljava/lang/String;[B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/certinstaller/CertInstaller;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, ".pfx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, ".p12"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 179
    :cond_1c
    const-string v1, "PKCS12"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 186
    :goto_21
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertFile;->startActivityForResult(Landroid/content/Intent;I)V

    .line 187
    return-void

    .line 180
    :cond_26
    const-string v1, ".cer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, ".crt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 182
    :cond_36
    const-string v1, "CERT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto :goto_21

    .line 184
    :cond_3c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private toastError(I)V
    .registers 3
    .parameter "msgId"

    .prologue
    .line 190
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 3
    .parameter "file"

    .prologue
    .line 155
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->isFileAcceptable(Ljava/lang/String;)Z

    move-result v0

    .line 158
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected getAllCertFiles()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 108
    .local v3, root:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v4, "download"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v1, download:Ljava/io/File;
    if-eqz v1, :cond_1b

    .line 110
    invoke-virtual {v1, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 111
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1b

    .line 112
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 116
    .end local v2           #files:[Ljava/io/File;
    :cond_1b
    invoke-virtual {v3, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 117
    .restart local v2       #files:[Ljava/io/File;
    if-eqz v2, :cond_24

    .line 118
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 121
    :cond_24
    return-object v0
.end method

.method protected installFromFile(Ljava/io/File;)V
    .registers 9
    .parameter "file"

    .prologue
    const v6, 0x7f06001c

    const v4, 0x7f06001b

    const v5, 0x7f06001a

    .line 130
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "install cert from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/32 v3, 0xf4240

    cmp-long v1, v1, v3

    if-gez v1, :cond_49

    .line 134
    invoke-static {p1}, Lcom/android/certinstaller/Util;->readFile(Ljava/io/File;)[B

    move-result-object v0

    .line 135
    .local v0, data:[B
    if-nez v0, :cond_3f

    .line 136
    invoke-direct {p0, v6}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 137
    invoke-virtual {p0, v6}, Lcom/android/certinstaller/CertFile;->onError(I)V

    .line 152
    .end local v0           #data:[B
    :goto_3e
    return-void

    .line 140
    .restart local v0       #data:[B
    :cond_3f
    iput-object p1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 141
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/certinstaller/CertFile;->install(Ljava/lang/String;[B)V

    goto :goto_3e

    .line 143
    .end local v0           #data:[B
    :cond_49
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert file is too large: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, v5}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 145
    invoke-virtual {p0, v5}, Lcom/android/certinstaller/CertFile;->onError(I)V

    goto :goto_3e

    .line 148
    :cond_6c
    const-string v1, "CertFile"

    const-string v2, "cert file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0, v4}, Lcom/android/certinstaller/CertFile;->toastError(I)V

    .line 150
    invoke-virtual {p0, v4}, Lcom/android/certinstaller/CertFile;->onError(I)V

    goto :goto_3e
.end method

.method protected isFileAcceptable(Ljava/lang/String;)Z
    .registers 3
    .parameter "path"

    .prologue
    .line 163
    const-string v0, ".crt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ".p12"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ".cer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ".pfx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method protected isSdCardPresent()Z
    .registers 3

    .prologue
    .line 170
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    .line 71
    if-ne p1, v0, :cond_1b

    .line 72
    const/4 v1, -0x1

    if-ne p2, v1, :cond_19

    iget-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/certinstaller/Util;->deleteFile(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 74
    .local v0, success:Z
    :cond_12
    :goto_12
    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->onInstallationDone(Z)V

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 79
    .end local v0           #success:Z
    :goto_18
    return-void

    .line 72
    :cond_19
    const/4 v0, 0x0

    goto :goto_12

    .line 77
    :cond_1b
    const-string v1, "CertFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown request code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method protected onError(I)V
    .registers 2
    .parameter "errorId"

    .prologue
    .line 99
    return-void
.end method

.method protected onInstallationDone(Z)V
    .registers 3
    .parameter "success"

    .prologue
    .line 87
    if-eqz p1, :cond_6

    .line 88
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFile;->setResult(I)V

    .line 90
    :cond_6
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedStates"

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 63
    const-string v1, "cf"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 65
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    .line 67
    :cond_12
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outStates"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    if-eqz v0, :cond_12

    .line 56
    const-string v0, "cf"

    iget-object v1, p0, Lcom/android/certinstaller/CertFile;->mCertFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_12
    return-void
.end method
