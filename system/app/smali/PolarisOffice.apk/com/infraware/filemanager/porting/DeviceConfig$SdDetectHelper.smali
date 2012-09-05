.class public Lcom/infraware/filemanager/porting/DeviceConfig$SdDetectHelper;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/porting/DeviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdDetectHelper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSdCardDirectory(Ljava/io/File;Ljava/lang/String;)Z
    .registers 8
    .parameter "file"
    .parameter "path"

    .prologue
    const/4 v1, 0x1

    .line 41
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_39

    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageStateSd()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1c} :catch_20

    move-result v2

    if-nez v2, :cond_39

    .line 50
    :cond_1f
    :goto_1f
    return v1

    .line 46
    :catch_20
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_39

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 50
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :cond_39
    const/4 v1, 0x0

    goto :goto_1f
.end method
