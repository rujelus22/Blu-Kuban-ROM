.class final Ldbxyzptlk/v/k;
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
    .line 1777
    iput-object p1, p0, Ldbxyzptlk/v/k;->a:Ldbxyzptlk/v/e;

    invoke-direct {p0, p1}, Ldbxyzptlk/v/i;-><init>(Ldbxyzptlk/v/e;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1780
    invoke-super {p0}, Ldbxyzptlk/v/i;->e()Ldbxyzptlk/v/p;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/v/p;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
