.class public final enum Lbi/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbi/f;

.field public static final enum b:Lbi/f;

.field private static final synthetic e:[Lbi/f;


# instance fields
.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lbi/f;

    const-string v1, "WIND_SLOW"

    const/high16 v2, 0x3f80

    const/high16 v3, 0x4000

    invoke-direct {v0, v1, v4, v2, v3}, Lbi/f;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lbi/f;->a:Lbi/f;

    new-instance v0, Lbi/f;

    const-string v1, "WIND_FAST"

    const/high16 v2, 0x4040

    const/high16 v3, 0x40c0

    invoke-direct {v0, v1, v5, v2, v3}, Lbi/f;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lbi/f;->b:Lbi/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lbi/f;

    sget-object v1, Lbi/f;->a:Lbi/f;

    aput-object v1, v0, v4

    sget-object v1, Lbi/f;->b:Lbi/f;

    aput-object v1, v0, v5

    sput-object v0, Lbi/f;->e:[Lbi/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbi/f;->c:F

    iput p4, p0, Lbi/f;->d:F

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbi/f;
    .registers 2

    const-class v0, Lbi/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbi/f;

    return-object v0
.end method

.method public static values()[Lbi/f;
    .registers 1

    sget-object v0, Lbi/f;->e:[Lbi/f;

    invoke-virtual {v0}, [Lbi/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbi/f;

    return-object v0
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lbi/f;->c:F

    return v0
.end method

.method public b()F
    .registers 2

    iget v0, p0, Lbi/f;->d:F

    return v0
.end method
