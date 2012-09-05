.class LK/bl;
.super LK/bi;


# static fields
.field private static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, LK/bl;->a:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, LK/bi;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LK/bj;)V
    .registers 2

    invoke-direct {p0}, LK/bl;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()LK/cC;
    .registers 2

    sget-object v0, LK/bI;->a:LK/cC;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method e()LK/bn;
    .registers 2

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, LK/bl;->b()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    sget-object v0, LK/bl;->a:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4

    array-length v0, p1

    if-lez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_7
    return-object p1
.end method
