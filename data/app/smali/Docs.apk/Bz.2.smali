.class LBz;
.super Ldd;
.source "XmlHttpRequestRelay.java"


# instance fields
.field final synthetic a:LBw;

.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(LBw;Ljava/lang/Runnable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, LBz;->a:LBw;

    iput-object p2, p0, LBz;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ldd;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    .prologue
    .line 557
    iget-object v0, p0, LBz;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 558
    return-void
.end method
