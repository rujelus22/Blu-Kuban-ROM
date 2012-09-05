.class public abstract enum Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
.super Ljava/lang/Enum;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "AssetBulkAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

.field public static final enum STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

.field public static final enum UPDATE_ALL:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$1;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    .line 256
    new-instance v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;

    const-string v1, "STOP_ALL_DOWNLOADS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->UPDATE_ALL:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->STOP_ALL_DOWNLOADS:Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->$VALUES:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

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
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/finsky/adapters/MyDownloadsAdapter$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
    .registers 2
    .parameter

    .prologue
    .line 206
    const-class v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;
    .registers 1

    .prologue
    .line 206
    sget-object v0, Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->$VALUES:[Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    invoke-virtual {v0}, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/adapters/MyDownloadsAdapter$AssetBulkAction;

    return-object v0
.end method


# virtual methods
.method public abstract getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabelId()I
.end method

.method public abstract isVisible(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z
.end method

.method public abstract isWaiting(Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)Z
.end method

.method public abstract run(Landroid/content/Context;Lcom/google/android/finsky/adapters/MyDownloadsAdapter;)V
.end method
