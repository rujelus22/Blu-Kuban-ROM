.class public Ljackpal/androidterm/util/SessionList;
.super Ljava/util/ArrayList;
.source "SessionList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljackpal/androidterm/emulatorview/TermSession;",
        ">;"
    }
.end annotation


# instance fields
.field callbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljackpal/androidterm/emulatorview/UpdateCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    .line 41
    return-void
.end method

.method private notifyChange()V
    .registers 4

    .prologue
    .line 52
    iget-object v2, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/UpdateCallback;

    .line 53
    .local v0, callback:Ljackpal/androidterm/emulatorview/UpdateCallback;
    invoke-interface {v0}, Ljackpal/androidterm/emulatorview/UpdateCallback;->onUpdate()V

    goto :goto_6

    .line 55
    .end local v0           #callback:Ljackpal/androidterm/emulatorview/UpdateCallback;
    :cond_16
    return-void
.end method


# virtual methods
.method public add(ILjackpal/androidterm/emulatorview/TermSession;)V
    .registers 3
    .parameter "index"
    .parameter "object"

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 68
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Ljackpal/androidterm/emulatorview/TermSession;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/util/SessionList;->add(ILjackpal/androidterm/emulatorview/TermSession;)V

    return-void
.end method

.method public add(Ljackpal/androidterm/emulatorview/TermSession;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 59
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    .local v0, result:Z
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 61
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Ljackpal/androidterm/emulatorview/TermSession;

    .end local p1
    invoke-virtual {p0, p1}, Ljackpal/androidterm/util/SessionList;->add(Ljackpal/androidterm/emulatorview/TermSession;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Ljackpal/androidterm/emulatorview/TermSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Ljackpal/androidterm/emulatorview/TermSession;>;"
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 80
    .local v0, result:Z
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 81
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljackpal/androidterm/emulatorview/TermSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Ljackpal/androidterm/emulatorview/TermSession;>;"
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 73
    .local v0, result:Z
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 74
    return v0
.end method

.method public addCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)V
    .registers 3
    .parameter "callback"

    .prologue
    .line 44
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 86
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 87
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 88
    return-void
.end method

.method public remove(I)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 3
    .parameter "index"

    .prologue
    .line 92
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/TermSession;

    .line 93
    .local v0, object:Ljackpal/androidterm/emulatorview/TermSession;
    if-eqz v0, :cond_b

    .line 94
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 96
    :cond_b
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Ljackpal/androidterm/util/SessionList;->remove(I)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 101
    invoke-super {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    .local v0, result:Z
    if-eqz v0, :cond_9

    .line 103
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 105
    :cond_9
    return v0
.end method

.method public removeCallback(Ljackpal/androidterm/emulatorview/UpdateCallback;)Z
    .registers 3
    .parameter "callback"

    .prologue
    .line 48
    iget-object v0, p0, Ljackpal/androidterm/util/SessionList;->callbacks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public set(ILjackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/TermSession;
    .registers 4
    .parameter "index"
    .parameter "object"

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljackpal/androidterm/emulatorview/TermSession;

    .line 111
    .local v0, old:Ljackpal/androidterm/emulatorview/TermSession;
    invoke-direct {p0}, Ljackpal/androidterm/util/SessionList;->notifyChange()V

    .line 112
    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    check-cast p2, Ljackpal/androidterm/emulatorview/TermSession;

    .end local p2
    invoke-virtual {p0, p1, p2}, Ljackpal/androidterm/util/SessionList;->set(ILjackpal/androidterm/emulatorview/TermSession;)Ljackpal/androidterm/emulatorview/TermSession;

    move-result-object v0

    return-object v0
.end method
