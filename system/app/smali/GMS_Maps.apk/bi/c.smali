.class public final enum Lbi/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lbi/c;

.field public static final enum b:Lbi/c;

.field public static final enum c:Lbi/c;

.field private static final synthetic e:[Lbi/c;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lbi/c;

    const-string v1, "CLOUD_LIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v3, v2}, Lbi/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbi/c;->a:Lbi/c;

    new-instance v0, Lbi/c;

    const-string v1, "CLOUD_CHANCE_HEAVY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lbi/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbi/c;->b:Lbi/c;

    new-instance v0, Lbi/c;

    const-string v1, "CLOUD_HEAVY"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v5, v2}, Lbi/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbi/c;->c:Lbi/c;

    const/4 v0, 0x3

    new-array v0, v0, [Lbi/c;

    sget-object v1, Lbi/c;->a:Lbi/c;

    aput-object v1, v0, v3

    sget-object v1, Lbi/c;->b:Lbi/c;

    aput-object v1, v0, v4

    sget-object v1, Lbi/c;->c:Lbi/c;

    aput-object v1, v0, v5

    sput-object v0, Lbi/c;->e:[Lbi/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lbi/c;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbi/c;
    .registers 2

    const-class v0, Lbi/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbi/c;

    return-object v0
.end method

.method public static values()[Lbi/c;
    .registers 1

    sget-object v0, Lbi/c;->e:[Lbi/c;

    invoke-virtual {v0}, [Lbi/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbi/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lbi/c;->d:I

    return v0
.end method
