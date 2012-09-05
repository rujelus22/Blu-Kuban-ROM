.class public abstract Lcom/google/googlenav/ui/ae;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:Ljava/util/Hashtable;

.field private c:Z

.field private d:[Laq/a;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ae;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Ljava/util/Hashtable;

    return-void
.end method

.method private final a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ae;->c:Z

    return-void
.end method


# virtual methods
.method protected final a(Laq/a;Ljava/lang/Character;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/ae;->b()V

    return-void
.end method

.method public a(Laq/a;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ae;->c:Z

    return-void
.end method

.method protected final b(Laq/a;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/ui/ae;->a(Laq/a;Ljava/lang/Character;)V

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ae;->c:Z

    return v0
.end method

.method public final d()[Laq/a;
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->d:[Laq/a;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/googlenav/ui/ae;->c()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->d:[Laq/a;

    :goto_c
    return-object v0

    :cond_d
    new-instance v1, Ljava/util/Vector;

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laq/a;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/ae;->a(Laq/a;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_34
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Laq/a;

    iput-object v0, p0, Lcom/google/googlenav/ui/ae;->d:[Laq/a;

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->d:[Laq/a;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/ae;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/ae;->d:[Laq/a;

    goto :goto_c
.end method
