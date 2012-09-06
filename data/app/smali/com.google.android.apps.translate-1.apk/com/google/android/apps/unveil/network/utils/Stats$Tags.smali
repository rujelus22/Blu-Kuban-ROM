.class public final enum Lcom/google/android/apps/unveil/network/utils/Stats$Tags;
.super Ljava/lang/Enum;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/network/utils/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/network/utils/Stats$Tags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/network/utils/Stats$Tags; = null

.field public static final enum CLICK_TRACK:Lcom/google/android/apps/unveil/network/utils/Stats$Tags; = null

.field public static final enum CONTAINER:Lcom/google/android/apps/unveil/network/utils/Stats$Tags; = null

.field public static final enum CONTINUOUS_PULL:Lcom/google/android/apps/unveil/network/utils/Stats$Tags; = null

.field public static final enum CONTINUOUS_PUSH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags; = null

.field public static final enum REPLAY:Lcom/google/android/apps/unveil/network/utils/Stats$Tags; = null

.field private static final RESERVED_TAG_MAX:I = -0x1

.field private static final RESERVED_TAG_MIN:I = -0x100

.field public static final enum SINGLE_SHOT:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

.field public static final enum THUMBNAIL_FETCH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

.field public static final enum TRACE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

.field public static final enum TRACING_COOKIE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "CONTINUOUS_PUSH"

    const/16 v2, 0x100

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTINUOUS_PUSH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 21
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "CONTINUOUS_PULL"

    const/16 v2, 0x101

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTINUOUS_PULL:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 22
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "THUMBNAIL_FETCH"

    const/16 v2, 0x201

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->THUMBNAIL_FETCH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 23
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "CONTAINER"

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTAINER:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "TRACING_COOKIE"

    const/16 v2, 0x1001

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->TRACING_COOKIE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 25
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "SINGLE_SHOT"

    const/4 v2, 0x5

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->SINGLE_SHOT:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 26
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "REPLAY"

    const/4 v2, 0x6

    const/16 v3, 0x1003

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->REPLAY:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 27
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "CLICK_TRACK"

    const/4 v2, 0x7

    const/16 v3, 0x1004

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CLICK_TRACK:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 28
    new-instance v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    const-string v1, "TRACE"

    const/16 v2, 0x8

    const/16 v3, 0x1005

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->TRACE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTINUOUS_PUSH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTINUOUS_PULL:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->THUMBNAIL_FETCH:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTAINER:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->TRACING_COOKIE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->SINGLE_SHOT:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->REPLAY:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CLICK_TRACK:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->TRACE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->$VALUES:[Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 9
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    invoke-static {p3}, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->isReserved(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "%d is a reserved id, cannot apply to thread"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1f
    iput p3, p0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->id:I

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/network/utils/Stats$Tags;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->id:I

    return v0
.end method

.method private static isReserved(I)Z
    .registers 2
    .parameter "id"

    .prologue
    .line 44
    const/16 v0, -0x100

    if-lt p0, v0, :cond_9

    const/4 v0, -0x1

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/network/utils/Stats$Tags;
    .registers 2
    .parameter "name"

    .prologue
    .line 19
    const-class v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/network/utils/Stats$Tags;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->$VALUES:[Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    return-object v0
.end method
