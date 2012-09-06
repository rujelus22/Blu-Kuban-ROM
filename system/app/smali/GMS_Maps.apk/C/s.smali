.class LC/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LC/q;


# direct methods
.method constructor <init>(LC/q;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, LC/s;->a:LC/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, LC/s;->a:LC/q;

    invoke-static {v0}, LC/q;->a(LC/q;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LC/b;

    .line 117
    invoke-virtual {v0}, LC/b;->b()V

    goto :goto_e

    .line 119
    :cond_1e
    return-void
.end method
