.class public final enum Lcom/google/android/maps/driveabout/vector/cF;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/cF;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/cF;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/cF;

.field private static final synthetic d:[Lcom/google/android/maps/driveabout/vector/cF;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 435
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cF;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cF;->a:Lcom/google/android/maps/driveabout/vector/cF;

    .line 438
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cF;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/cF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cF;->b:Lcom/google/android/maps/driveabout/vector/cF;

    .line 441
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cF;

    const-string v1, "REPLACE_BASE_TILE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/cF;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cF;->c:Lcom/google/android/maps/driveabout/vector/cF;

    .line 433
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cF;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cF;->a:Lcom/google/android/maps/driveabout/vector/cF;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cF;->b:Lcom/google/android/maps/driveabout/vector/cF;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cF;->c:Lcom/google/android/maps/driveabout/vector/cF;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cF;->d:[Lcom/google/android/maps/driveabout/vector/cF;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 433
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/cF;
    .registers 2
    .parameter

    .prologue
    .line 433
    const-class v0, Lcom/google/android/maps/driveabout/vector/cF;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cF;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/cF;
    .registers 1

    .prologue
    .line 433
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cF;->d:[Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/cF;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/cF;

    return-object v0
.end method
