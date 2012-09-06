.class public final enum Lcom/google/android/maps/A;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/maps/A;

.field public static final enum b:Lcom/google/android/maps/A;

.field public static final enum c:Lcom/google/android/maps/A;

.field private static final synthetic d:[Lcom/google/android/maps/A;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 227
    new-instance v0, Lcom/google/android/maps/A;

    const-string v1, "ENTRY_POINT_MAPS"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/A;->a:Lcom/google/android/maps/A;

    .line 228
    new-instance v0, Lcom/google/android/maps/A;

    const-string v1, "ENTRY_POINT_PLACES"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/A;->b:Lcom/google/android/maps/A;

    .line 229
    new-instance v0, Lcom/google/android/maps/A;

    const-string v1, "ENTRY_POINT_LATITUDE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/A;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/A;->c:Lcom/google/android/maps/A;

    .line 226
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/A;

    sget-object v1, Lcom/google/android/maps/A;->a:Lcom/google/android/maps/A;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/A;->b:Lcom/google/android/maps/A;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/A;->c:Lcom/google/android/maps/A;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/A;->d:[Lcom/google/android/maps/A;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/A;
    .registers 2
    .parameter

    .prologue
    .line 226
    const-class v0, Lcom/google/android/maps/A;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/A;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/A;
    .registers 1

    .prologue
    .line 226
    sget-object v0, Lcom/google/android/maps/A;->d:[Lcom/google/android/maps/A;

    invoke-virtual {v0}, [Lcom/google/android/maps/A;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/A;

    return-object v0
.end method
