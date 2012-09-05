.class final enum Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;
.super Ljava/lang/Enum;
.source "PersistentAssetStoreImpl.java"

# interfaces
.implements Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/local/PersistentAssetStoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AssetVersionColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;",
        ">;",
        "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum DOWNLOAD_PENDING_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum DOWNLOAD_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum FORWARD_LOCKED:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum ID:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum INSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_PATCH_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_PATCH_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_PATCH_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_PATCH_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_PATCH_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum OBB_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum REFERRER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum REFUND_PERIOD_END_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum SIGNATURE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum SOURCE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum UNINSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

.field public static final enum VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;


# instance fields
.field private final type:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 124
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "ID"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT_UNIQUE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ID:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 125
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "URI"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 126
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "STATE"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 127
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "DOWNLOAD_PENDING_TIME"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_PENDING_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 128
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "DOWNLOAD_TIME"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 129
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "INSTALL_TIME"

    const/4 v2, 0x5

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->INSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 130
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "UNINSTALL_TIME"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->UNINSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 131
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "SIZE"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 132
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "PACKAGE"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 133
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "FORWARD_LOCKED"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->FORWARD_LOCKED:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 134
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "SIGNATURE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIGNATURE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 135
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "REFUND_PERIOD_END_TIME"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFUND_PERIOD_END_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 136
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "VERSION_CODE"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 137
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "REFERRER"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFERRER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 138
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "SOURCE"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SOURCE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 139
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_VERSION_CODE"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 140
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_URI"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 141
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_URL"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 142
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_SIZE"

    const/16 v2, 0x12

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 143
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_STATE"

    const/16 v2, 0x13

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 144
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_PATCH_VERSION_CODE"

    const/16 v2, 0x14

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 145
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_PATCH_URI"

    const/16 v2, 0x15

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 146
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_PATCH_URL"

    const/16 v2, 0x16

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 147
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_PATCH_SIZE"

    const/16 v2, 0x17

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 148
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    const-string v1, "OBB_PATCH_STATE"

    const/16 v2, 0x18

    sget-object v3, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->INTEGER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    .line 121
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ID:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_PENDING_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->DOWNLOAD_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->INSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->UNINSTALL_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->FORWARD_LOCKED:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SIGNATURE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFUND_PERIOD_END_TIME:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->REFERRER:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->SOURCE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_VERSION_CODE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URI:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_URL:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_SIZE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->OBB_PATCH_STATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->$VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V
    .registers 4
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 152
    iput-object p3, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->type:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    .line 153
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;
    .registers 2
    .parameter

    .prologue
    .line 121
    const-class v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->$VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    invoke-virtual {v0}, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->type:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    return-object v0
.end method

.method public index()I
    .registers 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetVersionColumn;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
