.class public Lcom/sec/android/socialhub/util/SocialHubFile;
.super Ljava/lang/Object;
.source "SocialHubFile.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 14
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .local v1, path:Ljava/lang/StringBuffer;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    const-string v2, "/Android/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    const-string v2, "files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, dir:Ljava/io/File;
    invoke-static {v0}, Lcom/sec/android/socialhub/util/SocialHubFile;->makeDir(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/socialhub/util/SocialHubFile;->makeDir(Ljava/io/File;)Z

    move-result v2

    if-ne v2, v3, :cond_43

    .line 27
    invoke-static {v0}, Lcom/sec/android/socialhub/util/SocialHubFile;->makeDir(Ljava/io/File;)Z

    .line 32
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-ne v2, v3, :cond_4f

    const/4 v2, 0x0

    :goto_4e
    return-object v2

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4e
.end method

.method private static makeDir(Ljava/io/File;)Z
    .registers 6
    .parameter "dir"

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, ret:Z
    if-nez p0, :cond_e

    .line 41
    const-string v1, "SocialHubFile"

    const-string v2, "makeDir()"

    const-string v3, "dir is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v1, 0x0

    .line 60
    :goto_d
    return v1

    .line 45
    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 55
    :goto_15
    if-eqz v0, :cond_35

    .line 57
    const-string v1, "SocialHubFile"

    const-string v2, "getApplicationFilePath()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "make dir - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    move v1, v0

    .line 60
    goto :goto_d

    .line 51
    :cond_37
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    goto :goto_15
.end method
