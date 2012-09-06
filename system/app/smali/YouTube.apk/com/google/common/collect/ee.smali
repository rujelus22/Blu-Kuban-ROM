.class public final Lcom/google/common/collect/ee;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/mt;

.field private static final b:Ljava/util/Iterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/collect/ef;

    invoke-direct {v0}, Lcom/google/common/collect/ef;-><init>()V

    sput-object v0, Lcom/google/common/collect/ee;->a:Lcom/google/common/collect/mt;

    .line 87
    new-instance v0, Lcom/google/common/collect/ej;

    invoke-direct {v0}, Lcom/google/common/collect/ej;-><init>()V

    sput-object v0, Lcom/google/common/collect/ee;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a()Lcom/google/common/collect/mt;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/google/common/collect/ee;->a:Lcom/google/common/collect/mt;

    return-object v0
.end method

.method public static a(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/mt;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1271
    const-string v0, "iterators"

    invoke-static {p0, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const-string v0, "comparator"

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    new-instance v0, Lcom/google/common/collect/en;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/en;-><init>(Ljava/lang/Iterable;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/collect/mt;
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1087
    new-instance v0, Lcom/google/common/collect/ei;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ei;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;)Lcom/google/common/collect/mt;
    .registers 2
    .parameter

    .prologue
    .line 117
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    instance-of v0, p0, Lcom/google/common/collect/mt;

    if-eqz v0, :cond_a

    .line 119
    check-cast p0, Lcom/google/common/collect/mt;

    .line 121
    :goto_9
    return-object p0

    :cond_a
    new-instance v0, Lcom/google/common/collect/ek;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ek;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_9
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/ah;)Lcom/google/common/collect/mt;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    new-instance v0, Lcom/google/common/collect/el;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/el;-><init>(Ljava/util/Iterator;Lcom/google/common/base/ah;)V

    return-object v0
.end method

.method public static varargs a([Ljava/lang/Object;)Lcom/google/common/collect/mt;
    .registers 3
    .parameter

    .prologue
    .line 1037
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v0, Lcom/google/common/collect/eg;

    array-length v1, p0

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/eg;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method static a([Ljava/lang/Object;II)Lcom/google/common/collect/mt;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    if-ltz p2, :cond_12

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 1062
    add-int v0, p1, p2

    .line 1065
    array-length v1, p0

    invoke-static {p1, v0, v1}, Lcom/google/common/base/ag;->a(III)V

    .line 1072
    new-instance v0, Lcom/google/common/collect/eh;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/common/collect/eh;-><init>(I[Ljava/lang/Object;I)V

    return-object v0

    .line 1061
    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/util/Iterator;Lcom/google/common/base/v;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 802
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v0, Lcom/google/common/collect/em;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/em;-><init>(Ljava/util/Iterator;Lcom/google/common/base/v;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v0, 0x0

    .line 355
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 356
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_4

    .line 358
    :cond_14
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    const/4 v0, 0x1

    .line 163
    if-nez p1, :cond_10

    .line 164
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 165
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 176
    :goto_f
    return v0

    .line 170
    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 171
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_f

    .line 176
    :cond_21
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 190
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const/4 v0, 0x0

    .line 192
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 193
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 195
    const/4 v0, 0x1

    goto :goto_4

    .line 198
    :cond_19
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 259
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 260
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 269
    :cond_d
    :goto_d
    return v0

    .line 263
    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 264
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 265
    invoke-static {v1, v2}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_d

    .line 269
    :cond_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v0, 0x1

    goto :goto_d
.end method

.method public static b(Ljava/util/Iterator;)I
    .registers 3
    .parameter

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 152
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_d
    return v0
.end method

.method static b()Ljava/util/Iterator;
    .registers 1

    .prologue
    .line 111
    sget-object v0, Lcom/google/common/collect/ee;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public static b(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const/4 v0, 0x0

    .line 238
    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 239
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 240
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    .line 241
    const/4 v0, 0x1

    goto :goto_4

    .line 244
    :cond_19
    return v0
.end method

.method public static c(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 278
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 279
    const-string v0, "[]"

    .line 286
    :goto_8
    return-object v0

    .line 281
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 284
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 286
    :cond_2f
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static d(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 5
    .parameter

    .prologue
    .line 297
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 298
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 299
    return-object v0

    .line 302
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected one element but was: <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v0, 0x0

    :goto_23
    const/4 v2, 0x4

    if-ge v0, v2, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 307
    :cond_45
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 308
    const-string v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_50
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static e(Ljava/util/Iterator;)V
    .registers 2
    .parameter

    .prologue
    .line 1015
    invoke-static {p0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1017
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1018
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1020
    :cond_10
    return-void
.end method

.method public static f(Ljava/util/Iterator;)Lcom/google/common/collect/jh;
    .registers 2
    .parameter

    .prologue
    .line 1233
    instance-of v0, p0, Lcom/google/common/collect/ep;

    if-eqz v0, :cond_7

    .line 1237
    check-cast p0, Lcom/google/common/collect/ep;

    .line 1240
    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/common/collect/ep;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ep;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_6
.end method
