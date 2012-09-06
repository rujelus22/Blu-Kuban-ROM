.class final Ldbxyzptlk/k/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 120
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->l(Z)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Ldbxyzptlk/k/a;->a(Z)Z

    .line 122
    return-void
.end method
