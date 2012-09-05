.class public final Lgt;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Z

.field protected final c:Lne;

.field protected d:[B

.field protected e:[B

.field protected f:[C

.field protected g:[C

.field protected h:[C


# direct methods
.method public constructor <init>(Lne;Ljava/lang/Object;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lgt;->d:[B

    .line 63
    iput-object v0, p0, Lgt;->e:[B

    .line 70
    iput-object v0, p0, Lgt;->f:[C

    .line 77
    iput-object v0, p0, Lgt;->g:[C

    .line 85
    iput-object v0, p0, Lgt;->h:[C

    .line 95
    iput-object p1, p0, Lgt;->c:Lne;

    .line 96
    iput-object p2, p0, Lgt;->a:Ljava/lang/Object;

    .line 97
    iput-boolean p3, p0, Lgt;->b:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lgt;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a([C)V
    .registers 4
    .parameter

    .prologue
    .line 210
    if-eqz p1, :cond_18

    .line 211
    iget-object v0, p0, Lgt;->f:[C

    if-eq p1, v0, :cond_e

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lgt;->f:[C

    .line 215
    iget-object v0, p0, Lgt;->c:Lne;

    sget-object v1, Lne$b;->TOKEN_BUFFER:Lne$b;

    invoke-virtual {v0, v1, p1}, Lne;->a(Lne$b;[C)V

    .line 217
    :cond_18
    return-void
.end method

.method public final a(I)[C
    .registers 4
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lgt;->h:[C

    if-eqz v0, :cond_c

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocNameCopyBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_c
    iget-object v0, p0, Lgt;->c:Lne;

    sget-object v1, Lne$b;->NAME_COPY_BUFFER:Lne$b;

    invoke-virtual {v0, v1, p1}, Lne;->a(Lne$b;I)[C

    move-result-object v0

    iput-object v0, p0, Lgt;->h:[C

    .line 173
    iget-object v0, p0, Lgt;->h:[C

    return-object v0
.end method

.method public final b([C)V
    .registers 4
    .parameter

    .prologue
    .line 221
    if-eqz p1, :cond_18

    .line 222
    iget-object v0, p0, Lgt;->g:[C

    if-eq p1, v0, :cond_e

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lgt;->g:[C

    .line 226
    iget-object v0, p0, Lgt;->c:Lne;

    sget-object v1, Lne$b;->CONCAT_BUFFER:Lne$b;

    invoke-virtual {v0, v1, p1}, Lne;->a(Lne$b;[C)V

    .line 228
    :cond_18
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lgt;->b:Z

    return v0
.end method

.method public final c()Lnl;
    .registers 3

    .prologue
    .line 123
    new-instance v0, Lnl;

    iget-object v1, p0, Lgt;->c:Lne;

    invoke-direct {v0, v1}, Lnl;-><init>(Lne;)V

    return-object v0
.end method

.method public final c([C)V
    .registers 4
    .parameter

    .prologue
    .line 232
    if-eqz p1, :cond_18

    .line 233
    iget-object v0, p0, Lgt;->h:[C

    if-eq p1, v0, :cond_e

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_e
    const/4 v0, 0x0

    iput-object v0, p0, Lgt;->h:[C

    .line 237
    iget-object v0, p0, Lgt;->c:Lne;

    sget-object v1, Lne$b;->NAME_COPY_BUFFER:Lne$b;

    invoke-virtual {v0, v1, p1}, Lne;->a(Lne$b;[C)V

    .line 239
    :cond_18
    return-void
.end method

.method public final d()[C
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lgt;->f:[C

    if-eqz v0, :cond_c

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_c
    iget-object v0, p0, Lgt;->c:Lne;

    sget-object v1, Lne$b;->TOKEN_BUFFER:Lne$b;

    invoke-virtual {v0, v1}, Lne;->a(Lne$b;)[C

    move-result-object v0

    iput-object v0, p0, Lgt;->f:[C

    .line 155
    iget-object v0, p0, Lgt;->f:[C

    return-object v0
.end method

.method public final e()[C
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lgt;->g:[C

    if-eqz v0, :cond_c

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_c
    iget-object v0, p0, Lgt;->c:Lne;

    sget-object v1, Lne$b;->CONCAT_BUFFER:Lne$b;

    invoke-virtual {v0, v1}, Lne;->a(Lne$b;)[C

    move-result-object v0

    iput-object v0, p0, Lgt;->g:[C

    .line 164
    iget-object v0, p0, Lgt;->g:[C

    return-object v0
.end method
