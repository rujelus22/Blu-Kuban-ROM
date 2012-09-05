.class public final Lnh;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lfi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnh$b;,
        Lnh$a;
    }
.end annotation


# instance fields
.field protected a:Lgg;

.field protected b:Lgg;

.field protected c:Z

.field protected d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lnh$a;

    invoke-direct {v0}, Lnh$a;-><init>()V

    iput-object v0, p0, Lnh;->a:Lgg;

    .line 32
    new-instance v0, Lnh$b;

    invoke-direct {v0}, Lnh$b;-><init>()V

    iput-object v0, p0, Lnh;->b:Lgg;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnh;->c:Z

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lnh;->d:I

    .line 57
    return-void
.end method


# virtual methods
.method public final a(Lez;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 80
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 81
    return-void
.end method

.method public final a(Lez;I)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lnh;->b:Lgg;

    invoke-interface {v0}, Lgg;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 137
    iget v0, p0, Lnh;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnh;->d:I

    .line 139
    :cond_e
    if-lez p2, :cond_1d

    .line 140
    iget-object v0, p0, Lnh;->b:Lgg;

    iget v1, p0, Lnh;->d:I

    invoke-interface {v0, p1, v1}, Lgg;->a(Lez;I)V

    .line 144
    :goto_17
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 145
    return-void

    .line 142
    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lez;->a(C)V

    goto :goto_17
.end method

.method public final b(Lez;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 86
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 87
    iget-object v0, p0, Lnh;->b:Lgg;

    invoke-interface {v0}, Lgg;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 88
    iget v0, p0, Lnh;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnh;->d:I

    .line 90
    :cond_13
    return-void
.end method

.method public final b(Lez;I)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lnh;->a:Lgg;

    invoke-interface {v0}, Lgg;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 182
    iget v0, p0, Lnh;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lnh;->d:I

    .line 184
    :cond_e
    if-lez p2, :cond_1d

    .line 185
    iget-object v0, p0, Lnh;->a:Lgg;

    iget v1, p0, Lnh;->d:I

    invoke-interface {v0, p1, v1}, Lgg;->a(Lez;I)V

    .line 189
    :goto_17
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 190
    return-void

    .line 187
    :cond_1d
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lez;->a(C)V

    goto :goto_17
.end method

.method public final c(Lez;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 129
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 130
    iget-object v0, p0, Lnh;->b:Lgg;

    iget v1, p0, Lnh;->d:I

    invoke-interface {v0, p1, v1}, Lgg;->a(Lez;I)V

    .line 131
    return-void
.end method

.method public final d(Lez;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 110
    iget-boolean v0, p0, Lnh;->c:Z

    if-eqz v0, :cond_a

    .line 111
    const-string v0, " : "

    invoke-virtual {p1, v0}, Lez;->c(Ljava/lang/String;)V

    .line 115
    :goto_9
    return-void

    .line 113
    :cond_a
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lez;->a(C)V

    goto :goto_9
.end method

.method public final e(Lez;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lnh;->a:Lgg;

    invoke-interface {v0}, Lgg;->a()Z

    move-result v0

    if-nez v0, :cond_e

    .line 151
    iget v0, p0, Lnh;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnh;->d:I

    .line 153
    :cond_e
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 154
    return-void
.end method

.method public final f(Lez;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 174
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Lez;->a(C)V

    .line 175
    iget-object v0, p0, Lnh;->a:Lgg;

    iget v1, p0, Lnh;->d:I

    invoke-interface {v0, p1, v1}, Lgg;->a(Lez;I)V

    .line 176
    return-void
.end method

.method public final g(Lez;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lnh;->a:Lgg;

    iget v1, p0, Lnh;->d:I

    invoke-interface {v0, p1, v1}, Lgg;->a(Lez;I)V

    .line 160
    return-void
.end method

.method public final h(Lez;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lnh;->b:Lgg;

    iget v1, p0, Lnh;->d:I

    invoke-interface {v0, p1, v1}, Lgg;->a(Lez;I)V

    .line 96
    return-void
.end method
