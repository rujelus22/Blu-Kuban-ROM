.class public final Ljl;
.super Ljk;
.source "a"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field final c:Lgy;

.field final d:Lha$a;

.field final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field f:Ljt;

.field g:Ljm;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljm;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljq;

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljn;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/util/List;Lgy;Lha$a;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lgy;",
            "Lha$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0}, Ljk;-><init>()V

    .line 121
    iput-object p1, p0, Ljl;->a:Ljava/lang/Class;

    .line 122
    iput-object p2, p0, Ljl;->b:Ljava/util/Collection;

    .line 123
    iput-object p3, p0, Ljl;->c:Lgy;

    .line 124
    iput-object p4, p0, Ljl;->d:Lha$a;

    .line 125
    iget-object v0, p0, Ljl;->d:Lha$a;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Ljl;->e:Ljava/lang/Class;

    .line 127
    return-void

    .line 125
    :cond_13
    iget-object v0, p0, Ljl;->d:Lha$a;

    iget-object v1, p0, Ljl;->a:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lha$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Ljava/lang/Class;Lgy;Lha$a;)Ljl;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lgy;",
            "Lha$a;",
            ")",
            "Ljl;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lme;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 139
    new-instance v1, Ljl;

    invoke-direct {v1, p0, v0, p1, p2}, Ljl;-><init>(Ljava/lang/Class;Ljava/util/List;Lgy;Lha$a;)V

    .line 140
    invoke-direct {v1}, Ljl;->h()V

    .line 141
    return-object v1
.end method

