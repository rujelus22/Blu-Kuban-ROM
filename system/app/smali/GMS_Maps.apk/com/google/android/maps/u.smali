.class final enum Lcom/google/android/maps/u;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/android/maps/u;

.field public static final enum b:Lcom/google/android/maps/u;

.field public static final enum c:Lcom/google/android/maps/u;

.field public static final enum d:Lcom/google/android/maps/u;

.field public static final enum e:Lcom/google/android/maps/u;

.field public static final enum f:Lcom/google/android/maps/u;

.field public static final enum g:Lcom/google/android/maps/u;

.field private static final synthetic h:[Lcom/google/android/maps/u;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/u;

    const-string v1, "STARTUP_TYPE_NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/u;->a:Lcom/google/android/maps/u;

    new-instance v0, Lcom/google/android/maps/u;

    const-string v1, "STARTUP_TYPE_REMOTE_STRINGS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/u;->b:Lcom/google/android/maps/u;

    new-instance v0, Lcom/google/android/maps/u;

    const-string v1, "STARTUP_TYPE_COLD"

    invoke-direct {v0, v1, v5}, Lcom/google/android/maps/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/u;->c:Lcom/google/android/maps/u;

    new-instance v0, Lcom/google/android/maps/u;

    const-string v1, "STARTUP_TYPE_AFTER_BACK"

    invoke-direct {v0, v1, v6}, Lcom/google/android/maps/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/u;->d:Lcom/google/android/maps/u;

    new-instance v0, Lcom/google/android/maps/u;

    const-string v1, "STARTUP_TYPE_HOT"

    invoke-direct {v0, v1, v7}, Lcom/google/android/maps/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/u;->e:Lcom/google/android/maps/u;

    new-instance v0, Lcom/google/android/maps/u;

    const-string v1, "STARTUP_TYPE_SCREEN_ON"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/u;->f:Lcom/google/android/maps/u;

    new-instance v0, Lcom/google/android/maps/u;

    const-string v1, "STARTUP_TYPE_AFTER_BRIEF_PAUSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/u;->g:Lcom/google/android/maps/u;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/maps/u;

    sget-object v1, Lcom/google/android/maps/u;->a:Lcom/google/android/maps/u;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/u;->b:Lcom/google/android/maps/u;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/u;->c:Lcom/google/android/maps/u;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/u;->d:Lcom/google/android/maps/u;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/maps/u;->e:Lcom/google/android/maps/u;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/maps/u;->f:Lcom/google/android/maps/u;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/maps/u;->g:Lcom/google/android/maps/u;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/u;->h:[Lcom/google/android/maps/u;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/u;
    .registers 2

    const-class v0, Lcom/google/android/maps/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/u;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/u;
    .registers 1

    sget-object v0, Lcom/google/android/maps/u;->h:[Lcom/google/android/maps/u;

    invoke-virtual {v0}, [Lcom/google/android/maps/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/u;

    return-object v0
.end method
