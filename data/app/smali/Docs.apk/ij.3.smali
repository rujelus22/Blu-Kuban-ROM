.class public Lij;
.super Ljava/lang/Object;
.source "EntryListSourceSetterImpl.java"

# interfaces
.implements Lii;


# instance fields
.field private a:LhW;

.field private final a:Ljava/lang/Thread;

.field private final a:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lih;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lij;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lij;->a:Ljava/lang/Thread;

    .line 32
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lij;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lih;

    .line 75
    invoke-interface {v0}, Lih;->a()V

    goto :goto_6

    .line 77
    :cond_16
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lij;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lih;

    .line 84
    invoke-interface {v0}, Lih;->d()V

    goto :goto_6

    .line 86
    :cond_16
    return-void
.end method

.method private d()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lij;->a:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, LafQ;->b(Z)V

    .line 93
    return-void
.end method


# virtual methods
.method public a()LhW;
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lij;->d()V

    .line 52
    iget-object v0, p0, Lij;->a:LhW;

    return-object v0
.end method

.method public a()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lij;->b()V

    .line 68
    return-void
.end method

.method public a(LhW;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lij;->d()V

    .line 61
    iput-object p1, p0, Lij;->a:LhW;

    .line 62
    invoke-direct {p0}, Lij;->c()V

    .line 63
    return-void
.end method

.method public a(Lih;)V
    .registers 3
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lij;->d()V

    .line 45
    iget-object v0, p0, Lij;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method
