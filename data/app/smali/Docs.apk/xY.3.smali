.class LxY;
.super Lvu;
.source "KixJSVM.java"


# instance fields
.field final synthetic a:LxQ;


# direct methods
.method private constructor <init>(LxQ;)V
    .registers 2
    .parameter

    .prologue
    .line 782
    iput-object p1, p0, LxY;->a:LxQ;

    invoke-direct {p0}, Lvu;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LxQ;LxR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 782
    invoke-direct {p0, p1}, LxY;-><init>(LxQ;)V

    return-void
.end method


# virtual methods
.method public showFatalError(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 786
    iget-object v0, p0, LxY;->a:LxQ;

    invoke-virtual {v0, p1}, LxQ;->onError(Ljava/lang/String;)V

    .line 787
    return-void
.end method

.method public showNetStatusChange(ZLjava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 791
    iget-object v0, p0, LxY;->a:LxQ;

    invoke-virtual {v0, p1, p2}, LxQ;->onNetworkStatus(ZLjava/lang/String;)V

    .line 792
    return-void
.end method
