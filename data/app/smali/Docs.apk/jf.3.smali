.class public Ljf;
.super Ljava/lang/Object;
.source "NavigationPanelDataSourceSetterImpl.java"

# interfaces
.implements Lje;


# instance fields
.field private a:LhW;

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Ljd;",
            ">;"
        }
    .end annotation
.end field

.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Ljf;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method


# virtual methods
.method public a()LhW;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Ljf;->a:LhW;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Ljf;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    .line 81
    invoke-interface {v0}, Ljd;->a()V

    goto :goto_6

    .line 83
    :cond_16
    return-void
.end method

.method public a(Ljd;)V
    .registers 3
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Ljf;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public a(ZLjava/util/List;LhW;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "LhW;",
            ">;",
            "LhW;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    const/4 v0, 0x1

    :goto_d
    invoke-static {v0}, LafQ;->a(Z)V

    .line 61
    iput-boolean p1, p0, Ljf;->a:Z

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljf;->a:Ljava/util/List;

    .line 63
    iput-object p3, p0, Ljf;->a:LhW;

    .line 65
    invoke-virtual {p0}, Ljf;->b()V

    .line 66
    return-void

    .line 59
    :cond_1f
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Ljf;->a:Z

    return v0
.end method

.method public b()LhW;
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Ljf;->a:Ljava/util/List;

    iget-object v1, p0, Ljf;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LhW;

    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Ljf;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljd;

    .line 88
    invoke-interface {v0}, Ljd;->b()V

    goto :goto_6

    .line 90
    :cond_16
    return-void
.end method
