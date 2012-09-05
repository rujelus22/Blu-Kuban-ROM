.class public final enum Lbi/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbi/e;

.field public static final enum b:Lbi/e;

.field public static final enum c:Lbi/e;

.field public static final enum d:Lbi/e;

.field private static final synthetic g:[Lbi/e;


# instance fields
.field private final e:F

.field private final f:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x3f4ccccd

    new-instance v0, Lbi/e;

    const-string v1, "LIGHTNING_FREQUENT"

    const v2, 0x3f7d70a4

    invoke-direct {v0, v1, v4, v2, v3}, Lbi/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lbi/e;->a:Lbi/e;

    new-instance v0, Lbi/e;

    const-string v1, "LIGHTNING_NORMAL"

    const v2, 0x3f7fbe77

    invoke-direct {v0, v1, v5, v2, v3}, Lbi/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lbi/e;->b:Lbi/e;

    new-instance v0, Lbi/e;

    const-string v1, "LIGHTNING_RARE"

    const v2, 0x3f7ff972

    invoke-direct {v0, v1, v6, v2, v3}, Lbi/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lbi/e;->c:Lbi/e;

    new-instance v0, Lbi/e;

    const-string v1, "LIGHTNING_NONE"

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v1, v7, v2, v3}, Lbi/e;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lbi/e;->d:Lbi/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lbi/e;

    sget-object v1, Lbi/e;->a:Lbi/e;

    aput-object v1, v0, v4

    sget-object v1, Lbi/e;->b:Lbi/e;

    aput-object v1, v0, v5

    sget-object v1, Lbi/e;->c:Lbi/e;

    aput-object v1, v0, v6

    sget-object v1, Lbi/e;->d:Lbi/e;

    aput-object v1, v0, v7

    sput-object v0, Lbi/e;->g:[Lbi/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lbi/e;->f:F

    iput p3, p0, Lbi/e;->e:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbi/e;
    .registers 2

    const-class v0, Lbi/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbi/e;

    return-object v0
.end method

.method public static values()[Lbi/e;
    .registers 1

    sget-object v0, Lbi/e;->g:[Lbi/e;

    invoke-virtual {v0}, [Lbi/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbi/e;

    return-object v0
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lbi/e;->f:F

    return v0
.end method
