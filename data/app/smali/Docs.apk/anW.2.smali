.class public abstract LanW;
.super Ljava/lang/Object;
.source "AbstractBindingBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final a:Lant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lant",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field private a:Laoc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laoc",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final a:Lcom/google/inject/Binder;

.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Laqm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Ljava/lang/Void;

    invoke-static {v0}, Lant;->a(Ljava/lang/Class;)Lant;

    move-result-object v0

    sput-object v0, LanW;->a:Lant;

    return-void
.end method

.method public constructor <init>(Lcom/google/inject/Binder;Ljava/util/List;Ljava/lang/Object;Lant;)V
    .registers 7
    .parameter
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
            "Lant",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, LanW;->a:Lcom/google/inject/Binder;

    .line 56
    iput-object p2, p0, LanW;->a:Ljava/util/List;

    .line 57
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, LanW;->a:I

    .line 58
    new-instance v0, LapU;

    sget-object v1, LapG;->a:LapG;

    invoke-direct {v0, p3, p4, v1}, LapU;-><init>(Ljava/lang/Object;Lant;LapG;)V

    iput-object v0, p0, LanW;->a:Laoc;

    .line 59
    iget v0, p0, LanW;->a:I

    iget-object v1, p0, LanW;->a:Laoc;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected a()Laoc;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, LanW;->a:Laoc;

    return-object v0
.end method

.method protected a(Laoc;)Laoc;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laoc",
            "<TT;>;)",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, LanW;->a:Laoc;

    .line 68
    iget-object v0, p0, LanW;->a:Ljava/util/List;

    iget v1, p0, LanW;->a:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-object p1
.end method

.method protected a(Ljava/lang/Class;)Laoc;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    const-string v0, "annotationType"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, LanW;->b()V

    .line 76
    iget-object v0, p0, LanW;->a:Laoc;

    iget-object v1, p0, LanW;->a:Laoc;

    invoke-virtual {v1}, Laoc;->a()Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->a()LanP;

    move-result-object v1

    invoke-static {v1, p1}, Lant;->a(LanP;Ljava/lang/Class;)Lant;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc;->a(Lant;)Laoc;

    move-result-object v0

    invoke-virtual {p0, v0}, LanW;->a(Laoc;)Laoc;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/annotation/Annotation;)Laoc;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Laoc",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    const-string v0, "annotation"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p0}, LanW;->b()V

    .line 84
    iget-object v0, p0, LanW;->a:Laoc;

    iget-object v1, p0, LanW;->a:Laoc;

    invoke-virtual {v1}, Laoc;->a()Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->a()LanP;

    move-result-object v1

    invoke-static {v1, p1}, Lant;->a(LanP;Ljava/lang/annotation/Annotation;)Lant;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc;->a(Lant;)Laoc;

    move-result-object v0

    invoke-virtual {p0, v0}, LanW;->a(Laoc;)Laoc;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, LanW;->a:Laoc;

    instance-of v0, v0, LapU;

    if-nez v0, :cond_10

    .line 111
    iget-object v0, p0, LanW;->a:Lcom/google/inject/Binder;

    const-string v1, "Implementation is set more than once."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_10
    return-void
.end method

.method public a(LanG;)V
    .registers 4
    .parameter

    .prologue
    .line 95
    const-string v0, "scope"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, LanW;->c()V

    .line 97
    invoke-virtual {p0}, LanW;->a()Laoc;

    move-result-object v0

    invoke-static {p1}, LapG;->a(LanG;)LapG;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc;->a(LapG;)Laoc;

    move-result-object v0

    invoke-virtual {p0, v0}, LanW;->a(Laoc;)Laoc;

    .line 98
    return-void
.end method

.method public a(Ljava/lang/Class;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    const-string v0, "scopeAnnotation"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, LanW;->c()V

    .line 91
    invoke-virtual {p0}, LanW;->a()Laoc;

    move-result-object v0

    invoke-static {p1}, LapG;->a(Ljava/lang/Class;)LapG;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc;->a(LapG;)Laoc;

    move-result-object v0

    invoke-virtual {p0, v0}, LanW;->a(Laoc;)Laoc;

    .line 92
    return-void
.end method

.method protected a()Z
    .registers 3

    .prologue
    .line 106
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, LanW;->a:Laoc;

    invoke-virtual {v1}, Laoc;->a()Lant;

    move-result-object v1

    invoke-virtual {v1}, Lant;->a()LanP;

    move-result-object v1

    invoke-virtual {v1}, LanP;->a()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected b()V
    .registers 4

    .prologue
    .line 116
    iget-object v0, p0, LanW;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()Lant;

    move-result-object v0

    invoke-virtual {v0}, Lant;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 117
    iget-object v0, p0, LanW;->a:Lcom/google/inject/Binder;

    const-string v1, "More than one annotation is specified for this binding."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_16
    return-void
.end method

.method protected c()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, LanW;->a:Laoc;

    instance-of v0, v0, LaqC;

    if-eqz v0, :cond_11

    .line 124
    iget-object v0, p0, LanW;->a:Lcom/google/inject/Binder;

    const-string v1, "Setting the scope is not permitted when binding to a single instance."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_10
    :goto_10
    return-void

    .line 128
    :cond_11
    iget-object v0, p0, LanW;->a:Laoc;

    invoke-virtual {v0}, Laoc;->a()LapG;

    move-result-object v0

    invoke-virtual {v0}, LapG;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 129
    iget-object v0, p0, LanW;->a:Lcom/google/inject/Binder;

    const-string v1, "Scope is set more than once."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/inject/Binder;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method
