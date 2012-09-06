.class final Laoq;
.super Laoc;
.source "ConstructorBindingImpl.java"

# interfaces
.implements Laow;
.implements Laqf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laoc",
        "<TT;>;",
        "Laow;",
        "Laqf",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Laor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:Laqt;


# direct methods
.method private constructor <init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Laor;Laqt;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaoP;",
            "Lant",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Lapc",
            "<+TT;>;",
            "LapG;",
            "Laor",
            "<TT;>;",
            "Laqt;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Laoc;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;)V

    .line 53
    iput-object p6, p0, Laoq;->a:Laor;

    .line 54
    iput-object p7, p0, Laoq;->a:Laqt;

    .line 55
    return-void
.end method

.method static a(LaoP;Lant;Laqt;Ljava/lang/Object;LapG;Laoy;ZZ)Laoq;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LaoP;",
            "Lant",
            "<TT;>;",
            "Laqt;",
            "Ljava/lang/Object;",
            "LapG;",
            "Laoy;",
            "ZZ)",
            "Laoq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p5}, Laoy;->a()I

    move-result v2

    .line 80
    if-nez p2, :cond_79

    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 85
    :goto_f
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 86
    invoke-virtual {p5, p1}, Laoy;->a(Lant;)Laoy;

    .line 90
    :cond_1c
    invoke-static {v1}, LapV;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 91
    invoke-virtual {p5, v1}, Laoy;->e(Ljava/lang/Class;)Laoy;

    .line 94
    :cond_25
    invoke-virtual {p5, v2}, Laoy;->a(I)V

    .line 97
    if-nez p2, :cond_93

    .line 99
    :try_start_2a
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-static {v0}, Laqt;->a(LanP;)Laqt;

    move-result-object v7

    .line 100
    if-eqz p7, :cond_43

    invoke-virtual {v7}, Laqt;->a()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-static {v0}, Laoq;->a(Ljava/lang/reflect/Constructor;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 101
    invoke-virtual {p5, v1}, Laoy;->a(Ljava/lang/Class;)Laoy;
    :try_end_43
    .catch Lani; {:try_start_2a .. :try_end_43} :catch_83

    .line 109
    :cond_43
    :goto_43
    invoke-virtual {p4}, LapG;->a()Z

    move-result v0

    if-nez v0, :cond_91

    .line 110
    invoke-virtual {v7}, Laqt;->a()Ljava/lang/reflect/Member;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 111
    invoke-static {p5, v0}, LanY;->a(Laoy;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_91

    .line 113
    invoke-static {v0}, LapG;->a(Ljava/lang/Class;)LapG;

    move-result-object v0

    invoke-virtual {p5, v1}, Laoy;->a(Ljava/lang/Object;)Laoy;

    move-result-object v1

    invoke-static {v0, p0, v1}, LapG;->a(LapG;LaoP;Laoy;)LapG;

    move-result-object p4

    move-object v5, p4

    .line 118
    :goto_64
    invoke-virtual {p5, v2}, Laoy;->a(I)V

    .line 120
    new-instance v6, Laor;

    invoke-direct {v6, p6, p1}, Laor;-><init>(ZLant;)V

    .line 121
    invoke-static {p1, p0, v6, p3, v5}, LapG;->a(Lant;LaoP;Lapc;Ljava/lang/Object;LapG;)Lapc;

    move-result-object v4

    .line 124
    new-instance v0, Laoq;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Laoq;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Laor;Laqt;)V

    return-object v0

    .line 80
    :cond_79
    invoke-virtual {p2}, Laqt;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->a()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto :goto_f

    .line 103
    :catch_83
    move-exception v0

    .line 104
    invoke-virtual {v0}, Lani;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p5, v0}, Laoy;->a(Ljava/util/Collection;)Laoy;

    move-result-object v0

    invoke-virtual {v0}, Laoy;->a()LaoE;

    move-result-object v0

    throw v0

    :cond_91
    move-object v5, p4

    goto :goto_64

    :cond_93
    move-object v7, p2

    goto :goto_43
.end method

.method private static a(Ljava/lang/reflect/Constructor;)Z
    .registers 2
    .parameter

    .prologue
    .line 130
    const-class v0, Lanr;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_10

    const-class v0, LasR;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected a(Lant;)Laoc;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lant",
            "<TT;>;)",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Laoq;

    const/4 v1, 0x0

    invoke-virtual {p0}, Laoq;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Laoq;->a:Laor;

    invoke-virtual {p0}, Laoq;->a()LapG;

    move-result-object v5

    iget-object v6, p0, Laoq;->a:Laor;

    iget-object v7, p0, Laoq;->a:Laqt;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Laoq;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Laor;Laqt;)V

    return-object v0
.end method

.method protected a(LapG;)Laoc;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LapG;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Laoq;

    const/4 v1, 0x0

    invoke-virtual {p0}, Laoq;->a()Lant;

    move-result-object v2

    invoke-virtual {p0}, Laoq;->a()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Laoq;->a:Laor;

    iget-object v6, p0, Laoq;->a:Laor;

    iget-object v7, p0, Laoq;->a:Laqt;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Laoq;-><init>(LaoP;Lant;Ljava/lang/Object;Lapc;LapG;Laor;Laqt;)V

    return-object v0
.end method

.method a()Laqt;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Laoq;->a:Laor;

    invoke-static {v0}, Laor;->a(Laor;)Laos;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 151
    iget-object v0, p0, Laoq;->a:Laor;

    invoke-static {v0}, Laor;->a(Laor;)Laos;

    move-result-object v0

    invoke-virtual {v0}, Laos;->a()Laop;

    move-result-object v0

    invoke-interface {v0}, Laop;->a()Laqt;

    move-result-object v0

    .line 153
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Laoq;->a:Laqt;

    goto :goto_16
