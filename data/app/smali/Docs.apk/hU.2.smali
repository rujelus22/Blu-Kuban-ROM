.class LhU;
.super Ljava/lang/Object;
.source "CriterionFactoryImpl.java"

# interfaces
.implements LhV;


# instance fields
.field final synthetic a:LhP;


# direct methods
.method constructor <init>(LhP;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, LhU;->a:LhP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;LanD;Llu;)LhK;
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Llu;",
            ")",
            "LhK;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, LhU;->a:LhP;

    iget-object v0, v0, LhP;->a:LhO;

    invoke-virtual {v0}, LhO;->a()LhK;

    move-result-object v0

    return-object v0
.end method
