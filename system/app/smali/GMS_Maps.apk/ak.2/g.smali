.class public Lak/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:Lak/g;


# instance fields
.field private final a:[Lak/f;

.field private final b:Ljava/util/Set;

.field private final c:Lcom/google/googlenav/ui/v;

.field private e:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/v;[Lak/f;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lak/g;->b:Ljava/util/Set;

    .line 66
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lak/g;->e:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lak/g;->c:Lcom/google/googlenav/ui/v;

    .line 70
    iput-object p2, p0, Lak/g;->a:[Lak/f;

    .line 71
    invoke-direct {p0}, Lak/g;->e()V

    .line 72
    return-void
.end method

.method public static a()Lak/g;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lak/g;->d:Lak/g;

    return-object v0
.end method

.method private a(Lak/f;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 266
    if-nez p1, :cond_3

    .line 282
    :cond_2
    :goto_2
    return-void

    .line 272
    :cond_3
    invoke-interface {p1}, Lak/f;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lak/g;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lak/g;->c:Lcom/google/googlenav/ui/v;

    invoke-interface {p1, v0, p2}, Lak/f;->a(Lcom/google/googlenav/ui/v;Z)V

    .line 275
    invoke-direct {p0, p2}, Lak/g;->a(Z)V

    .line 277
    if-nez p2, :cond_2

    .line 278
    const/16 v0, 0x47

    const-string v1, "a"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lak/f;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static a(Lcom/google/googlenav/ui/v;[Lak/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 79
    new-instance v0, Lak/g;

    invoke-direct {v0, p0, p1}, Lak/g;-><init>(Lcom/google/googlenav/ui/v;[Lak/f;)V

    sput-object v0, Lak/g;->d:Lak/g;

    .line 80
    return-void
.end method

.method private a(Ljava/lang/String;[I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 327
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 328
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 330
    :try_start_a
    array-length v0, p2

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 331
    array-length v3, p2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_1a

    aget v4, p2, v0

    .line 332
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 334
    :cond_1a
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_29} :catch_2a

    .line 340
    :goto_29
    return-void

    .line 335
    :catch_2a
    move-exception v0

    .line 337
    const-string v1, "FLASH"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    goto :goto_29
.end method

.method private a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lak/g;->g()[I

    move-result-object v0

    .line 315
    if-nez p1, :cond_b

    .line 316
    const-string v1, "Labs"

    invoke-direct {p0, v1, v0}, Lak/g;->a(Ljava/lang/String;[I)V

    .line 320
    :cond_b
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 321
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->b([I)V

    .line 323
    :cond_18
    return-void
.end method

.method public static a(I)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 146
    const-string v1, "Labs"

    invoke-static {v1}, Lak/g;->a(Ljava/lang/String;)[I

    move-result-object v2

    .line 147
    array-length v3, v2

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_10

    aget v4, v2, v1

    .line 148
    if-ne v4, p0, :cond_11

    .line 149
    const/4 v0, 0x1

    .line 152
    :cond_10
    return v0

    .line 147
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private static a(Ljava/lang/String;)[I
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-static {p0}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v3

    .line 218
    if-nez v3, :cond_a

    .line 219
    new-array v0, v2, [I

    .line 233
    :cond_9
    :goto_9
    return-object v0

    .line 222
    :cond_a
    :try_start_a
    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v4

    .line 223
    new-array v0, v4, [I

    move v1, v2

    .line 224
    :goto_11
    if-ge v1, v4, :cond_9

    .line 225
    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v5

    .line 226
    aput v5, v0, v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_1c

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 229
    :catch_1c
    move-exception v0

    .line 231
    const-string v1, "FLASH"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 233
    new-array v0, v2, [I

    goto :goto_9
.end method

.method private b(I)Lak/f;
    .registers 7
    .parameter

    .prologue
    .line 101
    iget-object v2, p0, Lak/g;->a:[Lak/f;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 102
    invoke-interface {v0}, Lak/f;->d()I

    move-result v4

    if-ne v4, p1, :cond_10

    .line 107
    :goto_f
    return-object v0

    .line 101
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 107
    :cond_14
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private e()V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 157
    const-string v2, "LabsObsolete"

    invoke-static {v2}, Lak/g;->a(Ljava/lang/String;)[I

    move-result-object v3

    .line 158
    array-length v4, v3

    move v2, v0

    :goto_a
    if-ge v2, v4, :cond_1a

    aget v5, v3, v2

    .line 159
    iget-object v6, p0, Lak/g;->e:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 164
    :cond_1a
    const-string v2, "Labs"

    invoke-static {v2}, Lak/g;->a(Ljava/lang/String;)[I

    move-result-object v4

    .line 165
    array-length v5, v4

    move v3, v0

    move v2, v0

    :goto_23
    if-ge v3, v5, :cond_5b

    aget v6, v4, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 166
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lak/g;->b(I)Lak/f;

    move-result-object v7

    .line 167
    if-nez v7, :cond_4b

    .line 170
    iget-object v2, p0, Lak/g;->e:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 171
    iget-object v0, p0, Lak/g;->e:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :cond_43
    move v2, v0

    move v0, v1

    .line 165
    :goto_45
    add-int/lit8 v3, v3, 0x1

    move v9, v0

    move v0, v2

    move v2, v9

    goto :goto_23

    .line 176
    :cond_4b
    iget-object v8, p0, Lak/g;->e:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v0, v1

    .line 180
    :cond_54
    invoke-direct {p0, v7, v1}, Lak/g;->a(Lak/f;Z)V

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_45

    .line 185
    :cond_5b
    if-eqz v2, :cond_66

    .line 186
    const-string v1, "Labs"

    invoke-direct {p0}, Lak/g;->g()[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lak/g;->a(Ljava/lang/String;[I)V

    .line 188
    :cond_66
    if-eqz v0, :cond_6b

    .line 189
    invoke-direct {p0}, Lak/g;->f()V

    .line 191
    :cond_6b
    return-void
.end method

.method private f()V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lak/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 209
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    array-length v0, v2

    if-ge v1, v0, :cond_1f

    .line 210
    iget-object v0, p0, Lak/g;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 209
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 212
    :cond_1f
    const-string v0, "LabsObsolete"

    invoke-direct {p0, v0, v2}, Lak/g;->a(Ljava/lang/String;[I)V

    .line 213
    return-void
.end method

.method private g()[I
    .registers 5

    .prologue
    .line 243
    invoke-virtual {p0}, Lak/g;->c()[Lak/f;

    move-result-object v1

    .line 244
    array-length v0, v1

    new-array v2, v0, [I

    .line 245
    const/4 v0, 0x0

    :goto_8
    array-length v3, v1

    if-ge v0, v3, :cond_16

    .line 246
    aget-object v3, v1, v0

    invoke-interface {v3}, Lak/f;->d()I

    move-result v3

    aput v3, v2, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 248
    :cond_16
    return-object v2
.end method


# virtual methods
.method public a(Lak/f;)V
    .registers 3
    .parameter

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lak/g;->a(Lak/f;Z)V

    .line 257
    return-void
.end method

.method public a(Ljava/lang/Integer;)Z
    .registers 3
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lak/g;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 201
    const/4 v0, 0x0

    .line 204
    :goto_9
    return v0

    .line 203
    :cond_a
    invoke-direct {p0}, Lak/g;->f()V

    .line 204
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public b(Lak/f;)V
    .registers 6
    .parameter

    .prologue
    .line 289
    if-nez p1, :cond_3

    .line 303
    :cond_2
    :goto_2
    return-void

    .line 295
    :cond_3
    invoke-interface {p1}, Lak/f;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lak/g;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lak/g;->c:Lcom/google/googlenav/ui/v;

    invoke-interface {p1, v0}, Lak/f;->a(Lcom/google/googlenav/ui/v;)V

    .line 298
    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, v0}, Lak/g;->a(Z)V

    .line 300
    const/16 v0, 0x47

    const-string v1, "d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lak/f;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public b()[Lak/f;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lak/g;->a:[Lak/f;

    return-object v0
.end method

.method public c()[Lak/f;
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lak/g;->b:Ljava/util/Set;

    iget-object v1, p0, Lak/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Lak/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lak/f;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    iget-object v0, p0, Lak/g;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lak/f;

    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_22

    .line 350
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_22
    invoke-interface {v0}, Lak/f;->d()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 355
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
