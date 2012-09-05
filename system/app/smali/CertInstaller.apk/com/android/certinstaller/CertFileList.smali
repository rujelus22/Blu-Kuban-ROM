.class public Lcom/android/certinstaller/CertFileList;
.super Lcom/android/certinstaller/CertFile;
.source "CertFileList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/certinstaller/CertFileList$SdCardMonitor;
    }
.end annotation


# instance fields
.field private mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/certinstaller/CertFile;-><init>()V

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/certinstaller/CertFileList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->createFileList()V

    return-void
.end method

.method private createFileList()V
    .registers 11

    .prologue
    const/4 v8, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->isFinishing()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 100
    const-string v7, "CertFileList"

    const-string v8, "finishing, exit createFileList()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_e
    :goto_e
    return-void

    .line 103
    :cond_f
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->isSdCardPresent()Z

    move-result v7

    if-nez v7, :cond_23

    .line 104
    const v7, 0x7f06001f

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 106
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->finish()V

    goto :goto_e

    .line 111
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 112
    .local v6, root:Landroid/preference/PreferenceScreen;
    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 114
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->getAllCertFiles()Ljava/util/List;

    move-result-object v0

    .line 115
    .local v0, allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 116
    const v7, 0x7f06001d

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->finish()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_42} :catch_43

    goto :goto_e

    .line 130
    .end local v0           #allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .end local v6           #root:Landroid/preference/PreferenceScreen;
    :catch_43
    move-exception v1

    .line 132
    .local v1, e:Ljava/io/IOException;
    const-string v7, "CertFileList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFileList(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 121
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #allFiles:Ljava/util/List;,"Ljava/util/List<Ljava/io/File;>;"
    .restart local v6       #root:Landroid/preference/PreferenceScreen;
    :cond_62
    :try_start_62
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 123
    .local v5, prefixEnd:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_74
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 124
    .local v2, file:Ljava/io/File;
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 125
    .local v4, pref:Landroid/preference/Preference;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_96} :catch_43

    goto :goto_74
.end method

.method private setAllFilesEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 81
    .local v2, root:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .local v1, n:I
    :goto_9
    if-ge v0, v1, :cond_15

    .line 82
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 84
    :cond_15
    return-void
.end method

.method private startSdCardMonitor()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    if-nez v0, :cond_b

    .line 139
    new-instance v0, Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-direct {v0, p0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;-><init>(Lcom/android/certinstaller/CertFileList;)V

    iput-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    .line 141
    :cond_b
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-virtual {v0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->startWatching()V

    .line 142
    return-void
.end method

.method private stopSdCardMonitor()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/android/certinstaller/CertFileList;->mSdCardMonitor:Lcom/android/certinstaller/CertFileList$SdCardMonitor;

    invoke-virtual {v0}, Lcom/android/certinstaller/CertFileList$SdCardMonitor;->stopWatching()V

    .line 148
    :cond_9
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFileList;->addPreferencesFromResource(I)V

    .line 48
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->createFileList()V

    .line 49
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->startSdCardMonitor()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/certinstaller/CertFile;->onDestroy()V

    .line 55
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->stopSdCardMonitor()V

    .line 56
    return-void
.end method

.method protected onError(I)V
    .registers 3
    .parameter "errorId"

    .prologue
    .line 74
    const v0, 0x7f06001b

    if-ne p1, v0, :cond_8

    .line 75
    invoke-direct {p0}, Lcom/android/certinstaller/CertFileList;->createFileList()V

    .line 77
    :cond_8
    return-void
.end method

.method protected onInstallationDone(Z)V
    .registers 4
    .parameter "fileDeleted"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/certinstaller/CertFile;->onInstallationDone(Z)V

    .line 61
    if-nez p1, :cond_f

    .line 62
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->isSdCardPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertFileList;->setAllFilesEnabled(Z)V

    .line 70
    :cond_f
    :goto_f
    return-void

    .line 65
    :cond_10
    const v0, 0x7f06001f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    invoke-virtual {p0}, Lcom/android/certinstaller/CertFileList;->finish()V

    goto :goto_f
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "pref"

    .prologue
    .line 87
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 90
    const-string v1, "CertFileList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "impossible to pick a directory! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_2f
    const/4 v1, 0x1

    return v1

    .line 92
    :cond_31
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertFileList;->setAllFilesEnabled(Z)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertFileList;->installFromFile(Ljava/io/File;)V

    goto :goto_2f
.end method
