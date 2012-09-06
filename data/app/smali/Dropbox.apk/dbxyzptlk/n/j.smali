.class final Ldbxyzptlk/n/j;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Ldbxyzptlk/n/j;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Ldbxyzptlk/n/j;->b:Ljava/util/Iterator;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Iterator;Ldbxyzptlk/n/h;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/n/j;-><init>(Ljava/lang/String;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map$Entry;
    .registers 5

    .prologue
    .line 75
    new-instance v1, Ldbxyzptlk/n/i;

    iget-object v2, p0, Ldbxyzptlk/n/j;->a:Ljava/lang/String;

    iget-object v0, p0, Ldbxyzptlk/n/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Ldbxyzptlk/n/i;-><init>(Ljava/lang/String;Ljava/util/Map$Entry;Ldbxyzptlk/n/h;)V

    return-object v1
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Ldbxyzptlk/n/j;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Ldbxyzptlk/n/j;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "can\'t remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
