.class public Lcom/google/android/apps/books/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_15

    .line 38
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 39
    .local v0, result:Ljava/io/File;
    if-nez v0, :cond_29

    .line 40
    new-instance v1, Ljava/io/IOException;

    const-string v2, "getExternalFilesDir(null) returned null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0           #result:Ljava/io/File;
    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Books"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .restart local v0       #result:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_29

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 48
    :cond_29
    return-object v0
.end method

.method public static getInternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;
    .registers 2
    .parameter "context"

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static isExternalStorageEmulated()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 58
    :try_start_1
    const-class v0, Landroid/os/Environment;

    const-string v2, "isExternalStorageEmulated"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_19
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_19} :catch_1b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_19} :catch_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_19} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_19} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_2a

    move-result v0

    .line 77
    :goto_1a
    return v0

    .line 62
    :catch_1b
    move-exception v0

    move v0, v1

    .line 64
    goto :goto_1a

    .line 65
    :catch_1e
    move-exception v0

    move v0, v1

    .line 67
    goto :goto_1a

    .line 68
    :catch_21
    move-exception v0

    move v0, v1

    .line 71
    goto :goto_1a

    .line 72
    :catch_24
    move-exception v0

    move v0, v1

    .line 73
    goto :goto_1a

    .line 74
    :catch_27
    move-exception v0

    move v0, v1

    .line 75
    goto :goto_1a

    .line 76
    :catch_2a
    move-exception v0

    move v0, v1

    .line 77
    goto :goto_1a
.end method
