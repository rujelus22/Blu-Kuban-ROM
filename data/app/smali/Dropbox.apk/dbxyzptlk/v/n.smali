.class final Ldbxyzptlk/v/n;
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
    .line 1784
    iput-object p1, p0, Ldbxyzptlk/v/n;->a:Ldbxyzptlk/v/e;

    invoke-direct {p0, p1}, Ldbxyzptlk/v/i;-><init>(Ldbxyzptlk/v/e;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1787
    invoke-super {p0}, Ldbxyzptlk/v/i;->e()Ldbxyzptlk/v/p;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/v/p;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
