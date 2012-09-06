.class public final enum LaS/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:LaS/e;

.field public static final enum b:LaS/e;

.field public static final enum c:LaS/e;

.field public static final enum d:LaS/e;

.field public static final enum e:LaS/e;

.field public static final enum f:LaS/e;

.field private static final synthetic h:[LaS/e;


# instance fields
.field g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    new-instance v0, LaS/e;

    const-string v1, "IS_CHECKED_IN"

    invoke-direct {v0, v1, v4, v3}, LaS/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LaS/e;->a:LaS/e;

    .line 37
    new-instance v0, LaS/e;

    const-string v1, "JUST_REVIEWED"

    invoke-direct {v0, v1, v3, v3}, LaS/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LaS/e;->b:LaS/e;

    .line 38
    new-instance v0, LaS/e;

    const-string v1, "JUST_CALLED"

    invoke-direct {v0, v1, v5, v3}, LaS/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LaS/e;->c:LaS/e;

    .line 41
    new-instance v0, LaS/e;

    const-string v1, "DISTANCE_THRESHOLD"

    invoke-direct {v0, v1, v6, v4}, LaS/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LaS/e;->d:LaS/e;

    .line 42
    new-instance v0, LaS/e;

    const-string v1, "HOMEPAGE_CLICK"

    invoke-direct {v0, v1, v7, v3}, LaS/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LaS/e;->e:LaS/e;

    .line 43
    new-instance v0, LaS/e;

    const-string v1, "DIRECTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, LaS/e;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, LaS/e;->f:LaS/e;

    .line 35
    const/4 v0, 0x6

    new-array v0, v0, [LaS/e;

    sget-object v1, LaS/e;->a:LaS/e;

    aput-object v1, v0, v4

    sget-object v1, LaS/e;->b:LaS/e;

    aput-object v1, v0, v3

    sget-object v1, LaS/e;->c:LaS/e;

    aput-object v1, v0, v5

    sget-object v1, LaS/e;->d:LaS/e;

    aput-object v1, v0, v6

    sget-object v1, LaS/e;->e:LaS/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LaS/e;->f:LaS/e;

    aput-object v2, v0, v1

    sput-object v0, LaS/e;->h:[LaS/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-boolean p3, p0, LaS/e;->g:Z

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LaS/e;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, LaS/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LaS/e;

    return-object v0
.end method

.method public static values()[LaS/e;
    .registers 1

    .prologue
    .line 35
    sget-object v0, LaS/e;->h:[LaS/e;

    invoke-virtual {v0}, [LaS/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LaS/e;

    return-object v0
.end method
