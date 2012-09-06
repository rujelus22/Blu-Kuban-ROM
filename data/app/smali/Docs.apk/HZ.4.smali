.class LHZ;
.super Ljava/lang/Object;
.source "AccountAccessorImpl.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LHX;

.field final synthetic a:LHY;


# direct methods
.method constructor <init>(LHY;LHX;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, LHZ;->a:LHY;

    iput-object p2, p0, LHZ;->a:LHX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, LHZ;->a:LHY;

    iget-object v1, p0, LHZ;->a:LHX;

    invoke-static {v0, p1, v1}, LHY;->a(LHY;Landroid/accounts/AccountManagerFuture;LHX;)V

    .line 173
    return-void
.end method
