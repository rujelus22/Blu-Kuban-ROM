.class public final enum Lcom/google/android/maps/driveabout/vector/D;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/maps/driveabout/vector/D;

.field public static final enum b:Lcom/google/android/maps/driveabout/vector/D;

.field public static final enum c:Lcom/google/android/maps/driveabout/vector/D;

.field public static final enum d:Lcom/google/android/maps/driveabout/vector/D;

.field public static final enum e:Lcom/google/android/maps/driveabout/vector/D;

.field public static final enum f:Lcom/google/android/maps/driveabout/vector/D;

.field public static final g:I

.field private static final synthetic i:[Lcom/google/android/maps/driveabout/vector/D;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    .line 19
    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    const-string v1, "HYBRID"

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/maps/driveabout/vector/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    .line 25
    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    const-string v1, "NIGHT"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/maps/driveabout/vector/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    .line 30
    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    const-string v1, "TERRAIN"

    invoke-direct {v0, v1, v5, v6}, Lcom/google/android/maps/driveabout/vector/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->d:Lcom/google/android/maps/driveabout/vector/D;

    .line 35
    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    const-string v1, "RASTER_ONLY"

    invoke-direct {v0, v1, v6, v7}, Lcom/google/android/maps/driveabout/vector/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->e:Lcom/google/android/maps/driveabout/vector/D;

    .line 40
    new-instance v0, Lcom/google/android/maps/driveabout/vector/D;

    const-string v1, "NONE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/maps/driveabout/vector/D;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/D;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->b:Lcom/google/android/maps/driveabout/vector/D;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->d:Lcom/google/android/maps/driveabout/vector/D;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->e:Lcom/google/android/maps/driveabout/vector/D;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/D;

    .line 53
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/D;->values()[Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/D;->g:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/D;->h:I

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/driveabout/vector/D;
    .registers 2
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/google/android/maps/driveabout/vector/D;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/D;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/driveabout/vector/D;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->i:[Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0}, [Lcom/google/android/maps/driveabout/vector/D;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/driveabout/vector/D;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/D;->h:I

    return v0
.end method
