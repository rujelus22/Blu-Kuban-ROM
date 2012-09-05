.class final enum Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;
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
    name = "AssetColumn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;",
        ">;",
        "Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Column;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

.field public static final enum ACCOUNT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

.field public static final enum AUTO_UPDATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

.field public static final enum PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;


# instance fields
.field public final type:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    const-string v1, "PACKAGE"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT_UNIQUE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    .line 100
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    const-string v1, "AUTO_UPDATE"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->AUTO_UPDATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    .line 101
    new-instance v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    const-string v1, "ACCOUNT"

    sget-object v2, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;->TEXT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;-><init>(Ljava/lang/String;ILcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;)V

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ACCOUNT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->PACKAGE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->AUTO_UPDATE:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ACCOUNT:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->$VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

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
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-object p3, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->type:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    .line 106
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;
    .registers 2
    .parameter

    .prologue
    .line 96
    const-class v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->$VALUES:[Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    invoke-virtual {v0}, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->type:Lcom/google/android/finsky/local/PersistentAssetStoreImpl$Type;

    return-object v0
.end method

.method public index()I
    .registers 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/finsky/local/PersistentAssetStoreImpl$AssetColumn;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
