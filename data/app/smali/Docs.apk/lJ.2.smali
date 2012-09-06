.class public LlJ;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lmj;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    invoke-static {}, LUL;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LlB;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTF;

    iput-object v0, p0, Lmj;->a:LTF;

    .line 241
    return-void
.end method
