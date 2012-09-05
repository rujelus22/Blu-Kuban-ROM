.class final enum Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;
.super Ljava/lang/Enum;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

.field public static final enum DOWNLOADING:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

.field public static final enum INSTALLED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

.field public static final enum OWNED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

.field public static final enum UPDATE_AVAILABLE:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->DOWNLOADING:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->INSTALLED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const-string v1, "UPDATE_AVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->UPDATE_AVAILABLE:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    const-string v1, "OWNED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->OWNED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->DOWNLOADING:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->INSTALLED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->UPDATE_AVAILABLE:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->OWNED:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->$VALUES:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;
    .registers 2
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->$VALUES:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    invoke-virtual {v0}, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetType;

    return-object v0
.end method
