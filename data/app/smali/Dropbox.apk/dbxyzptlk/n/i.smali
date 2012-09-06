.class final Ldbxyzptlk/n/i;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/util/Map$Entry;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ldbxyzptlk/n/k;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map$Entry;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/n/i;->a:Ljava/lang/String;

    .line 86
    new-instance v0, Ldbxyzptlk/n/k;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ldbxyzptlk/n/i;->a:Ljava/lang/String;

    invoke-static {p1, v2}, Ldbxyzptlk/n/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/n/k;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ldbxyzptlk/n/i;->b:Ldbxyzptlk/n/k;

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Map$Entry;Ldbxyzptlk/n/h;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ldbxyzptlk/n/i;-><init>(Ljava/lang/String;Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public final a(Ldbxyzptlk/n/k;)Ldbxyzptlk/n/k;
    .registers 3
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Ldbxyzptlk/n/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ldbxyzptlk/n/k;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Ldbxyzptlk/n/i;->b:Ldbxyzptlk/n/k;

    return-object v0
.end method

.method public final synthetic getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Ldbxyzptlk/n/i;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Ldbxyzptlk/n/i;->b()Ldbxyzptlk/n/k;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 80
    check-cast p1, Ldbxyzptlk/n/k;

    invoke-virtual {p0, p1}, Ldbxyzptlk/n/i;->a(Ldbxyzptlk/n/k;)Ldbxyzptlk/n/k;

    move-result-object v0

    return-object v0
.end method
