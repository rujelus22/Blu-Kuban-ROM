.class Lcn;
.super Ljava/lang/Object;
.source "ContextScopeImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LanD;

.field final synthetic a:Lcl;


# direct methods
.method constructor <init>(Lcl;LanD;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcn;->a:Lcl;

    iput-object p2, p0, Lcn;->a:LanD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcn;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    .line 52
    if-nez v0, :cond_c

    .line 55
    invoke-static {}, Lcl;->a()Ljava/lang/Object;

    move-result-object v0

    .line 57
    :cond_c
    return-object v0
.end method
