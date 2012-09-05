.class public final enum Lbm/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbm/f;

.field public static final enum b:Lbm/f;

.field private static final synthetic d:[Lbm/f;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lbm/f;

    const-string v1, "SNOW_LIGHT"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v3, v2}, Lbm/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbm/f;->a:Lbm/f;

    new-instance v0, Lbm/f;

    const-string v1, "SNOW_HEAVY"

    const/16 v2, 0x94

    invoke-direct {v0, v1, v4, v2}, Lbm/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbm/f;->b:Lbm/f;

    const/4 v0, 0x2

    new-array v0, v0, [Lbm/f;

    sget-object v1, Lbm/f;->a:Lbm/f;

    aput-object v1, v0, v3

    sget-object v1, Lbm/f;->b:Lbm/f;

    aput-object v1, v0, v4

    sput-object v0, Lbm/f;->d:[Lbm/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbm/f;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbm/f;
    .registers 2

    const-class v0, Lbm/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbm/f;

    return-object v0
.end method

.method public static values()[Lbm/f;
    .registers 1

    sget-object v0, Lbm/f;->d:[Lbm/f;

    invoke-virtual {v0}, [Lbm/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbm/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbm/f;->c:I

    return v0
.end method
