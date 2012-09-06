.class final Ldbxyzptlk/v/f;
.super Ldbxyzptlk/v/i;
.source "panda.py"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Ldbxyzptlk/v/e;


# direct methods
.method constructor <init>(Ldbxyzptlk/v/e;)V
    .registers 2
    .parameter

    .prologue
    .line 1833
    iput-object p1, p0, Ldbxyzptlk/v/f;->a:Ldbxyzptlk/v/e;

    invoke-direct {p0, p1}, Ldbxyzptlk/v/i;-><init>(Ldbxyzptlk/v/e;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map$Entry;
    .registers 2

    .prologue
    .line 1836
    invoke-virtual {p0}, Ldbxyzptlk/v/f;->e()Ldbxyzptlk/v/p;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1833
    invoke-virtual {p0}, Ldbxyzptlk/v/f;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
