.class public Lo/G;
.super Lo/a;


# instance fields
.field private final a:[Lo/a;


# direct methods
.method public constructor <init>([Lo/a;)V
    .registers 2

    invoke-direct {p0}, Lo/a;-><init>()V

    iput-object p1, p0, Lo/G;->a:[Lo/a;

    return-void
.end method

.method static synthetic a(Lo/G;)[Lo/a;
    .registers 2

    iget-object v0, p0, Lo/G;->a:[Lo/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v1, p0, Lo/G;->a:[Lo/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lo/a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public a(Lo/b;)V
    .registers 3

    new-instance v0, Lo/I;

    invoke-direct {v0, p0, p1}, Lo/I;-><init>(Lo/G;Lo/b;)V

    invoke-virtual {v0}, Lo/I;->a()Z

    return-void
.end method

.method public b()V
    .registers 5

    iget-object v1, p0, Lo/G;->a:[Lo/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lo/a;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public c()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lo/G;->a:[Lo/a;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lo/a;->c()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
