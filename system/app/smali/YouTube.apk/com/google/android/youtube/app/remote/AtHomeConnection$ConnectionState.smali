.class public final enum Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

.field public static final enum CONNECTING_TO_BROKER:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

.field public static final enum LOOKING_FOR_PLACES:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

.field public static final enum PLACES_AVAILABLE:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->DISCONNECTED:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    new-instance v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    const-string v1, "CONNECTING_TO_BROKER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->CONNECTING_TO_BROKER:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    new-instance v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    const-string v1, "LOOKING_FOR_PLACES"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->LOOKING_FOR_PLACES:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    new-instance v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    const-string v1, "PLACES_AVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->PLACES_AVAILABLE:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    sget-object v1, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->DISCONNECTED:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->CONNECTING_TO_BROKER:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->LOOKING_FOR_PLACES:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->PLACES_AVAILABLE:Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->$VALUES:[Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->$VALUES:[Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/remote/AtHomeConnection$ConnectionState;

    return-object v0
.end method
