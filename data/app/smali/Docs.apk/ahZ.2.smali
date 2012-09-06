.class public final LahZ;
.super Ljava/lang/Object;
.source "Collections2.java"


# static fields
.field static final a:LafI;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 344
    const-string v0, ", "

    invoke-static {v0}, LafI;->a(Ljava/lang/String;)LafI;

    move-result-object v0

    sput-object v0, LahZ;->a:LafI;

    return-void
.end method

.method static a(Ljava/util/Collection;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, LahZ;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    sget-object v1, LahZ;->a:LafI;

    new-instance v2, Laia;

    invoke-direct {v2, p0}, Laia;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v2}, LaiT;->a(Ljava/lang/Iterable;LafH;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, LafI;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 326
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)Ljava/lang/StringBuilder;
    .registers 6
    .parameter

    .prologue
    .line 333
    if-ltz p0, :cond_1a

    const/4 v0, 0x1

    :goto_3
    const-string v1, "size must be non-negative"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v1, p0

    const-wide/16 v3, 0x8

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x40000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0

    .line 333
    :cond_1a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 341
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method static a(Ljava/util/Collection;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 98
    :goto_4
    return v0

    .line 97
    :catch_5
    move-exception v0

    .line 98
    const/4 v0, 0x0

    goto :goto_4
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 307
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 308
    const/4 v0, 0x0

    .line 311
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method
