.class public final Ldbxyzptlk/E/i;
.super Ldbxyzptlk/E/v;


# instance fields
.field a:Ldbxyzptlk/E/r;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ldbxyzptlk/E/v;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/E/i;->a:Ldbxyzptlk/E/r;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0, p1}, Ldbxyzptlk/E/v;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/E/i;->a:Ldbxyzptlk/E/r;

    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/E/r;)V
    .registers 2

    iput-object p1, p0, Ldbxyzptlk/E/i;->a:Ldbxyzptlk/E/r;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Ldbxyzptlk/E/i;->a:Ldbxyzptlk/E/r;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ldbxyzptlk/E/i;->a:Ldbxyzptlk/E/r;

    invoke-interface {v0, p1}, Ldbxyzptlk/E/r;->a(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public final a([BI)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p2, :cond_e

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_b

    :goto_a
    return v0

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final a([BIZ)Z
    .registers 5

    if-eqz p1, :cond_4

    if-eqz p3, :cond_6

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0, p1, p2}, Ldbxyzptlk/E/i;->b([BI)Z

    iget-boolean v0, p0, Ldbxyzptlk/E/i;->i:Z

    goto :goto_5
.end method
