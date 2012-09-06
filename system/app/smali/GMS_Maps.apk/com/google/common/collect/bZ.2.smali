.class public final Lcom/google/common/collect/bZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/dE;

.field private static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    new-instance v0, Lcom/google/common/collect/ca;

    invoke-direct {v0}, Lcom/google/common/collect/ca;-><init>()V

    sput-object v0, Lcom/google/common/collect/bZ;->a:Lcom/google/common/collect/dE;

    .line 83
    new-instance v0, Lcom/google/common/collect/ce;

    invoke-direct {v0}, Lcom/google/common/collect/ce;-><init>()V

    sput-object v0, Lcom/google/common/collect/bZ;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a(Ljava/util/Iterator;)I
    .registers 3
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 134
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    :cond_d
    return v0
.end method

.method public static a()Lcom/google/common/collect/dE;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/common/collect/bZ;->a:Lcom/google/common/collect/dE;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/collect/dE;
    .registers 2
    .parameter

    .prologue
    .line 1029
    new-instance v0, Lcom/google/common/collect/cd;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cd;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/google/common/collect/dE;
    .registers 3
    .parameter

    .prologue
    .line 979
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    new-instance v0, Lcom/google/common/collect/cb;

    array-length v1, p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/cb;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method static a([Ljava/lang/Object;II)Lcom/google/common/collect/dE;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1003
    if-ltz p2, :cond_12

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 1004
    add-int v0, p1, p2

    .line 1007
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/P;->a(III)V

    .line 1014
    new-instance v0, Lcom/google/common/collect/cc;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/collect/cc;-><init>(I[Ljava/lang/Object;I)V

    return-object v0

    .line 1003
    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/D;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 755
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    new-instance v0, Lcom/google/common/collect/ch;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ch;-><init>(Ljava/util/Iterator;Lcom/google/common/base/D;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const/4 v0, 0x0

    .line 337
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 338
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_4

    .line 340
    :cond_14
    return v0
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/Q;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const/4 v0, 0x0

    .line 198
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 199
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 200
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 201
    const/4 v0, 0x1

    goto :goto_4

    .line 204
    :cond_19
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 145
    if-nez p1, :cond_10

    .line 146
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 147
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 158
    :goto_f
    return v0

    .line 152
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 153
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_f

    .line 158
    :cond_21
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v0, 0x0

    .line 174
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 175
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 176
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 177
    const/4 v0, 0x1

    goto :goto_4

    .line 180
    :cond_19
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 241
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 242
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 251
    :cond_d
    :goto_d
    return v0

    .line 245
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 246
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 247
    invoke-static {v1, v2}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_d

    .line 251
    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static b(Ljava/util/Iterator;Lcom/google/common/base/Q;)Lcom/google/common/collect/dE;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v0, Lcom/google/common/collect/cg;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/cg;-><init>(Ljava/util/Iterator;Lcom/google/common/base/Q;)V

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 260
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 261
    const-string v0, "[]"

    .line 268
    :goto_8
    return-object v0

    .line 263
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 266
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 268
    :cond_2f
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static b(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/4 v0, 0x0

    .line 220
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 221
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 222
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 223
    const/4 v0, 0x1

    goto :goto_4

    .line 226
    :cond_19
    return v0
.end method

.method public static c(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 279
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 280
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 281
    return-object v0

    .line 284
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected one element but was: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v0, 0x0

    :goto_27
    const/4 v2, 0x4

    if-ge v0, v2, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 289
    :cond_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 290
    const-string v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_58
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/util/Iterator;Lcom/google/common/base/Q;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 663
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 664
    invoke-interface {p1, v0}, Lcom/google/common/base/Q;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 665
    const/4 v0, 0x1

    .line 668
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public static d(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .parameter

    .prologue
    .line 509
    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v0, Lcom/google/common/collect/cf;

    invoke-direct {v0, p0}, Lcom/google/common/collect/cf;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
