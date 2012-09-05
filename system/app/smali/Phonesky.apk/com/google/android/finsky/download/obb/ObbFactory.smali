.class public Lcom/google/android/finsky/download/obb/ObbFactory;
.super Ljava/lang/Object;
.source "ObbFactory.java"


# static fields
.field private static sAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private static sObbMasterDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;
    .registers 18
    .parameter "isPatch"
    .parameter "packageName"
    .parameter "versionCode"
    .parameter "url"
    .parameter "size"
    .parameter "state"
    .parameter "contentUri"

    .prologue
    .line 32
    new-instance v0, Lcom/google/android/finsky/download/obb/ObbImpl;

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbFactory;->sAssetStore:Lcom/google/android/finsky/local/AssetStore;

    move v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/download/obb/ObbImpl;-><init>(Lcom/google/android/finsky/local/AssetStore;ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createEmpty(ZLjava/lang/String;)Lcom/google/android/finsky/download/obb/Obb;
    .registers 12
    .parameter "isPatch"
    .parameter "packageName"

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/finsky/download/obb/ObbImpl;

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbFactory;->sAssetStore:Lcom/google/android/finsky/local/AssetStore;

    const/4 v4, -0x1

    const-string v5, ""

    const-wide/16 v6, -0x1

    sget-object v8, Lcom/google/android/finsky/download/obb/ObbState;->NOT_APPLICABLE:Lcom/google/android/finsky/download/obb/ObbState;

    const/4 v9, 0x0

    move v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/download/obb/ObbImpl;-><init>(Lcom/google/android/finsky/local/AssetStore;ZLjava/lang/String;ILjava/lang/String;JLcom/google/android/finsky/download/obb/ObbState;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getParentDirectory(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .parameter "packageName"

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/android/finsky/download/obb/ObbFactory;->sObbMasterDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static initialize(Lcom/google/android/finsky/local/AssetStore;)V
    .registers 5
    .parameter "assetStore"

    .prologue
    .line 52
    sput-object p0, Lcom/google/android/finsky/download/obb/ObbFactory;->sAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 53
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, externalStorageDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "Android"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "obb"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/finsky/download/obb/ObbFactory;->sObbMasterDirectory:Ljava/io/File;

    .line 55
    return-void
.end method