.end method

.method a()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, LaiE;->a()LaiG;

    move-result-object v0

    .line 160
    iget-object v1, p0, Laoq;->a:Laor;

    invoke-static {v1}, Laor;->a(Laor;)Laos;

    move-result-object v1

    if-nez v1, :cond_27

    .line 161
    iget-object v1, p0, Laoq;->a:Laqt;

    invoke-virtual {v0, v1}, LaiG;->a(Ljava/lang/Object;)LaiG;

    .line 165
    :try_start_11
    iget-object v1, p0, Laoq;->a:Laqt;

    invoke-virtual {v1}, Laqt;->a()LanP;

    move-result-object v1

    invoke-static {v1}, Laqt;->a(LanP;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, LaiG;->a(Ljava/lang/Iterable;)LaiG;
    :try_end_1e
    .catch Lani; {:try_start_11 .. :try_end_1e} :catch_37

    .line 172
    :goto_1e
    invoke-virtual {v0}, LaiG;->a()LaiE;

    move-result-object v0

    invoke-static {v0}, Laqk;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 168
    :cond_27
    invoke-virtual {p0}, Laoq;->b()Laqt;

    move-result-object v1

    invoke-virtual {v0, v1}, LaiG;->a(Ljava/lang/Object;)LaiG;

    move-result-object v1

    invoke-virtual {p0}, Laoq;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, LaiG;->a(Ljava/lang/Iterable;)LaiG;

    goto :goto_1e

    .line 166
    :catch_37
    move-exception v1

    goto :goto_1e
.end method

.method public a(LaoP;Laoy;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 136
    iget-object v1, p0, Laoq;->a:Laor;

    iget-object v0, p1, LaoP;->a:LaoU;

    iget-boolean v0, v0, LaoU;->b:Z

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v0}, Laor;->a(Laor;Z)Z

    .line 137
    iget-object v0, p0, Laoq;->a:Laor;

    iget-object v1, p1, LaoP;->a:Laou;

    iget-object v2, p0, Laoq;->a:Laqt;

    invoke-virtual {v1, v2, p2}, Laou;->a(Laqt;Laoy;)Laos;

    move-result-object v1

    invoke-static {v0, v1}, Laor;->a(Laor;Laos;)Laos;

    .line 139
    iget-object v0, p0, Laoq;->a:Laor;

    iget-object v1, p1, LaoP;->a:LapB;

    invoke-virtual {v1, p0}, LapB;->a(Lang;)LapD;

    move-result-object v1

    invoke-static {v0, v1}, Laor;->a(Laor;LapD;)LapD;

    .line 141
    return-void

    .line 136
    :cond_25
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Laqt;
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Laoq;->a:Laor;

    invoke-static {v0}, Laor;->a(Laor;)Laos;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    :goto_9
    const-string v1, "Binding is not ready"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 182
    iget-object v0, p0, Laoq;->a:Laor;

    invoke-static {v0}, Laor;->a(Laor;)Laos;

    move-result-object v0

    invoke-virtual {v0}, Laos;->a()Laop;

    move-result-object v0

    invoke-interface {v0}, Laop;->a()Laqt;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Laqt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Laoq;->a:Laor;

    invoke-static {v0}, Laor;->a(Laor;)Laos;

    move-result-object v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    const-string v1, "Binding is not ready"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 187
    iget-object v0, p0, Laoq;->a:Laor;

    invoke-static {v0}, Laor;->a(Laor;)Laos;

    move-result-object v0

    invoke-virtual {v0}, Laos;->a()LaiE;

    move-result-object v0

    return-object v0

    .line 186
    :cond_19
    const/4 v0, 0x0

    goto :goto_9
.end method

.method b()Z
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Laoq;->a:Laor;

    invoke-static {v0}, Laor;->a(Laor;)Laos;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Laqk",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, LaiG;

    invoke-direct {v0}, LaiG;-><init>()V

    invoke-virtual {p0}, Laoq;->b()Laqt;

    move-result-object v1

    invoke-virtual {v0, v1}, LaiG;->a(Ljava/lang/Object;)LaiG;

    move-result-object v0

    invoke-virtual {p0}, Laoq;->b()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, LaiG;->a(Ljava/lang/Iterable;)LaiG;

    move-result-object v0

    invoke-virtual {v0}, LaiG;->a()LaiE;

    move-result-object v0

    invoke-static {v0}, Laqk;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 231
    instance-of v1, p1, Laoq;

    if-eqz v1, :cond_2e

    .line 232
    check-cast p1, Laoq;

    .line 233
    invoke-virtual {p0}, Laoq;->a()Lant;

    move-result-object v1

    invoke-virtual {p1}, Laoq;->a()Lant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Laoq;->a()LapG;

    move-result-object v1

    invoke-virtual {p1}, Laoq;->a()LapG;

    move-result-object v2

    invoke-virtual {v1, v2}, LapG;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Laoq;->a:Laqt;

    iget-object v2, p1, Laoq;->a:Laqt;

    invoke-static {v1, v2}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    .line 237
    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 243
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Laoq;->a()Lant;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Laoq;->a()LapG;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Laoq;->a:Laqt;

    aput-object v2, v0, v1

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 222
    const-class v0, Laqf;

    invoke-static {v0}, LafL;->a(Ljava/lang/Class;)LafN;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {p0}, Laoq;->a()Lant;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0}, Laoq;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    const-string v1, "scope"

    invoke-virtual {p0}, Laoq;->a()LapG;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LafN;->a(Ljava/lang/String;Ljava/lang/Object;)LafN;

    move-result-object v0

    invoke-virtual {v0}, LafN;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
