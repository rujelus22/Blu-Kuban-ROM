.class public final enum Lcom/google/android/finsky/utils/AssetSupport$RefundResult;
.super Ljava/lang/Enum;
.source "AssetSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/AssetSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefundResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/utils/AssetSupport$RefundResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

.field public static final enum BAD_REQUEST:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

.field public static final enum CANNOT_REFUND:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

.field public static final enum NETWORK_ERROR:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

.field public static final enum SUCCESS:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    .line 37
    new-instance v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    const-string v1, "CANNOT_REFUND"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->CANNOT_REFUND:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    .line 38
    new-instance v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->BAD_REQUEST:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    .line 39
    new-instance v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->NETWORK_ERROR:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    sget-object v1, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->CANNOT_REFUND:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->BAD_REQUEST:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->NETWORK_ERROR:Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->$VALUES:[Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/utils/AssetSupport$RefundResult;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/utils/AssetSupport$RefundResult;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->$VALUES:[Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    invoke-virtual {v0}, [Lcom/google/android/finsky/utils/AssetSupport$RefundResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/utils/AssetSupport$RefundResult;

    return-object v0
.end method