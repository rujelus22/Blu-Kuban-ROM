.class public final LaiY;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field static final a:Lalu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 63
    new-instance v0, LaiZ;

    invoke-direct {v0}, LaiZ;-><init>()V

    sput-object v0, LaiY;->a:Lalu;

    .line 87
    new-instance v0, Lajd;

    invoke-direct {v0}, Lajd;-><init>()V

    sput-object v0, LaiY;->a:Ljava/util/Iterator;

    return-void
.end method

.method public static a()Lalu;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lalu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, LaiY;->a:Lalu;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lalu;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lalu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1087
    new-instance v0, Lajc;

    invoke-direct {v0, p0}, Lajc;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;)Lalu;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)",
            "Lalu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    instance-of v0, p0, Lalu;

    if-eqz v0, :cond_a

    .line 119
    check-cast p0, Lalu;

    .line 121
    :goto_9
    return-object p0

    :cond_a
    new-instance v0, Laje;

    invoke-direct {v0, p0}, Laje;-><init>(Ljava/util/Iterator;)V

    move-object p0, v0

    goto :goto_9
.end method

.method public static varargs a([Ljava/lang/Object;)Lalu;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lalu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1037
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance v0, Laja;

    array-length v1, p0

    invoke-direct {v0, v1, p0}, Laja;-><init>(I[Ljava/lang/Object;)V

    return-object v0
.end method

.method static a([Ljava/lang/Object;II)Lalu;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)",
            "Lalu",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1061
    if-ltz p2, :cond_12

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, LafQ;->a(Z)V

    .line 1062
    add-int v0, p1, p2

    .line 1065
    array-length v1, p0

    invoke-static {p1, v0, v1}, LafQ;->a(III)V

    .line 1072
    new-instance v0, Lajb;

    invoke-direct {v0, p2, p0, p1}, Lajb;-><init>(I[Ljava/lang/Object;I)V

    return-object v0

    .line 1061
    :cond_12
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

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

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected one element but was: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const/4 v0, 0x0

    :goto_27
    const/4 v2, 0x4

    if-ge v0, v2, :cond_4d

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 305
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

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 307
    :cond_4d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 308
    const-string v0, ", ..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_58
    const/16 v0, 0x3e

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 917
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, LaiY;->b(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method public static a(Ljava/util/Iterator;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

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

.method public static a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+",
            "Ljava/util/Iterator",
            "<+TT;>;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    new-instance v0, Lajf;

    invoke-direct {v0, p0}, Lajf;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static a(Ljava/util/Iterator;LafH;)Ljava/util/Iterator;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TF;>;",
            "LafH",
            "<-TF;+TT;>;)",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 802
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    new-instance v0, Lajg;

    invoke-direct {v0, p0, p1}, Lajg;-><init>(Ljava/util/Iterator;LafH;)V

    return-object v0
.end method

.method static a(Ljava/util/Iterator;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1015
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public static a(Ljava/util/Iterator;Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

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

.method public static a(Ljava/util/Iterator;Ljava/util/Iterator;)Z
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Iterator",
            "<*>;)Z"
        }
    .end annotation

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
    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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

.method public static b(Ljava/util/Iterator;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 901
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 902
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 903
    return-object v0
.end method
