.class public final Lhm;
.super Lex;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhm;-><init>(Lhn;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lhn;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lex;-><init>(Lfh;)V

    .line 38
    if-nez p1, :cond_e

    .line 39
    new-instance v0, Lhn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lhn;-><init>(Lex;B)V

    invoke-virtual {p0, v0}, Lhm;->a(Lfh;)Lex;

    .line 41
    :cond_e
    return-void
.end method
