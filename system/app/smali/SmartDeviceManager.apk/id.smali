.class public final Lid;
.super Lik;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lik",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Lnd;

.field protected final b:Z

.field protected final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final d:Lhf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lht;


# direct methods
.method public constructor <init>(Llt;Lhf;Lht;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llt;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lht;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lik;-><init>(Ljava/lang/Class;)V

    .line 58
    iput-object p1, p0, Lid;->a:Lnd;

    .line 59
    iget-object v0, p1, Llt;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lid;->c:Ljava/lang/Class;

    .line 60
    iget-object v0, p0, Lid;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lid;->b:Z

    .line 61
    iput-object p2, p0, Lid;->d:Lhf;

    .line 62
    iput-object p3, p0, Lid;->e:Lht;

    .line 63
    return-void

    .line 60
    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method


# virtual methods
.method public final bridge synthetic a(Lfd;Lhc;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->START_ARRAY:Lfg;

    if-eq v0, v1, :cond_3e

    invoke-virtual {p1}, Lfd;->d()Lfg;

    move-result-object v0

    sget-object v1, Lfg;->VALUE_STRING:Lfg;

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lid;->c:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_33

    invoke-static {}, Lhb;->h()Lev;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfd;->a(Lev;)[B

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Byte;

    array-length v2, v0

    move v3, v6

    :goto_24
    if-ge v3, v2, :cond_31

    aget-byte v4, v0, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_31
    move-object v0, v1

    :goto_32
    return-object v0

    :cond_33
    iget-object v0, p0, Lid;->a:Lnd;

    invoke-virtual {v0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lhc;->a(Ljava/lang/Class;)Lhg;

    move-result-object v0

    throw v0

    :cond_3e
    invoke-virtual {p2}, Lhc;->d()Lmh;

    move-result-object v0

    invoke-virtual {v0}, Lmh;->a()[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lid;->e:Lht;

    move-object v3, v1

    move v1, v6

    :goto_4a
    invoke-virtual {p1}, Lfd;->b()Lfg;

    move-result-object v4

    sget-object v5, Lfg;->END_ARRAY:Lfg;

    if-eq v4, v5, :cond_76

    sget-object v5, Lfg;->VALUE_NULL:Lfg;

    if-ne v4, v5, :cond_66

    const/4 v4, 0x0

    :goto_57
    array-length v5, v3

    if-lt v1, v5, :cond_60

    invoke-virtual {v0, v3}, Lmh;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    move v1, v6

    :cond_60
    add-int/lit8 v5, v1, 0x1

    aput-object v4, v3, v1

    move v1, v5

    goto :goto_4a

    :cond_66
    if-nez v2, :cond_6f

    iget-object v4, p0, Lid;->d:Lhf;

    invoke-virtual {v4, p1, p2}, Lhf;->a(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_57

    :cond_6f
    iget-object v4, p0, Lid;->d:Lhf;

    invoke-virtual {v4, p1, p2, v2}, Lhf;->a(Lfd;Lhc;Lht;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_57

    :cond_76
    iget-boolean v2, p0, Lid;->b:Z

    if-eqz v2, :cond_88

    iget v2, v0, Lmh;->a:I

    add-int/2addr v2, v1

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v2, v3, v1}, Lmh;->a(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    move-object v1, v4

    :goto_83
    invoke-virtual {p2, v0}, Lhc;->a(Lmh;)V

    move-object v0, v1

    goto :goto_32

    :cond_88
    iget-object v2, p0, Lid;->c:Ljava/lang/Class;

    invoke-virtual {v0, v3, v1, v2}, Lmh;->a([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    goto :goto_83
.end method

.method public final bridge synthetic a(Lfd;Lhc;Lht;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p3, p1, p2}, Lht;->b(Lfd;Lhc;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Lhf;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lid;->d:Lhf;

    return-object v0
.end method
