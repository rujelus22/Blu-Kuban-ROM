.class La/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:La/x;


# direct methods
.method constructor <init>(La/x;)V
    .registers 2

    iput-object p1, p0, La/y;->a:La/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(La/z;La/z;)I
    .registers 9

    const-wide/16 v4, 0x0

    iget-wide v0, p1, La/z;->a:J

    iget-wide v2, p2, La/z;->b:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_d

    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    cmp-long v0, v0, v4

    if-gez v0, :cond_13

    const/4 v0, -0x1

    goto :goto_c

    :cond_13
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, La/z;

    check-cast p2, La/z;

    invoke-virtual {p0, p1, p2}, La/y;->a(La/z;La/z;)I

    move-result v0

    return v0
.end method
