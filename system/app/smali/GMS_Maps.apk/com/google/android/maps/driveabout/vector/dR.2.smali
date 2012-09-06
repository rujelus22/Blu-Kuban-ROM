.class final enum Lcom/google/android/maps/driveabout/vector/dR;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/dR;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/dR;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/dR;

.field public static final enum d:Lcom/google/android/maps/driveabout/vector/dR;

.field private static final synthetic e:[Lcom/google/android/maps/driveabout/vector/dR;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dR;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/dR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dR;->a:Lcom/google/android/maps/driveabout/vector/dR;

    .line 176
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dR;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/dR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dR;->b:Lcom/google/android/maps/driveabout/vector/dR;

    .line 177
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dR;

    const-string v1, "ZOOM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/dR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dR;->c:Lcom/google/android/maps/driveabout/vector/dR;

    .line 178
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dR;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/maps/driveabout/vector/dR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dR;->d:Lcom/google/android/maps/driveabout/vector/dR;

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/dR;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dR;->a:Lcom/google/android/maps/driveabout/vector/dR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dR;->b:Lcom/google/android/maps/driveabout/vector/dR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dR;->c:Lcom/google/android/maps/driveabout/vector/dR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/dR;->d:Lcom/google/android/maps/driveabout/vector/dR;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/maps/driveabout/vector/dR;->e:[Lcom/google/android/maps/driveabout/vector/dR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/dR;
    .registers 2
    .parameter

    .prologue
    .line 174
    const-class v0, Lcom/google/android/maps/driveabout/vector/dR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/dR;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/dR;
    .registers 1

    .prologue
    .line 174
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dR;->e:[Lcom/google/android/maps/driveabout/vector/dR;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/dR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/dR;

    return-object v0
.end method
