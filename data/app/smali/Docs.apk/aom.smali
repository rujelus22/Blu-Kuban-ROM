.class public final Laom;
.super LanW;
.source "ConstantBindingBuilderImpl.java"

# interfaces
.implements LanR;
.implements LanT;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LanW",
        "<TT;>;",
        "LanR;",
        "LanT;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Binder;",
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Laom;->a:Lant;

    invoke-direct {p0, p1, p2, p3, v0}, LanW;-><init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lant;)V

    .line 42
    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 101
    .line 105
    invoke-virtual {p0}, Laom;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 106
    iget-object v0, p0, Laom;->a:Lcom/google/inject/Binder;

    const-string v1, "Constant value is set more than once."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    :goto_10
    return-void

    .line 110
    :cond_11
    invoke-virtual {p0}, Laom;->a()Laoc;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Laoc;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->a()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 113
    invoke-virtual {v3}, Laoc;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->a()Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {p1, v0}, Lant;->a(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v2

    .line 120
    :goto_2b
    if-nez p2, :cond_36

    .line 121
    iget-object v0, p0, Laom;->a:Lcom/google/inject/Binder;

    const-string v1, "Binding to null instances is not allowed. Use toProvider(Providers.of(null)) if this is your intended behaviour."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v4}, Lcom/google/inject/Binder;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_36
    new-instance v0, Lapa;

    invoke-virtual {v3}, Laoc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3}, Laoc;->a()LapG;

    move-result-object v3

    invoke-static {}, LaiE;->a()LaiE;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lapa;-><init>(Ljava/lang/Object;Lant;LapG;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Laom;->a(Laoc;)Laoc;

    goto :goto_10

    .line 114
    :cond_4c
    invoke-virtual {v3}, Laoc;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 115
    invoke-virtual {v3}, Laoc;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lant;->a(Ljava/lang/Class;Ljava/lang/Class;)Lant;

    move-result-object v2

    goto :goto_2b

    .line 117
    :cond_63
    invoke-static {p1}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v2

    goto :goto_2b
.end method


# virtual methods
.method public a(Ljava/lang/Class;)LanT;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "LanT;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Laom;->a(Ljava/lang/Class;)Laoc;

    .line 46
    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Laom;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    const-string v0, "ConstantBindingBuilder"

    return-object v0
.end method
