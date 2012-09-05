.class public final Lnk;
.super Lnj;
.source "a"


# instance fields
.field protected final e:[Lfd;

.field protected f:I


# direct methods
.method public constructor <init>([Lfd;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lnj;-><init>(Lfd;)V

    .line 41
    iput-object p1, p0, Lnk;->e:[Lfd;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lnk;->f:I

    .line 43
    return-void
.end method

.method private x()Z
    .registers 4

    .prologue
    .line 144
    iget v0, p0, Lnk;->f:I

    iget-object v1, p0, Lnk;->e:[Lfd;

    array-length v1, v1

    if-lt v0, v1, :cond_9

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_8
    return v0

    .line 147
    :cond_9
    iget-object v0, p0, Lnk;->e:[Lfd;

    iget v1, p0, Lnk;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnk;->f:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lnk;->d:Lfd;

    .line 148
    const/4 v0, 0x1

    goto :goto_8
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lfd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lnk;->f:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lnk;->e:[Lfd;

    array-length v1, v1

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_1f

    .line 77
    iget-object v0, p0, Lnk;->e:[Lfd;

    aget-object v0, v0, v2

    .line 78
    instance-of v3, v0, Lnk;

    if-eqz v3, :cond_1b

    .line 79
    check-cast v0, Lnk;

    invoke-virtual {v0, p1}, Lnk;->a(Ljava/util/List;)V

    .line 76
    :goto_17
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 81
    :cond_1b
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 84
    :cond_1f
    return-void
.end method

.method public final b()Lfg;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfc;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lnk;->d:Lfd;

    invoke-virtual {v0}, Lfd;->b()Lfg;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_9

    .line 110
    :goto_8
    return-object v0

    .line 106
    :cond_9
    invoke-direct {p0}, Lnk;->x()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 107
    iget-object v0, p0, Lnk;->d:Lfd;

    invoke-virtual {v0}, Lfd;->b()Lfg;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_9

    goto :goto_8

    .line 110
    :cond_18
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    iget-object v0, p0, Lnk;->d:Lfd;

    invoke-virtual {v0}, Lfd;->close()V

    .line 98
    invoke-direct {p0}, Lnk;->x()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void
.end method
