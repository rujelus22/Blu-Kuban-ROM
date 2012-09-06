.class LhR;
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
    .line 64
    iput-object p1, p0, LhR;->a:LhP;

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
    .line 68
    invoke-static {p1, p2, p3}, Lic;->a(Landroid/os/Bundle;LanD;Llu;)Lic;

    move-result-object v0

    return-object v0
.end method
