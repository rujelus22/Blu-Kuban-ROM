.class La/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:La/o;


# direct methods
.method constructor <init>(La/o;)V
    .registers 2

    iput-object p1, p0, La/p;->a:La/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LW/a;LW/a;)I
    .registers 9

    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LW/a;->h(I)Z

    move-result v3

    invoke-virtual {p2, v0}, LW/a;->h(I)Z

    move-result v5

    if-eqz v3, :cond_1d

    invoke-virtual {p1, v0}, LW/a;->d(I)J

    move-result-wide v3

    :goto_11
    if-eqz v5, :cond_17

    invoke-virtual {p2, v0}, LW/a;->d(I)J

    move-result-wide v1

    :cond_17
    cmp-long v5, v3, v1

    if-nez v5, :cond_1f

    const/4 v0, 0x0

    :cond_1c
    :goto_1c
    return v0

    :cond_1d
    move-wide v3, v1

    goto :goto_11

    :cond_1f
    cmp-long v1, v3, v1

    if-gez v1, :cond_1c

    const/4 v0, -0x1

    goto :goto_1c
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, LW/a;

    check-cast p2, LW/a;

    invoke-virtual {p0, p1, p2}, La/p;->a(LW/a;LW/a;)I

    move-result v0

    return v0
.end method
