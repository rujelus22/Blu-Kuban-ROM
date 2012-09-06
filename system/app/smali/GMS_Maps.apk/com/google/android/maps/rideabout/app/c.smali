.class public final enum Lcom/google/android/maps/rideabout/app/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum b:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum c:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum d:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum e:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum f:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum g:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum h:Lcom/google/android/maps/rideabout/app/c;

.field public static final enum i:Lcom/google/android/maps/rideabout/app/c;

.field private static final synthetic j:[Lcom/google/android/maps/rideabout/app/c;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "WALK"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    .line 42
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "BOARD"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->b:Lcom/google/android/maps/rideabout/app/c;

    .line 43
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "STAY"

    invoke-direct {v0, v1, v5}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    .line 44
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "GET_OFF_AT_NEXT_STATION"

    invoke-direct {v0, v1, v6}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->d:Lcom/google/android/maps/rideabout/app/c;

    .line 45
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "GET_OFF"

    invoke-direct {v0, v1, v7}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    .line 46
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "TRANSFER_TO_LINE_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->f:Lcom/google/android/maps/rideabout/app/c;

    .line 47
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "DESTINATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->g:Lcom/google/android/maps/rideabout/app/c;

    .line 48
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "WAITING_FOR_LOCATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    .line 49
    new-instance v0, Lcom/google/android/maps/rideabout/app/c;

    const-string v1, "RETURN_TO_ROUTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/rideabout/app/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->i:Lcom/google/android/maps/rideabout/app/c;

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/maps/rideabout/app/c;

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->a:Lcom/google/android/maps/rideabout/app/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->b:Lcom/google/android/maps/rideabout/app/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->c:Lcom/google/android/maps/rideabout/app/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->d:Lcom/google/android/maps/rideabout/app/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/maps/rideabout/app/c;->e:Lcom/google/android/maps/rideabout/app/c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/maps/rideabout/app/c;->f:Lcom/google/android/maps/rideabout/app/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/maps/rideabout/app/c;->g:Lcom/google/android/maps/rideabout/app/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/maps/rideabout/app/c;->h:Lcom/google/android/maps/rideabout/app/c;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/maps/rideabout/app/c;->i:Lcom/google/android/maps/rideabout/app/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/rideabout/app/c;->j:[Lcom/google/android/maps/rideabout/app/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/rideabout/app/c;
    .registers 2
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/google/android/maps/rideabout/app/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/app/c;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/rideabout/app/c;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/maps/rideabout/app/c;->j:[Lcom/google/android/maps/rideabout/app/c;

    invoke-virtual {v0}, [Lcom/google/android/maps/rideabout/app/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/rideabout/app/c;

    return-object v0
.end method
