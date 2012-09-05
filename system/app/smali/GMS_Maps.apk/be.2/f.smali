.class public final enum Lbe/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbe/f;

.field public static final enum b:Lbe/f;

.field public static final enum c:Lbe/f;

.field public static final enum d:Lbe/f;

.field public static final enum e:Lbe/f;

.field public static final enum f:Lbe/f;

.field private static final synthetic i:[Lbe/f;


# instance fields
.field g:Z

.field h:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lbe/f;

    const-string v1, "IS_CHECKED_IN"

    invoke-direct {v0, v1, v5, v4, v5}, Lbe/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lbe/f;->a:Lbe/f;

    new-instance v0, Lbe/f;

    const-string v1, "JUST_REVIEWED"

    invoke-direct {v0, v1, v4, v4, v5}, Lbe/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lbe/f;->b:Lbe/f;

    new-instance v0, Lbe/f;

    const-string v1, "JUST_CALLED"

    const/16 v2, 0x29

    invoke-direct {v0, v1, v6, v4, v2}, Lbe/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lbe/f;->c:Lbe/f;

    new-instance v0, Lbe/f;

    const-string v1, "DISTANCE_THRESHOLD"

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v7, v5, v2}, Lbe/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lbe/f;->d:Lbe/f;

    new-instance v0, Lbe/f;

    const-string v1, "HOMEPAGE_CLICK"

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v8, v4, v2}, Lbe/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lbe/f;->e:Lbe/f;

    new-instance v0, Lbe/f;

    const-string v1, "DIRECTIONS"

    const/4 v2, 0x5

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v4, v3}, Lbe/f;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lbe/f;->f:Lbe/f;

    const/4 v0, 0x6

    new-array v0, v0, [Lbe/f;

    sget-object v1, Lbe/f;->a:Lbe/f;

    aput-object v1, v0, v5

    sget-object v1, Lbe/f;->b:Lbe/f;

    aput-object v1, v0, v4

    sget-object v1, Lbe/f;->c:Lbe/f;

    aput-object v1, v0, v6

    sget-object v1, Lbe/f;->d:Lbe/f;

    aput-object v1, v0, v7

    sget-object v1, Lbe/f;->e:Lbe/f;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lbe/f;->f:Lbe/f;

    aput-object v2, v0, v1

    sput-object v0, Lbe/f;->i:[Lbe/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lbe/f;->g:Z

    iput p4, p0, Lbe/f;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbe/f;
    .registers 2

    const-class v0, Lbe/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbe/f;

    return-object v0
.end method

.method public static values()[Lbe/f;
    .registers 1

    sget-object v0, Lbe/f;->i:[Lbe/f;

    invoke-virtual {v0}, [Lbe/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbe/f;

    return-object v0
.end method
