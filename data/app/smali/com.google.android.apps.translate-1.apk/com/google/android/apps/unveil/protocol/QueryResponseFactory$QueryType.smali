.class public final enum Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
.super Ljava/lang/Enum;
.source "QueryResponseFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field public static final enum FELIX_TEXT_IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field public static final enum IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field public static final enum LOCAL_BARCODE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field public static final enum REPLAY:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field public static final enum SHARE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

.field private static final queryTypes:[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    const-string v1, "LOCAL_BARCODE"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->LOCAL_BARCODE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    const-string v1, "REPLAY"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->REPLAY:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->SHARE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 38
    new-instance v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    const-string v1, "FELIX_TEXT_IMAGE"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->FELIX_TEXT_IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->LOCAL_BARCODE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->REPLAY:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->SHARE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->FELIX_TEXT_IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->$VALUES:[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->LOCAL_BARCODE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->REPLAY:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->SHARE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->FELIX_TEXT_IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->queryTypes:[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->id:I

    .line 71
    return-void
.end method

.method public static final safeValueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 3
    .parameter "name"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 58
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 63
    :goto_8
    return-object v1

    .line 61
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v1

    goto :goto_8

    .line 62
    :catch_e
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    goto :goto_8
.end method

.method public static final valueOf(I)Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 4
    .parameter "i"

    .prologue
    .line 44
    if-ltz p0, :cond_7

    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->queryTypes:[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    array-length v0, v0

    if-lt p0, v0, :cond_16

    .line 45
    :cond_7
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "QueryType id out of range."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->IMAGE:Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    .line 48
    :goto_15
    return-object v0

    :cond_16
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->queryTypes:[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    aget-object v0, v0, p0

    goto :goto_15
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 2
    .parameter "name"

    .prologue
    .line 33
    const-class v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->$VALUES:[Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/protocol/QueryResponseFactory$QueryType;

    return-object v0
.end method
