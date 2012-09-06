.class public Ll/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/p;

.field private final b:Ln/h;

.field private final c:Ln/Q;

.field private final d:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ln/p;Ln/h;Ln/Q;[Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ll/a;->a:Ln/p;

    .line 51
    iput-object p2, p0, Ll/a;->b:Ln/h;

    .line 52
    if-nez p3, :cond_11

    invoke-interface {p2}, Ln/h;->a()Ln/aa;

    move-result-object v0

    invoke-virtual {v0}, Ln/aa;->f()Ln/Q;

    move-result-object p3

    :cond_11
    iput-object p3, p0, Ll/a;->c:Ln/Q;

    .line 53
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Ll/a;->d:Ljava/util/Set;

    .line 55
    array-length v1, p4

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v1, :cond_2b

    aget-object v2, p4, v0

    .line 56
    iget-object v3, p0, Ll/a;->d:Ljava/util/Set;

    invoke-static {v2}, Ln/m;->a(Ljava/lang/String;)Ln/m;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 58
    :cond_2b
    return-void
.end method

.method public static a(Ljava/util/Collection;Ln/ab;)Ljava/util/Collection;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    :goto_6
    return-object p0

    .line 236
    :cond_7
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v1

    .line 238
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/a;

    .line 239
    invoke-virtual {v0, p1}, Ll/a;->a(Ln/ab;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 240
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_25
    move-object p0, v1

    .line 244
    goto :goto_6
.end method

.method public static a(Ljava/lang/String;)Ll/a;
    .registers 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_e

    .line 161
    :cond_d
    :goto_d
    return-object v1

    .line 130
    :cond_e
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 131
    array-length v3, v2

    if-lt v3, v0, :cond_d

    .line 135
    aget-object v3, v2, v8

    invoke-static {v3}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v3

    .line 136
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Lat/B;->a(Ljava/lang/String;)Lat/B;

    move-result-object v4

    .line 137
    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Lat/B;->a(Ljava/lang/String;)Lat/B;

    move-result-object v5

    .line 138
    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    if-eqz v5, :cond_d

    .line 146
    array-length v6, v2

    if-le v6, v0, :cond_3d

    .line 147
    aget-object v1, v2, v0

    invoke-static {v1}, Ll/a;->b(Ljava/lang/String;)Ln/Q;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_3d

    .line 149
    const/4 v0, 0x4

    .line 154
    :cond_3d
    invoke-virtual {v4}, Lat/B;->c()I

    move-result v6

    invoke-virtual {v4}, Lat/B;->e()I

    move-result v4

    invoke-static {v6, v4}, Ln/Q;->b(II)Ln/Q;

    move-result-object v4

    .line 155
    invoke-virtual {v5}, Lat/B;->c()I

    move-result v6

    invoke-virtual {v5}, Lat/B;->e()I

    move-result v5

    invoke-static {v6, v5}, Ln/Q;->b(II)Ln/Q;

    move-result-object v5

    .line 158
    array-length v6, v2

    sub-int/2addr v6, v0

    new-array v6, v6, [Ljava/lang/String;

    .line 159
    array-length v7, v6

    invoke-static {v2, v0, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    new-instance v0, Ll/a;

    invoke-static {v4, v5}, Ln/aa;->a(Ln/Q;Ln/Q;)Ln/aa;

    move-result-object v2

    invoke-direct {v0, v3, v2, v1, v6}, Ll/a;-><init>(Ln/p;Ln/h;Ln/Q;[Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_d
.end method

.method public static a(Ln/Q;D)Ln/aa;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-virtual {p0}, Ln/Q;->e()D

    move-result-wide v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    invoke-static {p0, v0}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ln/Q;D)Ln/p;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 261
    const/4 v1, 0x0

    .line 263
    invoke-static {p1, p2, p3}, Ll/a;->a(Ln/Q;D)Ln/aa;

    move-result-object v4

    .line 264
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/a;

    .line 265
    invoke-virtual {v0, v4}, Ll/a;->a(Ln/ab;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 266
    invoke-virtual {v0}, Ll/a;->c()Ln/Q;

    move-result-object v3

    invoke-virtual {v3, p1}, Ln/Q;->d(Ln/Q;)F

    move-result v3

    .line 267
    if-eqz v1, :cond_2a

    cmpg-float v6, v3, v2

    if-gez v6, :cond_33

    .line 269
    :cond_2a
    invoke-virtual {v0}, Ll/a;->a()Ln/p;

    move-result-object v0

    move v1, v3

    :goto_2f
    move v2, v1

    move-object v1, v0

    .line 271
    goto :goto_a

    .line 274
    :cond_32
    return-object v1

    :cond_33
    move-object v0, v1

    move v1, v2

    goto :goto_2f
.end method

.method static b(Ljava/lang/String;)Ln/Q;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x6

    .line 175
    invoke-static {p0}, Lat/B;->a(Ljava/lang/String;)Lat/B;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_15

    .line 177
    invoke-virtual {v0}, Lat/B;->c()I

    move-result v1

    invoke-virtual {v0}, Lat/B;->e()I

    move-result v0

    invoke-static {v1, v0}, Ln/Q;->b(II)Ln/Q;

    move-result-object v0

    .line 196
    :goto_14
    return-object v0

    .line 178
    :cond_15
    const-string v0, "0x1:0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-gt v0, v2, :cond_3c

    .line 182
    const-string v2, "0"

    .line 183
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_2b
    :try_start_2b
    invoke-static {v2}, Lcom/google/googlenav/common/i;->b(Ljava/lang/String;)I

    move-result v2

    .line 190
    invoke-static {v0}, Lcom/google/googlenav/common/i;->b(Ljava/lang/String;)I

    move-result v3

    .line 191
    new-instance v0, Ln/Q;

    invoke-direct {v0, v2, v3}, Ln/Q;-><init>(II)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_38} :catch_39

    goto :goto_14

    .line 192
    :catch_39
    move-exception v0

    move-object v0, v1

    .line 193
    goto :goto_14

    .line 185
    :cond_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    :cond_51
    move-object v0, v1

    .line 196
    goto :goto_14
.end method


# virtual methods
.method public a()Ln/p;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Ll/a;->a:Ln/p;

    return-object v0
.end method

.method a(Ljava/util/Set;)V
    .registers 3
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Ll/a;->d:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v0, p0, Ll/a;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 296
    return-void
.end method

.method public a(Ln/ab;)Z
    .registers 3
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Ll/a;->b:Ln/h;

    invoke-interface {v0, p1}, Ln/h;->a(Ln/ab;)Z

    move-result v0

    return v0
.end method

.method public b()Ln/aa;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Ll/a;->b:Ln/h;

    invoke-interface {v0}, Ln/h;->a()Ln/aa;

    move-result-object v0

    return-object v0
.end method

.method public c()Ln/Q;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Ll/a;->c:Ln/Q;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 202
    if-ne p0, p1, :cond_5

    .line 209
    :cond_4
    :goto_4
    return v0

    .line 204
    :cond_5
    instance-of v2, p1, Ll/a;

    if-eqz v2, :cond_35

    .line 205
    check-cast p1, Ll/a;

    .line 206
    iget-object v2, p1, Ll/a;->a:Ln/p;

    iget-object v3, p0, Ll/a;->a:Ln/p;

    invoke-virtual {v2, v3}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p1, Ll/a;->b:Ln/h;

    iget-object v3, p0, Ll/a;->b:Ln/h;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p1, Ll/a;->c:Ln/Q;

    iget-object v3, p0, Ll/a;->c:Ln/Q;

    invoke-virtual {v2, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p1, Ll/a;->d:Ljava/util/Set;

    iget-object v3, p0, Ll/a;->d:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4

    :cond_35
    move v0, v1

    .line 209
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Ll/a;->b:Ln/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 215
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ll/a;->c:Ln/Q;

    invoke-virtual {v1}, Ln/Q;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 216
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ll/a;->d:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ll/a;->a:Ln/p;

    invoke-virtual {v1}, Ln/p;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 218
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/a;->a:Ln/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/a;->b:Ln/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/a;->c:Ln/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ll/a;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
