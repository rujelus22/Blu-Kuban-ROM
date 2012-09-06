.class public Lz/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz/C;


# instance fields
.field volatile a:Lz/B;

.field protected b:Z

.field protected c:[Lz/B;

.field protected d:[I

.field e:[[F

.field private f:[[Lz/m;

.field private g:[Lz/E;

.field private h:Z

.field private i:B

.field private j:B

.field private k:Lz/j;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/h;->b:Z

    .line 118
    iput-boolean v1, p0, Lz/h;->h:Z

    .line 131
    iput-byte v1, p0, Lz/h;->i:B

    .line 138
    const/4 v0, -0x1

    iput-byte v0, p0, Lz/h;->j:B

    .line 147
    new-array v0, v2, [Lz/E;

    iput-object v0, p0, Lz/h;->g:[Lz/E;

    .line 148
    sget v0, Lz/m;->a:I

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const-class v1, Lz/m;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lz/m;

    iput-object v0, p0, Lz/h;->f:[[Lz/m;

    .line 149
    new-instance v0, Lz/B;

    invoke-direct {v0}, Lz/B;-><init>()V

    iput-object v0, p0, Lz/h;->a:Lz/B;

    .line 150
    new-array v0, v2, [Lz/B;

    iput-object v0, p0, Lz/h;->c:[Lz/B;

    .line 151
    new-array v0, v2, [[F

    iput-object v0, p0, Lz/h;->e:[[F

    .line 152
    new-array v0, v2, [I

    iput-object v0, p0, Lz/h;->d:[I

    .line 153
    return-void
.end method


# virtual methods
.method a()B
    .registers 2

    .prologue
    .line 342
    iget-byte v0, p0, Lz/h;->i:B

    return v0
.end method

.method public a(Lz/n;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 248
    move v1, v0

    .line 249
    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_17

    .line 250
    iget-object v2, p0, Lz/h;->f:[[Lz/m;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lz/n;->a()I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_14

    .line 251
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 249
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 254
    :cond_17
    return v0
.end method

.method public a(Lz/B;)V
    .registers 3
    .parameter

    .prologue
    .line 369
    iget-boolean v0, p0, Lz/h;->h:Z

    if-eqz v0, :cond_7

    .line 370
    invoke-static {}, Lz/j;->c()V

    .line 372
    :cond_7
    iget-object v0, p0, Lz/h;->a:Lz/B;

    invoke-virtual {v0, p1}, Lz/B;->a(Lz/B;)Lz/B;

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/h;->b:Z

    .line 374
    return-void
.end method

.method public a(Lz/m;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 204
    iget-boolean v0, p0, Lz/h;->h:Z

    if-eqz v0, :cond_7

    .line 205
    invoke-static {}, Lz/j;->c()V

    .line 210
    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_47

    .line 211
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 212
    and-int/2addr v1, p2

    if-eqz v1, :cond_44

    .line 213
    iget-object v1, p0, Lz/h;->f:[[Lz/m;

    aget-object v1, v1, v0

    iget-object v2, p1, Lz/m;->f:Lz/n;

    invoke-virtual {v2}, Lz/n;->a()I

    move-result v2

    aget-object v1, v1, v2

    .line 214
    iget-object v2, p0, Lz/h;->f:[[Lz/m;

    aget-object v2, v2, v0

    iget-object v3, p1, Lz/m;->f:Lz/n;

    invoke-virtual {v3}, Lz/n;->a()I

    move-result v3

    aput-object p1, v2, v3

    .line 216
    iget-boolean v2, p0, Lz/h;->h:Z

    if-eqz v2, :cond_44

    .line 219
    if-eqz v1, :cond_38

    .line 220
    invoke-virtual {v1, p0}, Lz/m;->b(Lz/h;)V

    .line 221
    iget-object v2, p0, Lz/h;->k:Lz/j;

    sget-object v3, Lz/i;->a:Lz/i;

    invoke-virtual {v1, v2, v3}, Lz/m;->a(Lz/j;Lz/i;)Z

    .line 223
    :cond_38
    if-eqz p1, :cond_44

    .line 224
    invoke-virtual {p1, p0}, Lz/m;->a(Lz/h;)V

    .line 225
    iget-object v1, p0, Lz/h;->k:Lz/j;

    sget-object v2, Lz/i;->c:Lz/i;

    invoke-virtual {p1, v1, v2}, Lz/m;->a(Lz/j;Lz/i;)Z

    .line 210
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 230
    :cond_47
    return-void
.end method

.method a(Lz/j;Lz/i;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 273
    iget-boolean v1, p2, Lz/i;->e:Z

    iget-boolean v2, p0, Lz/h;->h:Z

    if-ne v1, v2, :cond_c

    iget-boolean v1, p2, Lz/i;->f:Z

    if-nez v1, :cond_c

    .line 313
    :goto_b
    return v0

    .line 277
    :cond_c
    iput-object p1, p0, Lz/h;->k:Lz/j;

    .line 278
    iget-object v2, p0, Lz/h;->g:[Lz/E;

    array-length v3, v2

    move v1, v0

    :goto_12
    if-ge v1, v3, :cond_2d

    aget-object v4, v2, v1

    .line 279
    if-eqz v4, :cond_26

    .line 280
    iget-boolean v5, p2, Lz/i;->f:Z

    if-nez v5, :cond_23

    .line 281
    iget-boolean v5, p2, Lz/i;->e:Z

    if-eqz v5, :cond_29

    .line 282
    invoke-virtual {v4, p0}, Lz/E;->b(Lz/h;)V

    .line 287
    :cond_23
    :goto_23
    invoke-virtual {v4, p1, p2}, Lz/E;->a(Lz/j;Lz/i;)Z

    .line 278
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 284
    :cond_29
    invoke-virtual {v4, p0}, Lz/E;->a(Lz/h;)V

    goto :goto_23

    .line 291
    :cond_2d
    const-string v1, "Entity"

    const-string v2, "vertex data setLive"

    invoke-static {v1, v2}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lz/h;->f:[[Lz/m;

    array-length v4, v3

    move v2, v0

    :goto_38
    if-ge v2, v4, :cond_5d

    aget-object v5, v3, v2

    .line 295
    array-length v6, v5

    move v1, v0

    :goto_3e
    if-ge v1, v6, :cond_59

    aget-object v7, v5, v1

    .line 296
    if-eqz v7, :cond_52

    .line 297
    iget-boolean v8, p2, Lz/i;->f:Z

    if-nez v8, :cond_4f

    .line 298
    iget-boolean v8, p2, Lz/i;->e:Z

    if-eqz v8, :cond_55

    .line 299
    invoke-virtual {v7, p0}, Lz/m;->a(Lz/h;)V

    .line 304
    :cond_4f
    :goto_4f
    invoke-virtual {v7, p1, p2}, Lz/m;->a(Lz/j;Lz/i;)Z

    .line 295
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 301
    :cond_55
    invoke-virtual {v7, p0}, Lz/m;->b(Lz/h;)V

    goto :goto_4f

    .line 294
    :cond_59
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_38

    .line 309
    :cond_5d
    const-string v0, "Entity"

    const-string v1, "entity state setLive"

    invoke-static {v0, v1}, Lz/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-boolean v0, p2, Lz/i;->e:Z

    iput-boolean v0, p0, Lz/h;->h:Z

    .line 313
    const/4 v0, 0x1

    goto :goto_b
.end method