.method private a(Ljava/lang/reflect/Constructor;Z)Ljm;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;Z)",
            "Ljm;"
        }
    .end annotation

    .prologue
    .line 759
    new-instance v0, Ljm;

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {p0, v1}, Ljl;->a([Ljava/lang/annotation/Annotation;)Ljt;

    move-result-object v1

    if-eqz p2, :cond_11

    const/4 v2, 0x0

    :goto_d
    invoke-direct {v0, p1, v1, v2}, Ljm;-><init>(Ljava/lang/reflect/Constructor;Ljt;[Ljt;)V

    return-object v0

    :cond_11
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v2

    invoke-direct {p0, v2}, Ljl;->a([[Ljava/lang/annotation/Annotation;)[Ljt;

    move-result-object v2

    goto :goto_d
.end method

.method private a(Ljava/lang/reflect/Method;)Ljp;
    .registers 5
    .parameter

    .prologue
    .line 754
    new-instance v0, Ljp;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {p0, v1}, Ljl;->a([Ljava/lang/annotation/Annotation;)Ljt;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljp;-><init>(Ljava/lang/reflect/Method;Ljt;[Ljt;)V

    return-object v0
.end method

.method private a([Ljava/lang/annotation/Annotation;)Ljt;
    .registers 7
    .parameter

    .prologue
    .line 786
    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    .line 787
    if-eqz p1, :cond_1b

    .line 788
    array-length v1, p1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1b

    aget-object v3, p1, v2

    .line 789
    iget-object v4, p0, Ljl;->c:Lgy;

    invoke-virtual {v4, v3}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 790
    invoke-virtual {v0, v3}, Ljt;->b(Ljava/lang/annotation/Annotation;)V

    .line 788
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 794
    :cond_1b
    return-object v0
.end method

.method private a(Ljava/lang/Class;Ljy;Ljq;Ljava/lang/Class;Ljq;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljy;",
            "Ljq;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljq;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 583
    if-eqz p4, :cond_6

    .line 584
    invoke-direct {p0, p2, p3, p4, p5}, Ljl;->a(Ljy;Ljq;Ljava/lang/Class;Ljq;)V

    .line 587
    :cond_6
    if-eqz p1, :cond_47

    .line 589
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    move v3, v7

    :goto_e
    if-ge v3, v2, :cond_47

    aget-object v0, v1, v3

    .line 590
    invoke-static {v0, p2}, Ljl;->a(Ljava/lang/reflect/Method;Ljy;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 591
    invoke-virtual {p3, v0}, Ljq;->a(Ljava/lang/reflect/Method;)Ljp;

    move-result-object v4

    .line 594
    if-nez v4, :cond_43

    .line 595
    invoke-direct {p0, v0}, Ljl;->a(Ljava/lang/reflect/Method;)Ljp;

    move-result-object v4

    .line 596
    invoke-virtual {p3, v4}, Ljq;->a(Ljp;)V

    .line 598
    iget-object v5, p5, Ljq;->a:Ljava/util/LinkedHashMap;

    if-eqz v5, :cond_41

    iget-object v5, p5, Ljq;->a:Ljava/util/LinkedHashMap;

    new-instance v6, Ljx;

    invoke-direct {v6, v0}, Ljx;-><init>(Ljava/lang/reflect/Method;)V

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 599
    :goto_36
    if-eqz v0, :cond_3d

    .line 600
    iget-object v0, v0, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-direct {p0, v0, v4, v7}, Ljl;->a(Ljava/lang/reflect/Method;Ljp;Z)V

    .line 589
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_e

    .line 598
    :cond_41
    const/4 v0, 0x0

    goto :goto_36

    .line 607
    :cond_43
    invoke-direct {p0, v0, v4}, Ljl;->a(Ljava/lang/reflect/Method;Ljp;)V

    goto :goto_3d

    .line 611
    :cond_47
    return-void
.end method

.method private a(Ljava/lang/reflect/Constructor;Ljm;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljm;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 847
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 848
    iget-object v4, p0, Ljl;->c:Lgy;

    invoke-virtual {v4, v3}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 849
    invoke-virtual {p2, v3}, Ljm;->a(Ljava/lang/annotation/Annotation;)V

    .line 847
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 852
    :cond_19
    if-eqz p3, :cond_34

    .line 853
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 854
    array-length v1, v0

    move v2, v7

    :goto_21
    if-ge v2, v1, :cond_34

    .line 855
    aget-object v3, v0, v2

    array-length v4, v3

    move v5, v7

    :goto_27
    if-ge v5, v4, :cond_31

    aget-object v6, v3, v5

    .line 856
    invoke-virtual {p2, v2, v6}, Ljm;->a(ILjava/lang/annotation/Annotation;)V

    .line 855
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 854
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 860
    :cond_34
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;Ljp;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 886
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 887
    iget-object v4, p0, Ljl;->c:Lgy;

    invoke-virtual {v4, v3}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 888
    invoke-virtual {p2, v3}, Ljp;->b(Ljava/lang/annotation/Annotation;)V

    .line 886
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 891
    :cond_18
    return-void
.end method

.method private a(Ljava/lang/reflect/Method;Ljp;Z)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 869
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v7

    :goto_7
    if-ge v2, v1, :cond_19

    aget-object v3, v0, v2

    .line 870
    iget-object v4, p0, Ljl;->c:Lgy;

    invoke-virtual {v4, v3}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 871
    invoke-virtual {p2, v3}, Ljp;->a(Ljava/lang/annotation/Annotation;)V

    .line 869
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 874
    :cond_19
    if-eqz p3, :cond_34

    .line 875
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 876
    array-length v1, v0

    move v2, v7

    :goto_21
    if-ge v2, v1, :cond_34

    .line 877
    aget-object v3, v0, v2

    array-length v4, v3

    move v5, v7

    :goto_27
    if-ge v5, v4, :cond_31

    aget-object v6, v3, v5

    .line 878
    invoke-virtual {p2, v2, v6}, Ljp;->a(ILjava/lang/annotation/Annotation;)V

    .line 877
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 876
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 882
    :cond_34
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/Class;)V
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljn;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 687
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_75

    .line 693
    invoke-direct {p0, p1, v0}, Ljl;->a(Ljava/util/Map;Ljava/lang/Class;)V

    .line 694
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    move v2, v9

    :goto_10
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 696
    invoke-static {v3}, Ljl;->a(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 697
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljn;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-direct {p0, v6}, Ljl;->a([Ljava/lang/annotation/Annotation;)Ljt;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljn;-><init>(Ljava/lang/reflect/Field;Ljt;)V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 707
    :cond_31
    iget-object v0, p0, Ljl;->d:Lha$a;

    if-eqz v0, :cond_75

    .line 708
    iget-object v0, p0, Ljl;->d:Lha$a;

    invoke-interface {v0, p2}, Lha$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 709
    if-eqz v0, :cond_75

    .line 710
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    move v3, v9

    :goto_43
    if-ge v3, v2, :cond_75

    aget-object v4, v1, v3

    invoke-static {v4}, Ljl;->a(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn;

    if-eqz v0, :cond_71

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v4

    array-length v5, v4

    move v6, v9

    :goto_5f
    if-ge v6, v5, :cond_71

    aget-object v7, v4, v6

    iget-object v8, p0, Ljl;->c:Lgy;

    invoke-virtual {v8, v7}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v8

    if-eqz v8, :cond_6e

    invoke-virtual {v0, v7}, Ljn;->a(Ljava/lang/annotation/Annotation;)V

    :cond_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    :cond_71
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_43

    .line 714
    :cond_75
    return-void
.end method

.method private a(Ljt;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljt;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Ljl;->d:Lha$a;

    if-eqz v0, :cond_d

    .line 324
    iget-object v0, p0, Ljl;->d:Lha$a;

    invoke-interface {v0, p2}, Lha$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Ljl;->a(Ljt;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 326
    :cond_d
    return-void
.end method

.method private a(Ljt;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljt;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 331
    if-nez p3, :cond_4

    .line 354
    :cond_3
    return-void

    .line 335
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_a
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 336
    iget-object v4, p0, Ljl;->c:Lgy;

    invoke-virtual {v4, v3}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 337
    invoke-virtual {p1, v3}, Ljt;->a(Ljava/lang/annotation/Annotation;)V

    .line 335
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 347
    :cond_1c
    invoke-static {p3, p2}, Lme;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 348
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v2, v0

    move v3, v6

    :goto_36
    if-ge v3, v2, :cond_24

    aget-object v4, v0, v3

    .line 349
    iget-object v5, p0, Ljl;->c:Lgy;

    invoke-virtual {v5, v4}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 350
    invoke-virtual {p1, v4}, Ljt;->a(Ljava/lang/annotation/Annotation;)V

    .line 348
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_36
.end method

.method private a(Ljy;Ljq;Ljava/lang/Class;Ljq;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljy;",
            "Ljq;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 617
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_24

    aget-object v3, v0, v2

    .line 618
    invoke-static {v3, p1}, Ljl;->a(Ljava/lang/reflect/Method;Ljy;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 619
    invoke-virtual {p2, v3}, Ljq;->a(Ljava/lang/reflect/Method;)Ljp;

    move-result-object v4

    .line 626
    if-eqz v4, :cond_1c

    .line 627
    invoke-direct {p0, v3, v4}, Ljl;->a(Ljava/lang/reflect/Method;Ljp;)V

    .line 617
    :cond_19
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 633
    :cond_1c
    invoke-direct {p0, v3}, Ljl;->a(Ljava/lang/reflect/Method;)Ljp;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljq;->a(Ljp;)V

    goto :goto_19

    .line 636
    :cond_24
    return-void
.end method

.method private static a(Ljava/lang/reflect/Field;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 823
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 831
    :goto_8
    return v0

    .line 827
    :cond_9
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 828
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    move v0, v2

    .line 829
    goto :goto_8

    .line 831
    :cond_1b
    const/4 v0, 0x1

    goto :goto_8
.end method

.method private static a(Ljava/lang/reflect/Method;Ljy;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 805
    if-eqz p1, :cond_b

    invoke-interface {p1, p0}, Ljy;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 815
    :goto_a
    return v0

    .line 812
    :cond_b
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isBridge()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    move v0, v1

    .line 813
    goto :goto_a

    .line 815
    :cond_19
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private a([[Ljava/lang/annotation/Annotation;)[Ljt;
    .registers 6
    .parameter

    .prologue
    .line 776
    array-length v0, p1

    .line 777
    new-array v1, v0, [Ljt;

    .line 778
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 779
    aget-object v3, p1, v2

    invoke-direct {p0, v3}, Ljl;->a([Ljava/lang/annotation/Annotation;)Ljt;

    move-result-object v3

    aput-object v3, v1, v2

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 781
    :cond_11
    return-object v1
.end method

.method public static b(Ljava/lang/Class;Lgy;Lha$a;)Ljl;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lgy;",
            "Lha$a;",
            ")",
            "Ljl;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 154
    new-instance v1, Ljl;

    invoke-direct {v1, p0, v0, p1, p2}, Ljl;-><init>(Ljava/lang/Class;Ljava/util/List;Lgy;Lha$a;)V

    .line 155
    invoke-direct {v1}, Ljl;->h()V

    .line 156
    return-object v1
.end method

.method private c(Ljava/lang/Class;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 454
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Ljl;->h:Ljava/util/List;

    if-nez v1, :cond_37

    move v1, v9

    .line 456
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_d
    if-ge v4, v3, :cond_6c

    aget-object v5, v2, v4

    .line 457
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    packed-switch v6, :pswitch_data_70

    .line 464
    if-nez v0, :cond_4a

    .line 465
    new-array v6, v1, [Ljx;

    move v7, v9

    .line 466
    :goto_1e
    if-ge v7, v1, :cond_4b

    .line 467
    new-instance v8, Ljx;

    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljm;

    invoke-virtual {v0}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-direct {v8, v0}, Ljx;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v8, v6, v7

    .line 466
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1e

    .line 455
    :cond_37
    iget-object v1, p0, Ljl;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_7

    .line 459
    :pswitch_3e
    iget-object v6, p0, Ljl;->g:Ljm;

    if-eqz v6, :cond_47

    .line 460
    iget-object v6, p0, Ljl;->g:Ljm;

    invoke-direct {p0, v5, v6, v9}, Ljl;->a(Ljava/lang/reflect/Constructor;Ljm;Z)V

    .line 456
    :cond_47
    :goto_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_4a
    move-object v6, v0

    .line 470
    :cond_4b
    new-instance v0, Ljx;

    invoke-direct {v0, v5}, Ljx;-><init>(Ljava/lang/reflect/Constructor;)V

    move v7, v9

    .line 472
    :goto_51
    if-ge v7, v1, :cond_6d

    .line 473
    aget-object v8, v6, v7

    invoke-virtual {v0, v8}, Ljx;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 474
    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljm;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v0, v7}, Ljl;->a(Ljava/lang/reflect/Constructor;Ljm;Z)V

    move-object v0, v6

    .line 477
    goto :goto_47

    .line 472
    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_51

    .line 481
    :cond_6c
    return-void

    :cond_6d
    move-object v0, v6

    goto :goto_47

    .line 457
    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3e
    .end packed-switch
.end method

.method private d(Ljava/lang/Class;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 485
    const/4 v0, 0x0

    .line 486
    iget-object v1, p0, Ljl;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 488
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v9

    :goto_e
    if-ge v4, v3, :cond_63

    aget-object v5, v2, v4

    .line 489
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 490
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-eqz v6, :cond_5d

    .line 493
    if-nez v0, :cond_3f

    .line 496
    new-array v6, v1, [Ljx;

    move v7, v9

    .line 497
    :goto_28
    if-ge v7, v1, :cond_40

    .line 498
    new-instance v8, Ljx;

    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    iget-object v0, v0, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-direct {v8, v0}, Ljx;-><init>(Ljava/lang/reflect/Method;)V

    aput-object v8, v6, v7

    .line 497
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_28

    :cond_3f
    move-object v6, v0

    .line 501
    :cond_40
    new-instance v0, Ljx;

    invoke-direct {v0, v5}, Ljx;-><init>(Ljava/lang/reflect/Method;)V

    move v7, v9

    .line 502
    :goto_46
    if-ge v7, v1, :cond_64

    .line 503
    aget-object v8, v6, v7

    invoke-virtual {v0, v8}, Ljx;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_60

    .line 504
    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v0, v7}, Ljl;->a(Ljava/lang/reflect/Method;Ljp;Z)V

    move-object v0, v6

    .line 488
    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 502
    :cond_60
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 510
    :cond_63
    return-void

    :cond_64
    move-object v0, v6

    goto :goto_5d
.end method

.method private h()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 283
    new-instance v0, Ljt;

    invoke-direct {v0}, Ljt;-><init>()V

    iput-object v0, p0, Ljl;->f:Ljt;

    .line 285
    iget-object v0, p0, Ljl;->e:Ljava/lang/Class;

    if-eqz v0, :cond_15

    .line 286
    iget-object v0, p0, Ljl;->f:Ljt;

    iget-object v1, p0, Ljl;->a:Ljava/lang/Class;

    iget-object v2, p0, Ljl;->e:Ljava/lang/Class;

    invoke-direct {p0, v0, v1, v2}, Ljl;->a(Ljt;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 289
    :cond_15
    iget-object v0, p0, Ljl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v1, v0

    move v2, v6

    :goto_1d
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 290
    iget-object v4, p0, Ljl;->c:Lgy;

    invoke-virtual {v4, v3}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 291
    iget-object v4, p0, Ljl;->f:Ljt;

    invoke-virtual {v4, v3}, Ljt;->a(Ljava/lang/annotation/Annotation;)V

    .line 289
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 296
    :cond_31
    iget-object v0, p0, Ljl;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 298
    iget-object v2, p0, Ljl;->f:Ljt;

    invoke-direct {p0, v2, v0}, Ljl;->a(Ljt;Ljava/lang/Class;)V

    .line 299
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v2, v0

    move v3, v6

    :goto_4e
    if-ge v3, v2, :cond_37

    aget-object v4, v0, v3

    .line 300
    iget-object v5, p0, Ljl;->c:Lgy;

    invoke-virtual {v5, v4}, Lgy;->a(Ljava/lang/annotation/Annotation;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 301
    iget-object v5, p0, Ljl;->f:Ljt;

    invoke-virtual {v5, v4}, Ljt;->a(Ljava/lang/annotation/Annotation;)V

    .line 299
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 314
    :cond_62
    iget-object v0, p0, Ljl;->f:Ljt;

    const-class v1, Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Ljl;->a(Ljt;Ljava/lang/Class;)V

    .line 315
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Ljl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Ljl;->f:Ljt;

    if-nez v0, :cond_6

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljl;->f:Ljt;

    invoke-virtual {v0, p1}, Ljt;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_5
.end method

.method public final a(Ljy;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 523
    new-instance v0, Ljq;

    invoke-direct {v0}, Ljq;-><init>()V

    iput-object v0, p0, Ljl;->j:Ljq;

    .line 524
    new-instance v5, Ljq;

    invoke-direct {v5}, Ljq;-><init>()V

    .line 526
    iget-object v1, p0, Ljl;->a:Ljava/lang/Class;

    iget-object v3, p0, Ljl;->j:Ljq;

    iget-object v4, p0, Ljl;->e:Ljava/lang/Class;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljl;->a(Ljava/lang/Class;Ljy;Ljq;Ljava/lang/Class;Ljq;)V

    .line 529
    iget-object v0, p0, Ljl;->b:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 530
    iget-object v0, p0, Ljl;->d:Lha$a;

    if-nez v0, :cond_38

    const/4 v0, 0x0

    move-object v4, v0

    .line 531
    :goto_30
    iget-object v3, p0, Ljl;->j:Ljq;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ljl;->a(Ljava/lang/Class;Ljy;Ljq;Ljava/lang/Class;Ljq;)V

    goto :goto_1e

    .line 530
    :cond_38
    iget-object v0, p0, Ljl;->d:Lha$a;

    invoke-interface {v0, v1}, Lha$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    move-object v4, v0

    goto :goto_30

    .line 534
    :cond_40
    iget-object v0, p0, Ljl;->d:Lha$a;

    if-eqz v0, :cond_53

    .line 535
    iget-object v0, p0, Ljl;->d:Lha$a;

    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, v1}, Lha$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_53

    .line 537
    iget-object v1, p0, Ljl;->j:Ljq;

    invoke-direct {p0, p1, v1, v0, v5}, Ljl;->a(Ljy;Ljq;Ljava/lang/Class;Ljq;)V

    .line 546
    :cond_53
    iget-object v0, v5, Ljq;->a:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_5f

    iget-object v0, v5, Ljq;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-nez v0, :cond_9e

    :cond_5f
    const/4 v0, 0x1

    :goto_60
    if-nez v0, :cond_a0

    .line 547
    invoke-virtual {v5}, Ljq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 548
    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 549
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 551
    :try_start_72
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ljp;->b:[Ljava/lang/Class;

    if-nez v4, :cond_84

    iget-object v4, v0, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    iput-object v4, v0, Ljp;->b:[Ljava/lang/Class;

    :cond_84
    iget-object v4, v0, Ljp;->b:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 552
    if-eqz v2, :cond_66

    .line 553
    invoke-direct {p0, v2}, Ljl;->a(Ljava/lang/reflect/Method;)Ljp;

    move-result-object v2

    .line 554
    iget-object v0, v0, Ljp;->a:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Ljl;->a(Ljava/lang/reflect/Method;Ljp;Z)V

    .line 555
    iget-object v0, p0, Ljl;->j:Ljq;

    invoke-virtual {v0, v2}, Ljq;->a(Ljp;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_9b} :catch_9c

    goto :goto_66

    .line 558
    :catch_9c
    move-exception v0

    goto :goto_66

    :cond_9e
    move v0, v7

    .line 546
    goto :goto_60

    .line 565
    :cond_a0
    iget-object v0, p0, Ljl;->j:Ljq;

    invoke-virtual {v0}, Ljq;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 566
    :cond_a6
    :goto_a6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 568
    iget-object v2, p0, Ljl;->c:Lgy;

    invoke-virtual {v2, v0}, Lgy;->a(Ljp;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 569
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 570
    if-eqz p2, :cond_a6

    .line 571
    iget-object v2, p0, Ljl;->l:Ljava/util/List;

    invoke-static {v2, v0}, Lmd;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljl;->l:Ljava/util/List;

    goto :goto_a6

    .line 575
    :cond_c8
    return-void
.end method

.method public final a(Z)V
    .registers 6
    .parameter

    .prologue
    .line 653
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 654
    iget-object v0, p0, Ljl;->a:Ljava/lang/Class;

    invoke-direct {p0, v1, v0}, Ljl;->a(Ljava/util/Map;Ljava/lang/Class;)V

    .line 660
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 661
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 662
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn;

    .line 663
    iget-object v3, p0, Ljl;->c:Lgy;

    invoke-virtual {v3, v0}, Lgy;->a(Ljn;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 664
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 665
    if-eqz p1, :cond_12

    .line 666
    iget-object v3, p0, Ljl;->m:Ljava/util/List;

    invoke-static {v3, v0}, Lmd;->a(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljl;->m:Ljava/util/List;

    goto :goto_12

    .line 672
    :cond_3a
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 673
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljl;->k:Ljava/util/List;

    .line 678
    :goto_46
    return-void

    .line 675
    :cond_47
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljl;->k:Ljava/util/List;

    .line 676
    iget-object v0, p0, Ljl;->k:Ljava/util/List;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_46
.end method

.method public final b()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Ljl;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Ljl;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    if-nez v0, :cond_9

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 208
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    goto :goto_8
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    if-nez v0, :cond_9

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 216
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    goto :goto_8
.end method

.method public final f()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Ljl;->k:Ljava/util/List;

    if-nez v0, :cond_9

    .line 250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 253
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Ljl;->k:Ljava/util/List;

    goto :goto_8
.end method

.method public final g()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 375
    iput-object v6, p0, Ljl;->h:Ljava/util/List;

    .line 376
    iget-object v0, p0, Ljl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_c
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 377
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    packed-switch v4, :pswitch_data_fc

    .line 382
    iget-object v4, p0, Ljl;->h:Ljava/util/List;

    if-nez v4, :cond_23

    .line 384
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljl;->h:Ljava/util/List;

    .line 386
    :cond_23
    iget-object v4, p0, Ljl;->h:Ljava/util/List;

    invoke-direct {p0, v3, v5}, Ljl;->a(Ljava/lang/reflect/Constructor;Z)Ljm;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 379
    :pswitch_2f
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Ljl;->a(Ljava/lang/reflect/Constructor;Z)Ljm;

    move-result-object v3

    iput-object v3, p0, Ljl;->g:Ljm;

    goto :goto_2c

    .line 391
    :cond_37
    iget-object v0, p0, Ljl;->e:Ljava/lang/Class;

    if-eqz v0, :cond_48

    .line 392
    iget-object v0, p0, Ljl;->g:Ljm;

    if-nez v0, :cond_43

    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    if-eqz v0, :cond_48

    .line 393
    :cond_43
    iget-object v0, p0, Ljl;->e:Ljava/lang/Class;

    invoke-direct {p0, v0}, Ljl;->c(Ljava/lang/Class;)V

    .line 402
    :cond_48
    iget-object v0, p0, Ljl;->g:Ljm;

    if-eqz v0, :cond_58

    .line 403
    iget-object v0, p0, Ljl;->c:Lgy;

    iget-object v1, p0, Ljl;->g:Ljm;

    invoke-virtual {v0, v1}, Lgy;->a(Ljm;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 404
    iput-object v6, p0, Ljl;->g:Ljm;

    .line 407
    :cond_58
    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    if-eqz v0, :cond_7d

    .line 409
    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_62
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_7d

    .line 410
    iget-object v2, p0, Ljl;->c:Lgy;

    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljm;

    invoke-virtual {v2, v0}, Lgy;->a(Ljm;)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 411
    iget-object v0, p0, Ljl;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_62

    .line 416
    :cond_7d
    iput-object v6, p0, Ljl;->i:Ljava/util/List;

    .line 418
    iget-object v0, p0, Ljl;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    move v2, v5

    :goto_87
    if-ge v2, v1, :cond_c4

    aget-object v3, v0, v2

    .line 423
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 424
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    .line 428
    if-lez v4, :cond_c1

    .line 429
    iget-object v4, p0, Ljl;->i:Ljava/util/List;

    if-nez v4, :cond_a7

    .line 432
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ljl;->i:Ljava/util/List;

    .line 434
    :cond_a7
    iget-object v4, p0, Ljl;->i:Ljava/util/List;

    new-instance v5, Ljp;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    invoke-direct {p0, v6}, Ljl;->a([Ljava/lang/annotation/Annotation;)Ljt;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    invoke-direct {p0, v7}, Ljl;->a([[Ljava/lang/annotation/Annotation;)[Ljt;

    move-result-object v7

    invoke-direct {v5, v3, v6, v7}, Ljp;-><init>(Ljava/lang/reflect/Method;Ljt;[Ljt;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    .line 437
    :cond_c4
    iget-object v0, p0, Ljl;->e:Ljava/lang/Class;

    if-eqz v0, :cond_d1

    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    if-eqz v0, :cond_d1

    .line 438
    iget-object v0, p0, Ljl;->e:Ljava/lang/Class;

    invoke-direct {p0, v0}, Ljl;->d(Ljava/lang/Class;)V

    .line 441
    :cond_d1
    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    if-eqz v0, :cond_f6

    .line 443
    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_db
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_f6

    .line 444
    iget-object v2, p0, Ljl;->c:Lgy;

    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    invoke-virtual {v2, v0}, Lgy;->a(Ljp;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 445
    iget-object v0, p0, Ljl;->i:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_db

    .line 450
    :cond_f6
    return-void

    :cond_f7
    move v0, v1

    goto :goto_db

    :cond_f9
    move v0, v1

    goto/16 :goto_62

    .line 377
    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_2f
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AnnotedClass "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljl;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
