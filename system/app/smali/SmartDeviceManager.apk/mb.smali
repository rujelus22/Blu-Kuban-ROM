.class public final Lmb;
.super Ljava/lang/Object;
.source "a"


# static fields
.field public static final a:Lmb;


# instance fields
.field protected final b:Lmc;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lmb;

    invoke-direct {v0}, Lmb;-><init>()V

    sput-object v0, Lmb;->a:Lmb;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lmc;

    invoke-direct {v0, p0}, Lmc;-><init>(Lmb;)V

    iput-object v0, p0, Lmb;->b:Lmc;

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Llw;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Llw;"
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Llw;

    invoke-direct {v0, p0}, Llw;-><init>(Ljava/lang/reflect/Type;)V

    .line 731
    invoke-virtual {v0}, Llw;->e()Ljava/lang/Class;

    move-result-object v1

    .line 732
    if-ne v1, p1, :cond_c

    .line 745
    :goto_b
    return-object v0

    .line 736
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 737
    if-eqz v1, :cond_1f

    .line 738
    invoke-static {v1, p1}, Lmb;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Llw;

    move-result-object v1

    .line 739
    if-eqz v1, :cond_1f

    .line 740
    invoke-virtual {v1, v0}, Llw;->b(Llw;)V

    .line 741
    invoke-virtual {v0, v1}, Llw;->a(Llw;)V

    goto :goto_b

    .line 745
    :cond_1f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static a(Ljava/lang/Class;[Lnd;)Lly;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lnd;",
            ")",
            "Lly;"
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    .line 589
    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_3b

    .line 590
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parameter type mismatch for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " parameters, was given "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 593
    :cond_3b
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 594
    const/4 v2, 0x0

    array-length v3, v0

    :goto_40
    if-ge v2, v3, :cond_4d

    .line 595
    aget-object v4, v0, v2

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 597
    :cond_4d
    new-instance v0, Lly;

    invoke-direct {v0, p0, v1, p1}, Lly;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lnd;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Lnd;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    invoke-static {p0, v0}, Llv;->a(Ljava/lang/Class;Lnd;)Llv;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lnd;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p1}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v0

    invoke-static {p2}, Lmb;->a(Ljava/lang/reflect/Type;)Lnd;

    move-result-object v1

    invoke-static {p0, v0, v1}, Llx;->a(Ljava/lang/Class;Lnd;Lnd;)Llx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lnd;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lmb;->a:Lmb;

    iget-object v0, v0, Lmb;->b:Lmc;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmc$a;

    invoke-direct {v2, v1}, Lmc$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lmc;->a(Lmc$a;)Lnd;

    move-result-object v0

    invoke-virtual {v2}, Lmc$a;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v0, "Unexpected tokens after complete type"

    invoke-static {v2, v0}, Lmc;->a(Lmc$a;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1e
    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;)Lnd;
    .registers 3
    .parameter

    .prologue
    .line 61
    sget-object v0, Lmb;->a:Lmb;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Type;Lma;)Lnd;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 79
    sget-object v0, Lmb;->a:Lmb;

    invoke-virtual {v0, p0, p1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v0

    return-object v0
.end method

.method private static a(Llw;Ljava/lang/String;Lma;)Lnd;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 691
    move-object v0, p2

    move-object v1, p1

    move-object v2, p0

    :goto_3
    if-eqz v2, :cond_49

    invoke-virtual {v2}, Llw;->c()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 692
    invoke-virtual {v2}, Llw;->e()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 693
    const/4 v4, 0x0

    array-length v5, v3

    :goto_15
    if-ge v4, v5, :cond_49

    .line 694
    aget-object v6, v3, v4

    .line 695
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 697
    invoke-virtual {v2}, Llw;->d()Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object p0, v1, v4

    .line 698
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_3f

    .line 699
    invoke-virtual {v2}, Llw;->b()Llw;

    move-result-object v1

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_3

    .line 702
    :cond_3f
    sget-object v1, Lmb;->a:Lmb;

    invoke-virtual {v1, p0, v0}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v0

    .line 706
    :goto_45
    return-object v0

    .line 693
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 706
    :cond_49
    sget-object v0, Lmb;->a:Lmb;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    goto :goto_45
.end method

.method public static a(Lnd;Ljava/lang/Class;)Lnd;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 262
    instance-of v0, p0, Lly;

    if-eqz v0, :cond_71

    .line 264
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1a

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 268
    :cond_1a
    invoke-virtual {p0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_4f
    sget-object v0, Lmb;->a:Lmb;

    new-instance v1, Lma;

    invoke-virtual {p0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lma;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 274
    invoke-virtual {p0}, Lnd;->o()Ljava/lang/Object;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_67

    .line 276
    invoke-virtual {v0, v1}, Lnd;->a(Ljava/lang/Object;)V

    .line 278
    :cond_67
    invoke-virtual {p0}, Lnd;->p()Ljava/lang/Object;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_70

    .line 280
    invoke-virtual {v0, v1}, Lnd;->b(Ljava/lang/Object;)V

    .line 286
    :cond_70
    :goto_70
    return-object v0

    :cond_71
    invoke-virtual {p0, p1}, Lnd;->d(Ljava/lang/Class;)Lnd;

    move-result-object v0

    goto :goto_70
.end method

.method private static b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Llw;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Llw;"
        }
    .end annotation

    .prologue
    .line 750
    new-instance v0, Llw;

    invoke-direct {v0, p0}, Llw;-><init>(Ljava/lang/reflect/Type;)V

    .line 751
    invoke-virtual {v0}, Llw;->e()Ljava/lang/Class;

    move-result-object v1

    .line 752
    if-ne v1, p1, :cond_c

    .line 779
    :goto_b
    return-object v0

    .line 756
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 759
    if-eqz v2, :cond_28

    .line 760
    array-length v3, v2

    const/4 v4, 0x0

    :goto_14
    if-ge v4, v3, :cond_28

    aget-object v5, v2, v4

    .line 761
    invoke-static {v5, p1}, Lmb;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Llw;

    move-result-object v5

    .line 762
    if-eqz v5, :cond_25

    .line 763
    invoke-virtual {v5, v0}, Llw;->b(Llw;)V

    .line 764
    invoke-virtual {v0, v5}, Llw;->a(Llw;)V

    goto :goto_b

    .line 760
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 770
    :cond_28
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 771
    if-eqz v1, :cond_3b

    .line 772
    invoke-static {v1, p1}, Lmb;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Llw;

    move-result-object v1

    .line 773
    if-eqz v1, :cond_3b

    .line 774
    invoke-virtual {v1, v0}, Llw;->b(Llw;)V

    .line 775
    invoke-virtual {v0, v1}, Llw;->a(Llw;)V

    goto :goto_b

    .line 779
    :cond_3b
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private b(Ljava/lang/Class;)Lnd;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 662
    const-class v0, Ljava/util/Map;

    invoke-static {p1, v0}, Lmb;->b(Ljava/lang/Class;Ljava/lang/Class;)[Lnd;

    move-result-object v0

    .line 664
    if-nez v0, :cond_19

    .line 665
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v1

    invoke-static {p1, v0, v1}, Llx;->a(Ljava/lang/Class;Lnd;Lnd;)Llx;

    move-result-object v0

    .line 671
    :goto_18
    return-object v0

    .line 668
    :cond_19
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_40

    .line 669
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange Map type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": can not determine type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_40
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {p1, v1, v0}, Llx;->a(Ljava/lang/Class;Lnd;Lnd;)Llx;

    move-result-object v0

    goto :goto_18
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Class;)[Lnd;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 315
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p0, p1}, Lmb;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Llw;

    move-result-object v0

    .line 317
    :goto_a
    if-nez v0, :cond_3c

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a subtype of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_37
    invoke-static {p0, p1}, Lmb;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Llw;

    move-result-object v0

    goto :goto_a

    .line 322
    :cond_3c
    :goto_3c
    invoke-virtual {v0}, Llw;->a()Llw;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 323
    invoke-virtual {v0}, Llw;->a()Llw;

    move-result-object v0

    goto :goto_3c

    .line 326
    :cond_47
    invoke-virtual {v0}, Llw;->c()Z

    move-result v1

    if-nez v1, :cond_4f

    .line 327
    const/4 v0, 0x0

    .line 346
    :goto_4e
    return-object v0

    .line 332
    :cond_4f
    invoke-virtual {v0}, Llw;->d()Ljava/lang/reflect/ParameterizedType;

    move-result-object v1

    .line 333
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 334
    array-length v2, v1

    new-array v2, v2, [Lnd;

    .line 336
    new-instance v3, Lma;

    invoke-direct {v3, p0}, Lma;-><init>(Ljava/lang/Class;)V

    .line 337
    const/4 v4, 0x0

    array-length v5, v1

    :goto_61
    if-ge v4, v5, :cond_85

    .line 338
    aget-object p0, v1, v4

    .line 340
    instance-of v6, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_7c

    .line 341
    invoke-virtual {v0}, Llw;->b()Llw;

    move-result-object v6

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lmb;->a(Llw;Ljava/lang/String;Lma;)Lnd;

    move-result-object v6

    aput-object v6, v2, v4

    .line 337
    :goto_79
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 343
    :cond_7c
    sget-object v6, Lmb;->a:Lmb;

    invoke-virtual {v6, p0, v3}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v6

    aput-object v6, v2, v4

    goto :goto_79

    :cond_85
    move-object v0, v2

    .line 346
    goto :goto_4e
.end method

.method public static b(Lnd;Ljava/lang/Class;)[Lnd;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 370
    invoke-virtual {p0}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 371
    if-ne v0, p1, :cond_1e

    .line 373
    invoke-virtual {p0}, Lnd;->f()I

    move-result v0

    .line 374
    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 387
    :goto_d
    return-object v0

    .line 375
    :cond_e
    new-array v1, v0, [Lnd;

    .line 376
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1c

    .line 377
    invoke-virtual {p0, v2}, Lnd;->b(I)Lnd;

    move-result-object v3

    aput-object v3, v1, v2

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1c
    move-object v0, v1

    .line 379
    goto :goto_d

    .line 387
    :cond_1e
    invoke-static {v0, p1}, Lmb;->b(Ljava/lang/Class;Ljava/lang/Class;)[Lnd;

    move-result-object v0

    goto :goto_d
.end method

.method private c(Ljava/lang/Class;)Lnd;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 676
    const-class v0, Ljava/util/Collection;

    invoke-static {p1, v0}, Lmb;->b(Ljava/lang/Class;Ljava/lang/Class;)[Lnd;

    move-result-object v0

    .line 678
    if-nez v0, :cond_13

    .line 679
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    invoke-static {p1, v0}, Llv;->a(Ljava/lang/Class;Lnd;)Llv;

    move-result-object v0

    .line 685
    :goto_12
    return-object v0

    .line 682
    :cond_13
    array-length v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3a

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Strange Collection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": can not determine type parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_3a
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Llv;->a(Ljava/lang/Class;Lnd;)Llv;

    move-result-object v0

    goto :goto_12
.end method


# virtual methods
.method protected final a(Ljava/lang/Class;)Lnd;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 454
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v0

    invoke-static {v0}, Llt;->a(Lnd;)Llt;

    move-result-object v0

    .line 472
    :goto_13
    return-object v0

    .line 459
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 460
    new-instance v0, Lly;

    invoke-direct {v0, p1}, Lly;-><init>(Ljava/lang/Class;)V

    goto :goto_13

    .line 466
    :cond_20
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 467
    invoke-direct {p0, p1}, Lmb;->b(Ljava/lang/Class;)Lnd;

    move-result-object v0

    goto :goto_13

    .line 469
    :cond_2d
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 470
    invoke-direct {p0, p1}, Lmb;->c(Ljava/lang/Class;)Lnd;

    move-result-object v0

    goto :goto_13

    .line 472
    :cond_3a
    new-instance v0, Lly;

    invoke-direct {v0, p1}, Lly;-><init>(Ljava/lang/Class;)V

    goto :goto_13
.end method

.method protected final a(Ljava/lang/Class;Ljava/util/List;)Lnd;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lnd;",
            ">;)",
            "Lnd;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 481
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 482
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v0

    invoke-static {v0}, Llt;->a(Lnd;)Llt;

    move-result-object v0

    .line 508
    :goto_14
    return-object v0

    .line 484
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 485
    new-instance v0, Lly;

    invoke-direct {v0, p1}, Lly;-><init>(Ljava/lang/Class;)V

    goto :goto_14

    .line 487
    :cond_21
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 490
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_50

    .line 491
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnd;

    .line 492
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_49

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnd;

    move-object v1, p0

    .line 494
    :goto_44
    invoke-static {p1, v0, v1}, Llx;->a(Ljava/lang/Class;Lnd;Lnd;)Llx;

    move-result-object v0

    goto :goto_14

    .line 492
    :cond_49
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v1

    goto :goto_44

    .line 496
    :cond_50
    invoke-direct {p0, p1}, Lmb;->b(Ljava/lang/Class;)Lnd;

    move-result-object v0

    goto :goto_14

    .line 498
    :cond_55
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 499
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6e

    .line 500
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnd;

    invoke-static {p1, p0}, Llv;->a(Ljava/lang/Class;Lnd;)Llv;

    move-result-object v0

    goto :goto_14

    .line 502
    :cond_6e
    invoke-direct {p0, p1}, Lmb;->c(Ljava/lang/Class;)Lnd;

    move-result-object v0

    goto :goto_14

    .line 504
    :cond_73
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7f

    .line 505
    new-instance v0, Lly;

    invoke-direct {v0, p1}, Lly;-><init>(Ljava/lang/Class;)V

    goto :goto_14

    .line 507
    :cond_7f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lnd;

    invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lnd;

    .line 508
    invoke-static {p1, p0}, Lmb;->a(Ljava/lang/Class;[Lnd;)Lly;

    move-result-object v0

    goto :goto_14
.end method

.method public final b(Ljava/lang/reflect/Type;Lma;)Lnd;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 519
    move-object v1, p2

    move-object v2, p0

    move-object p0, p1

    :goto_4
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_16

    .line 520
    check-cast p0, Ljava/lang/Class;

    .line 524
    if-nez v1, :cond_11

    .line 525
    new-instance v0, Lma;

    invoke-direct {v0, p0}, Lma;-><init>(Ljava/lang/Class;)V

    .line 527
    :cond_11
    invoke-virtual {v2, p0}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    .line 537
    :goto_15
    return-object v0

    .line 530
    :cond_16
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_75

    .line 531
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_40

    aget-object v4, v3, v6

    invoke-virtual {v2, v4, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v1

    invoke-static {v0, v4, v1}, Llx;->a(Ljava/lang/Class;Lnd;Lnd;)Llx;

    move-result-object v0

    goto :goto_15

    :cond_40
    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_53

    aget-object v3, v3, v6

    invoke-virtual {v2, v3, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v1

    invoke-static {v0, v1}, Llv;->a(Ljava/lang/Class;Lnd;)Llv;

    move-result-object v0

    goto :goto_15

    :cond_53
    if-nez v3, :cond_5f

    move v4, v6

    :goto_56
    if-nez v4, :cond_61

    new-instance v1, Lly;

    invoke-direct {v1, v0}, Lly;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_15

    :cond_5f
    array-length v4, v3

    goto :goto_56

    :cond_61
    new-array v5, v4, [Lnd;

    :goto_63
    if-ge v6, v4, :cond_70

    aget-object v7, v3, v6

    invoke-virtual {v2, v7, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_63

    :cond_70
    invoke-static {v0, v5}, Lmb;->a(Ljava/lang/Class;[Lnd;)Lly;

    move-result-object v0

    goto :goto_15

    .line 533
    :cond_75
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_88

    .line 534
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lmb;->b(Ljava/lang/reflect/Type;Lma;)Lnd;

    move-result-object v0

    invoke-static {v0}, Llt;->a(Lnd;)Llt;

    move-result-object v0

    goto :goto_15

    .line 536
    :cond_88
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_b1

    .line 537
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_98

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lmb;->a(Ljava/lang/Class;)Lnd;

    move-result-object v0

    goto/16 :goto_15

    :cond_98
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lma;->a(Ljava/lang/String;)Lnd;

    move-result-object v3

    if-eqz v3, :cond_a5

    move-object v0, v3

    goto/16 :goto_15

    :cond_a5
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v0}, Lma;->b(Ljava/lang/String;)V

    aget-object v0, v3, v6

    move-object p0, v0

    goto/16 :goto_4

    .line 539
    :cond_b1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_c0

    .line 540
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v6

    move-object p0, v0

    goto/16 :goto_4

    .line 543
    :cond_c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
