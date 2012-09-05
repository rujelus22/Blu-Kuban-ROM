.class public final enum Lx/g;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lx/g;

.field public static final enum b:Lx/g;

.field public static final enum c:Lx/g;

.field public static final enum d:Lx/g;

.field public static final enum e:Lx/g;

.field private static final synthetic g:[Lx/g;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    new-instance v0, Lx/g;

    const-string v1, "UNKNOWN"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lx/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx/g;->a:Lx/g;

    new-instance v0, Lx/g;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3, v3}, Lx/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx/g;->b:Lx/g;

    new-instance v0, Lx/g;

    const-string v1, "PREFETCH_OFFLINE_MAP"

    invoke-direct {v0, v1, v6, v4}, Lx/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx/g;->c:Lx/g;

    new-instance v0, Lx/g;

    const-string v1, "PREFETCH_ROUTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lx/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx/g;->d:Lx/g;

    new-instance v0, Lx/g;

    const-string v1, "PREFETCH_AREA"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v4, v2}, Lx/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lx/g;->e:Lx/g;

    const/4 v0, 0x5

    new-array v0, v0, [Lx/g;

    sget-object v1, Lx/g;->a:Lx/g;

    aput-object v1, v0, v5

    sget-object v1, Lx/g;->b:Lx/g;

    aput-object v1, v0, v3

    sget-object v1, Lx/g;->c:Lx/g;

    aput-object v1, v0, v6

    sget-object v1, Lx/g;->d:Lx/g;

    aput-object v1, v0, v7

    sget-object v1, Lx/g;->e:Lx/g;

    aput-object v1, v0, v4

    sput-object v0, Lx/g;->g:[Lx/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lx/g;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx/g;
    .registers 2

    const-class v0, Lx/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lx/g;

    return-object v0
.end method

.method public static values()[Lx/g;
    .registers 1

    sget-object v0, Lx/g;->g:[Lx/g;

    invoke-virtual {v0}, [Lx/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx/g;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lx/g;->f:I

    return v0
.end method
