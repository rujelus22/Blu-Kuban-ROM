.class final Lil$c;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = "c"
.end annotation


# instance fields
.field protected final a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field protected final b:Ljava/lang/reflect/Method;

.field protected final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Liy;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljm;[Liy;Ljp;[Liy;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    if-eqz p1, :cond_4a

    .line 211
    invoke-virtual {p1}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lil$c;->a:Ljava/lang/reflect/Constructor;

    .line 212
    iput-object v2, p0, Lil$c;->b:Ljava/lang/reflect/Method;

    move-object v0, p2

    .line 221
    :goto_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lil$c;->c:Ljava/util/HashMap;

    .line 224
    array-length v1, v0

    move-object v3, v2

    move v2, v7

    :goto_1a
    if-ge v2, v1, :cond_c1

    .line 225
    aget-object v4, v0, v2

    .line 226
    iget-object v5, p0, Lil$c;->c:Ljava/util/HashMap;

    invoke-virtual {v4}, Liy;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    invoke-virtual {v4}, Liy;->c()Lnd;

    move-result-object v5

    invoke-virtual {v5}, Lnd;->m()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 228
    if-nez v3, :cond_35

    .line 229
    new-array v3, v1, [Ljava/lang/Object;

    .line 231
    :cond_35
    invoke-virtual {v4}, Liy;->c()Lnd;

    move-result-object v4

    invoke-virtual {v4}, Lnd;->i()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_5c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_45
    aput-object v4, v3, v2

    .line 224
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 214
    :cond_4a
    if-eqz p3, :cond_54

    .line 215
    iput-object v2, p0, Lil$c;->a:Ljava/lang/reflect/Constructor;

    .line 216
    iget-object v0, p3, Ljp;->a:Ljava/lang/reflect/Method;

    iput-object v0, p0, Lil$c;->b:Ljava/lang/reflect/Method;

    move-object v0, p4

    .line 217
    goto :goto_10

    .line 219
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: neither delegating constructor nor factory method passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_5c
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_67

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_45

    :cond_67
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_6e

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_45

    :cond_6e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_79

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    goto :goto_45

    :cond_79
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_83

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_45

    :cond_83
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_8c

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    goto :goto_45

    :cond_8c
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_95

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    goto :goto_45

    :cond_95
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_9e

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    goto :goto_45

    :cond_9e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a primitive type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_c1
    iput-object v3, p0, Lil$c;->d:[Ljava/lang/Object;

    .line 235
    return-void
.end method


# virtual methods
.method public final a(Lfd;Lhc;)Liw;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 250
    new-instance v0, Liw;

    iget-object v1, p0, Lil$c;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Liw;-><init>(Lfd;Lhc;I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Liy;
    .registers 3
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lil$c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Liy;

    return-object p0
.end method

.method public final a(Liw;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 258
    :try_start_1
    iget-object v0, p0, Lil$c;->a:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1b

    .line 259
    iget-object v0, p0, Lil$c;->a:Ljava/lang/reflect/Constructor;

    iget-object v1, p0, Lil$c;->d:[Ljava/lang/Object;

    invoke-virtual {p1, v1}, Liw;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_29

    move-result-object v0

    .line 268
    :goto_11
    iget-object v1, p1, Liw;->d:Liv;

    :goto_13
    if-eqz v1, :cond_2e

    .line 269
    invoke-virtual {v1, v0}, Liv;->a(Ljava/lang/Object;)V

    .line 268
    iget-object v1, v1, Liv;->a:Liv;

    goto :goto_13

    .line 261
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lil$c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    iget-object v2, p0, Lil$c;->d:[Ljava/lang/Object;

    invoke-virtual {p1, v2}, Liw;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_29

    move-result-object v0

    goto :goto_11

    .line 263
    :catch_29
    move-exception v0

    invoke-static {v0}, Lme;->a(Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 271
    :cond_2e
    return-object v0
.end method

.method public final a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Liy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lil$c;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
