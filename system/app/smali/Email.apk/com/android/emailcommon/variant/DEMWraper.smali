.class public Lcom/android/emailcommon/variant/DEMWraper;
.super Ljava/lang/Object;
.source "DEMWraper.java"


# static fields
.field private static sInstance:Lcom/android/emailcommon/variant/DEMWraper;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDEM:Landroid/dirEncryption/DirEncryptionManager;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    .line 23
    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    .line 25
    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 28
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    invoke-direct {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    .line 29
    iput-object p1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DEMWraper;
    .registers 2
    .parameter "context"

    .prologue
    .line 33
    sget-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/android/emailcommon/variant/DEMWraper;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/variant/DEMWraper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    .line 36
    :cond_b
    sget-object v0, Lcom/android/emailcommon/variant/DEMWraper;->sInstance:Lcom/android/emailcommon/variant/DEMWraper;

    return-object v0
.end method

.method private isSDMounted()Z
    .registers 12

    .prologue
    .line 94
    const/4 v5, 0x0

    .line 96
    .local v5, status:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v9, :cond_11

    .line 97
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    const-string v10, "storage"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    iput-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 100
    :cond_11
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v7

    .line 101
    .local v7, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v3, v7

    .line 102
    .local v3, length:I
    const/4 v0, 0x0

    .line 104
    .local v0, extStorageVolume:Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1b
    if-ge v1, v3, :cond_48

    .line 105
    aget-object v6, v7, v1

    .line 107
    .local v6, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, subsystem:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, state:Ljava/lang/String;
    if-eqz v8, :cond_3f

    const-string v9, "usb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    const-string v9, "removed"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    .line 111
    :cond_3f
    if-nez v2, :cond_46

    .line 112
    add-int/lit8 v2, v2, 0x1

    .line 104
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 114
    :cond_46
    move-object v0, v6

    goto :goto_43

    .line 119
    .end local v4           #state:Ljava/lang/String;
    .end local v6           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v8           #subsystem:Ljava/lang/String;
    :cond_48
    if-eqz v0, :cond_54

    .line 120
    iget-object v9, p0, Lcom/android/emailcommon/variant/DEMWraper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 123
    :cond_54
    const-string v9, "mounted"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5e

    .line 124
    const/4 v9, 0x1

    .line 126
    :goto_5d
    return v9

    :cond_5e
    const/4 v9, 0x0

    goto :goto_5d
.end method


# virtual methods
.method public checkSDStatus()I
    .registers 5

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, status:I
    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 54
    .local v0, savedPolicy:Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-eqz v0, :cond_e

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    .line 56
    :cond_e
    invoke-direct {p0}, Lcom/android/emailcommon/variant/DEMWraper;->isSDMounted()Z

    move-result v2

    if-nez v2, :cond_16

    .line 57
    const/4 v1, 0x1

    .line 75
    :cond_15
    :goto_15
    return v1

    .line 59
    :cond_16
    const/4 v1, 0x2

    goto :goto_15

    .line 61
    :cond_18
    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 63
    invoke-direct {p0}, Lcom/android/emailcommon/variant/DEMWraper;->isSDMounted()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/variant/DEMWraper;->easPolicyApplied(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 66
    const/4 v1, 0x1

    goto :goto_15

    .line 68
    :cond_2b
    const/4 v1, 0x0

    goto :goto_15

    .line 70
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/emailcommon/variant/DEMWraper;->easPolicyApplied(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/emailcommon/variant/DEMWraper;->mDEM:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->isStorageCardEncryptionPoliciesApplied()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 71
    :cond_3b
    const/4 v1, 0x2

    goto :goto_15

    .line 73
    :cond_3d
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public easPolicyApplied(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z
    .registers 4
    .parameter "savedPolicy"

    .prologue
    .line 80
    iget v0, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    iget v0, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    iget v0, p1, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    .line 83
    const/4 v0, 0x1

    .line 85
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isDeviceEncrypted()Z
    .registers 4

    .prologue
    .line 45
    iget-object v1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    .line 46
    .local v0, dpmWraper:Lcom/android/emailcommon/variant/DPMWraper;
    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getStorageEncryptionStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isEncryptionSupported()Z
    .registers 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/emailcommon/variant/DEMWraper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/emailcommon/variant/DPMWraper;->getInstance(Landroid/content/Context;)Lcom/android/emailcommon/variant/DPMWraper;

    move-result-object v0

    .line 90
    .local v0, dpmWraper:Lcom/android/emailcommon/variant/DPMWraper;
    invoke-virtual {v0}, Lcom/android/emailcommon/variant/DPMWraper;->getStorageEncryptionStatus()I

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method
