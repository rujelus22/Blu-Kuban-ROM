.class LaD/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LaD/e;)V
    .registers 2

    invoke-direct {p0}, LaD/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaD/f;LaD/f;)I
    .registers 5

    invoke-static {p1}, LaD/f;->a(LaD/f;)I

    move-result v0

    invoke-static {p2}, LaD/f;->a(LaD/f;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, LaD/f;

    check-cast p2, LaD/f;

    invoke-virtual {p0, p1, p2}, LaD/g;->a(LaD/f;LaD/f;)I

    move-result v0

    return v0
.end method
