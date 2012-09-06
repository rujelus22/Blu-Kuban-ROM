.class final Lmq;
.super Ljava/lang/Object;
.source "OperationUtils.java"

# interfaces
.implements Lmo;


# instance fields
.field final synthetic a:LXJ;

.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;LXJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lmq;->a:Ljava/util/Map;

    iput-object p2, p0, Lmq;->a:LXJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lmq;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    if-eqz v0, :cond_13

    .line 96
    iget-object v1, p0, Lmq;->a:LXJ;

    invoke-interface {v1, v0, p2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :cond_13
    return-void
.end method
