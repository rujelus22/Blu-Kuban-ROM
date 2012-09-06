.class Lorg/simpleframework/xml/core/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# instance fields
.field private local:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/simpleframework/xml/core/SessionManager$Reference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    .line 51
    return-void
.end method

.method private create(Z)Lorg/simpleframework/xml/core/Session;
    .registers 4
    .parameter

    .prologue
    .line 96
    new-instance v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/core/SessionManager$Reference;-><init>(Z)V

    .line 98
    iget-object v1, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->get()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    .line 114
    if-nez v0, :cond_15

    .line 115
    new-instance v0, Lorg/simpleframework/xml/core/PersistenceException;

    const-string v1, "Session does not exist"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 117
    :cond_15
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->clear()I

    move-result v0

    .line 119
    if-nez v0, :cond_20

    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 122
    :cond_20
    return-void
.end method

.method public open()Lorg/simpleframework/xml/core/Session;
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    return-object v0
.end method

.method public open(Z)Lorg/simpleframework/xml/core/Session;
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lorg/simpleframework/xml/core/SessionManager;->local:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/SessionManager$Reference;

    .line 80
    if-eqz v0, :cond_f

    .line 81
    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager$Reference;->get()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 83
    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/SessionManager;->create(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    goto :goto_e
.end method
