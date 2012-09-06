.class LaoJ;
.super Ljava/lang/Object;
.source "FailableCache.java"

# interfaces
.implements LafH;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LafH",
        "<TK;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LaoI;


# direct methods
.method constructor <init>(LaoI;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, LaoJ;->a:LaoI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Laoy;

    invoke-direct {v1}, Laoy;-><init>()V

    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_6
    iget-object v2, p0, LaoJ;->a:LaoI;

    invoke-virtual {v2, p1, v1}, LaoI;->a(Ljava/lang/Object;Laoy;)Ljava/lang/Object;
    :try_end_b
    .catch LaoE; {:try_start_6 .. :try_end_b} :catch_14

    move-result-object v0

    .line 42
    :goto_c
    invoke-virtual {v1}, Laoy;->a()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v0, v1

    :cond_13
    return-object v0

    .line 39
    :catch_14
    move-exception v2

    .line 40
    invoke-virtual {v2}, LaoE;->a()Laoy;

    move-result-object v2

    invoke-virtual {v1, v2}, Laoy;->a(Laoy;)Laoy;

    goto :goto_c
.end method
