.class public final Laqt;
.super Ljava/lang/Object;
.source "InjectionPoint.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final a:LanP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanP",
            "<*>;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/reflect/Member;

.field private final a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Laqt;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Laqt;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(LanP;Ljava/lang/reflect/Constructor;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Laqt;->a:Ljava/lang/reflect/Member;

    .line 78
    iput-object p1, p0, Laqt;->a:LanP;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Laqt;->a:Z

    .line 80
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Laqt;->a(Ljava/lang/reflect/Member;LanP;[[Ljava/lang/annotation/Annotation;)LaiA;

    move-result-object v0

    iput-object v0, p0, Laqt;->a:LaiA;

    .line 82
    return-void
.end method

.method constructor <init>(LanP;Ljava/lang/reflect/Field;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Laqt;->a:Ljava/lang/reflect/Member;

    .line 86
    iput-object p1, p0, Laqt;->a:LanP;

    .line 87
    iput-boolean p3, p0, Laqt;->a:Z

    .line 89
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 91
    new-instance v3, Laoy;

    invoke-direct {v3, p2}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 92
    const/4 v0, 0x0

    .line 94
    :try_start_13
    invoke-virtual {p1, p2}, LanP;->a(Ljava/lang/reflect/Field;)LanP;

    move-result-object v1

    invoke-static {v1, p2, v2, v3}, LanY;->a(LanP;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Laoy;)Lant;
    :try_end_1a
    .catch Lani; {:try_start_13 .. :try_end_1a} :catch_2e
    .catch LaoE; {:try_start_13 .. :try_end_1a} :catch_37

    move-result-object v0

    .line 100
    :goto_1b
    invoke-virtual {v3}, Laoy;->a()V

    .line 102
    invoke-static {v2}, Lapp;->a([Ljava/lang/annotation/Annotation;)Z

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Laqt;->a(Lant;ZI)Laqk;

    move-result-object v0

    invoke-static {v0}, LaiA;->a(Ljava/lang/Object;)LaiA;

    move-result-object v0

    iput-object v0, p0, Laqt;->a:LaiA;

    .line 104
    return-void

    .line 95
    :catch_2e
    move-exception v1

    .line 96
    invoke-virtual {v1}, Lani;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1}, Laoy;->a(Ljava/util/Collection;)Laoy;

    goto :goto_1b

    .line 97
    :catch_37
    move-exception v1

    .line 98
    invoke-virtual {v1}, LaoE;->a()Laoy;

    move-result-object v1

    invoke-virtual {v3, v1}, Laoy;->a(Laoy;)Laoy;

    goto :goto_1b
.end method

.method constructor <init>(LanP;Ljava/lang/reflect/Method;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Laqt;->a:Ljava/lang/reflect/Member;

    .line 71
    iput-object p1, p0, Laqt;->a:LanP;

    .line 72
    iput-boolean p3, p0, Laqt;->a:Z

    .line 73
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Laqt;->a(Ljava/lang/reflect/Member;LanP;[[Ljava/lang/annotation/Annotation;)LaiA;

    move-result-object v0

    iput-object v0, p0, Laqt;->a:LaiA;

    .line 74
    return-void
.end method

.method private a(Ljava/lang/reflect/Member;LanP;[[Ljava/lang/annotation/Annotation;)LaiA;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "LanP",
            "<*>;[[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "LaiA",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v3, Laoy;

    invoke-direct {v3, p1}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 109
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 111
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 112
    const/4 v0, 0x0

    .line 114
    invoke-virtual {p2, p1}, LanP;->a(Ljava/lang/reflect/Member;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v0

    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanP;

    .line 116
    :try_start_27
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/annotation/Annotation;

    .line 117
    invoke-static {v0, p1, v1, v3}, LanY;->a(LanP;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;Laoy;)Lant;

    move-result-object v0

    .line 118
    invoke-static {v1}, Lapp;->a([Ljava/lang/annotation/Annotation;)Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Laqt;->a(Lant;ZI)Laqk;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lani; {:try_start_27 .. :try_end_3c} :catch_41
    .catch LaoE; {:try_start_27 .. :try_end_3c} :catch_4b

    .line 119
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_3f
    move v2, v0

    .line 124
    goto :goto_1b

    .line 120
    :catch_41
    move-exception v0

    .line 121
    invoke-virtual {v0}, Lani;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v3, v0}, Laoy;->a(Ljava/util/Collection;)Laoy;

    move v0, v2

    .line 124
    goto :goto_3f

    .line 122
    :catch_4b
    move-exception v0

    .line 123
    invoke-virtual {v0}, LaoE;->a()Laoy;

    move-result-object v0

    invoke-virtual {v3, v0}, Laoy;->a(Laoy;)Laoy;

    move v0, v2

    goto :goto_3f

    .line 127
    :cond_55
    invoke-virtual {v3}, Laoy;->a()V

    .line 128
    invoke-static {v5}, LaiA;->a(Ljava/util/Collection;)LaiA;

    move-result-object v0

    return-object v0
.end method

.method private a(Lant;ZI)Laqk;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lant",
            "<TT;>;ZI)",
            "Laqk",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Laqk;

    invoke-direct {v0, p0, p1, p2, p3}, Laqk;-><init>(Laqt;Lant;ZI)V

    return-object v0
.end method

.method public static a(LanP;)Laqt;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;)",
            "Laqt;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-virtual {p0}, LanP;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lapk;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 242
    new-instance v6, Laoy;

    invoke-direct {v6, v5}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 244
    const/4 v1, 0x0

    .line 245
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v7

    array-length v8, v7

    move v4, v3

    :goto_15
    if-ge v4, v8, :cond_48

    aget-object v2, v7, v4

    .line 248
    const-class v0, Lanr;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lanr;

    .line 249
    if-nez v0, :cond_43

    .line 250
    const-class v0, LasR;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, LasR;

    .line 251
    if-nez v0, :cond_33

    move-object v0, v1

    .line 245
    :goto_2e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-object v1, v0

    goto :goto_15

    :cond_33
    move v0, v3

    .line 259
    :goto_34
    if-eqz v0, :cond_39

    .line 260
    invoke-virtual {v6, v2}, Laoy;->a(Ljava/lang/reflect/Constructor;)Laoy;

    .line 263
    :cond_39
    if-eqz v1, :cond_3e

    .line 264
    invoke-virtual {v6, v5}, Laoy;->d(Ljava/lang/Class;)Laoy;

    .line 268
    :cond_3e
    invoke-static {v2, v6}, Laqt;->a(Ljava/lang/reflect/Member;Laoy;)Z

    move-object v0, v2

    goto :goto_2e

    .line 256
    :cond_43
    invoke-interface {v0}, Lanr;->a()Z

    move-result v0

    goto :goto_34

    .line 271
    :cond_48
    invoke-virtual {v6}, Laoy;->a()V

    .line 273
    if-eqz v1, :cond_53

    .line 274
    new-instance v0, Laqt;

    invoke-direct {v0, p0, v1}, Laqt;-><init>(LanP;Ljava/lang/reflect/Constructor;)V

    .line 289
    :goto_52
    return-object v0

    .line 279
    :cond_53
    const/4 v0, 0x0

    :try_start_54
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_89

    .line 284
    invoke-virtual {v6, v5}, Laoy;->c(Ljava/lang/Class;)Laoy;

    .line 285
    new-instance v0, Lani;

    invoke-virtual {v6}, Laoy;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lani;-><init>(Ljava/lang/Iterable;)V

    throw v0
    :try_end_7b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_54 .. :try_end_7b} :catch_7b

    .line 290
    :catch_7b
    move-exception v0

    .line 291
    invoke-virtual {v6, v5}, Laoy;->c(Ljava/lang/Class;)Laoy;

    .line 292
    new-instance v0, Lani;

    invoke-virtual {v6}, Laoy;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lani;-><init>(Ljava/lang/Iterable;)V

    throw v0

    .line 288
    :cond_89
    :try_start_89
    invoke-static {v1, v6}, Laqt;->a(Ljava/lang/reflect/Member;Laoy;)Z

    .line 289
    new-instance v0, Laqt;

    invoke-direct {v0, p0, v1}, Laqt;-><init>(LanP;Ljava/lang/reflect/Constructor;)V
    :try_end_91
    .catch Ljava/lang/NoSuchMethodException; {:try_start_89 .. :try_end_91} :catch_7b

    goto :goto_52
.end method

.method static a(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;
    .registers 2
    .parameter

    .prologue
    .line 478
    const-class v0, LasR;

    invoke-interface {p0, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 479
    if-nez v0, :cond_e

    const-class v0, Lanr;

    invoke-interface {p0, v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method private static a(LanP;)Ljava/util/List;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "LanP",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    :goto_5
    invoke-virtual {p0}, LanP;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1d

    .line 766
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    invoke-virtual {p0}, LanP;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, LanP;->c(Ljava/lang/Class;)LanP;

    move-result-object p0

    goto :goto_5

    .line 769
    :cond_1d
    return-object v0
.end method

.method public static a(LanP;)Ljava/util/Set;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Laoy;

    invoke-direct {v0}, Laoy;-><init>()V

    .line 366
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Laqt;->a(LanP;ZLaoy;)Ljava/util/Set;

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Laoy;->a()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 368
    new-instance v2, Lani;

    invoke-virtual {v0}, Laoy;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lani;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v2, v1}, Lani;->a(Ljava/lang/Object;)Lani;

    move-result-object v0

    throw v0

    .line 370
    :cond_1e
    return-object v1
.end method

.method private static a(LanP;ZLaoy;)Ljava/util/Set;
    .registers 16
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanP",
            "<*>;Z",
            "Laoy;",
            ")",
            "Ljava/util/Set",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v6, Laqw;

    invoke-direct {v6}, Laqw;-><init>()V

    .line 645
    const/4 v1, 0x0

    .line 647
    invoke-static {p0}, Laqt;->a(LanP;)Ljava/util/List;

    move-result-object v7

    .line 648
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move v2, v3

    move-object v4, v1

    .line 649
    :goto_12
    if-ltz v2, :cond_de

    .line 650
    if-eqz v4, :cond_1e

    if-ge v2, v3, :cond_1e

    .line 652
    if-nez v2, :cond_5e

    .line 653
    sget-object v0, Laqz;->c:Laqz;

    iput-object v0, v4, Laqy;->a:Laqz;

    .line 659
    :cond_1e
    :goto_1e
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LanP;

    .line 661
    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v8, v5

    const/4 v1, 0x0

    :goto_2e
    if-ge v1, v8, :cond_63

    aget-object v9, v5, v1

    .line 662
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v10

    if-ne v10, p1, :cond_5b

    .line 663
    invoke-static {v9}, Laqt;->a(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    .line 664
    if-eqz v10, :cond_5b

    .line 665
    new-instance v11, Laqu;

    invoke-direct {v11, v0, v9, v10}, Laqu;-><init>(LanP;Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;)V

    .line 666
    iget-boolean v10, v11, Laqu;->b:Z

    if-eqz v10, :cond_58

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v10

    if-eqz v10, :cond_58

    .line 667
    invoke-virtual {p2, v9}, Laoy;->a(Ljava/lang/reflect/Field;)Laoy;

    .line 669
    :cond_58
    invoke-virtual {v6, v11}, Laqw;->a(Laqv;)V

    .line 661
    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 655
    :cond_5e
    sget-object v0, Laqz;->b:Laqz;

    iput-object v0, v4, Laqy;->a:Laqz;

    goto :goto_1e

    .line 674
    :cond_63
    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    const/4 v1, 0x0

    move v5, v1

    move-object v1, v4

    :goto_6f
    if-ge v5, v9, :cond_d8

    aget-object v10, v8, v5

    .line 675
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-ne v4, p1, :cond_a8

    .line 676
    invoke-static {v10}, Laqt;->a(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 677
    if-eqz v4, :cond_c4

    .line 678
    new-instance v11, Laqx;

    invoke-direct {v11, v0, v10, v4}, Laqx;-><init>(LanP;Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)V

    .line 680
    invoke-static {v10, p2}, Laqt;->a(Ljava/lang/reflect/Member;Laoy;)Z

    move-result v12

    invoke-static {v11, p2}, Laqt;->a(Laqx;Laoy;)Z

    move-result v4

    if-nez v4, :cond_ac

    const/4 v4, 0x1

    :goto_93
    or-int/2addr v4, v12

    if-eqz v4, :cond_ae

    .line 682
    if-eqz v1, :cond_a8

    .line 683
    const/4 v4, 0x0

    invoke-virtual {v1, v10, v4, v11}, Laqy;->a(Ljava/lang/reflect/Method;ZLaqx;)Z

    move-result v4

    .line 684
    if-eqz v4, :cond_a8

    .line 685
    sget-object v4, Laqt;->a:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Method: {0} is not a valid injectable method (because it either has misplaced binding annotations or specifies type parameters) but is overriding a method that is valid. Because it is not valid, the method will not be injected. To fix this, make the method a valid injectable method."

    invoke-virtual {v4, v11, v12, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    :cond_a8
    :goto_a8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6f

    .line 680
    :cond_ac
    const/4 v4, 0x0

    goto :goto_93

    .line 694
    :cond_ae
    if-eqz p1, :cond_b4

    .line 695
    invoke-virtual {v6, v11}, Laqw;->a(Laqv;)V

    goto :goto_a8

    .line 697
    :cond_b4
    if-nez v1, :cond_bf

    .line 704
    new-instance v1, Laqy;

    invoke-direct {v1, v6}, Laqy;-><init>(Laqw;)V

    .line 710
    :goto_bb
    invoke-virtual {v1, v11}, Laqy;->a(Laqx;)V

    goto :goto_a8

    .line 708
    :cond_bf
    const/4 v4, 0x1

    invoke-virtual {v1, v10, v4, v11}, Laqy;->a(Ljava/lang/reflect/Method;ZLaqx;)Z

    goto :goto_bb

    .line 713
    :cond_c4
    if-eqz v1, :cond_a8

    .line 714
    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v4, v11}, Laqy;->a(Ljava/lang/reflect/Method;ZLaqx;)Z

    move-result v4

    .line 715
    if-eqz v4, :cond_a8

    .line 716
    sget-object v4, Laqt;->a:Ljava/util/logging/Logger;

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Method: {0} is not annotated with @Inject but is overriding a method that is annotated with @javax.inject.Inject.  Because it is not annotated with @Inject, the method will not be injected. To fix this, annotate the method with @Inject."

    invoke-virtual {v4, v11, v12, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a8

    .line 649
    :cond_d8
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-object v4, v1

    goto/16 :goto_12

    .line 727
    :cond_de
    invoke-virtual {v6}, Laqw;->a()Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 728
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 742
    :goto_e8
    return-object v0

    .line 731
    :cond_e9
    invoke-static {}, LaiE;->a()LaiG;

    move-result-object v2

    .line 732
    iget-object v0, v6, Laqw;->a:Laqv;

    move-object v1, v0

    :goto_f0
    if-eqz v1, :cond_10a

    .line 735
    :try_start_f2
    invoke-virtual {v1}, Laqv;->a()Laqt;

    move-result-object v0

    invoke-virtual {v2, v0}, LaiG;->a(Ljava/lang/Object;)LaiG;
    :try_end_f9
    .catch Lani; {:try_start_f2 .. :try_end_f9} :catch_fd

    .line 733
    :cond_f9
    :goto_f9
    iget-object v0, v1, Laqv;->b:Laqv;

    move-object v1, v0

    goto :goto_f0

    .line 736
    :catch_fd
    move-exception v0

    .line 737
    iget-boolean v3, v1, Laqv;->a:Z

    if-nez v3, :cond_f9

    .line 738
    invoke-virtual {v0}, Lani;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Laoy;->a(Ljava/util/Collection;)Laoy;

    goto :goto_f9

    .line 742
    :cond_10a
    invoke-virtual {v2}, LaiG;->a()LaiE;

    move-result-object v0

    goto :goto_e8
.end method

.method public static a(Ljava/lang/Class;)Ljava/util/Set;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {p0}, LanP;->b(Ljava/lang/Class;)LanP;

    move-result-object v0

    invoke-static {v0}, Laqt;->a(LanP;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static a(Laqx;Laoy;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 747
    const/4 v0, 0x1

    .line 748
    iget-boolean v2, p0, Laqx;->b:Z

    if-eqz v2, :cond_21

    .line 749
    iget-object v2, p0, Laqx;->a:Ljava/lang/reflect/Method;

    .line 750
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 751
    invoke-virtual {p1, v2}, Laoy;->a(Ljava/lang/reflect/Method;)Laoy;

    move v0, v1

    .line 754
    :cond_16
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_21

    .line 755
    invoke-virtual {p1, v2}, Laoy;->b(Ljava/lang/reflect/Method;)Laoy;

    move v0, v1

    .line 759
    :cond_21
    return v0
.end method

.method private static a(Ljava/lang/reflect/Member;Laoy;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 392
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p1, p0, v0}, LanY;->a(Laoy;Ljava/lang/reflect/Member;[Ljava/lang/annotation/Annotation;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 394
    if-nez v0, :cond_10

    move v0, v1

    .line 410
    :goto_f
    return v0

    .line 400
    :cond_10
    instance-of v2, p0, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_25

    .line 402
    :try_start_14
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_1f} :catch_24

    move-result-object v2

    if-eqz v2, :cond_25

    move v0, v1

    .line 403
    goto :goto_f

    .line 405
    :catch_24
    move-exception v1

    .line 409
    :cond_25
    invoke-virtual {p1, p0, v0}, Laoy;->a(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Laoy;

    .line 410
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static synthetic a(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {p0, p1}, Laqt;->b(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 778
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 779
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 780
    :cond_10
    const/4 v0, 0x1

    .line 786
    :goto_11
    return v0

    .line 782
    :cond_12
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 783
    const/4 v0, 0x0

    goto :goto_11

    .line 786
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11
.end method


# virtual methods
.method public a()LanP;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LanP",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Laqt;->a:LanP;

    return-object v0
.end method

.method public a()Ljava/lang/reflect/Member;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Laqt;->a:Ljava/lang/reflect/Member;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Laqt;->a:LaiA;

    return-object v0
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 171
    iget-object v0, p0, Laqt;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/AnnotatedElement;

    const-class v1, LaqR;

    invoke-interface {v0, v1}, Ljava/lang/reflect/AnnotatedElement;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 186
    instance-of v0, p1, Laqt;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Laqt;->a:Ljava/lang/reflect/Member;

    move-object v0, p1

    check-cast v0, Laqt;

    iget-object v0, v0, Laqt;->a:Ljava/lang/reflect/Member;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Laqt;->a:LanP;

    check-cast p1, Laqt;

    iget-object v1, p1, Laqt;->a:LanP;

    invoke-virtual {v0, v1}, LanP;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Laqt;->a:Ljava/lang/reflect/Member;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Laqt;->a:LanP;

    invoke-virtual {v1}, LanP;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Laqt;->a:Ljava/lang/reflect/Member;

    invoke-static {v0}, LapV;->a(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
