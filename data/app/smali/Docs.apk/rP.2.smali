.class LrP;
.super Ljava/lang/Object;
.source "DriveAppAuthorizerImpl.java"

# interfaces
.implements Lmo;


# instance fields
.field final synthetic a:LpP;

.field final synthetic a:LrO;


# direct methods
.method constructor <init>(LrO;LpP;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, LrP;->a:LrO;

    iput-object p2, p0, LrP;->a:LpP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 57
    if-eqz p1, :cond_b

    .line 58
    invoke-static {p1}, LrO;->a(I)LpQ;

    move-result-object v0

    .line 59
    iget-object v1, p0, LrP;->a:LpP;

    invoke-interface {v1, v0, p2}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    .line 61
    :cond_b
    return-void
.end method
