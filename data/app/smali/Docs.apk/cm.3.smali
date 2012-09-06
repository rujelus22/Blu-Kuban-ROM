.class Lcm;
.super Lagq;
.source "ContextScopeImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagq",
        "<",
        "Landroid/content/Context;",
        "Lagj",
        "<",
        "Lant",
        "<*>;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcl;


# direct methods
.method constructor <init>(Lcl;)V
    .registers 2
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcm;->a:Lcl;

    invoke-direct {p0}, Lagq;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lagj;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lagj",
            "<",
            "Lant",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Lagk;->a()Lagk;

    move-result-object v0

    invoke-virtual {v0}, Lagk;->a()Lagj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 32
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcm;->a(Landroid/content/Context;)Lagj;

    move-result-object v0

    return-object v0
.end method
