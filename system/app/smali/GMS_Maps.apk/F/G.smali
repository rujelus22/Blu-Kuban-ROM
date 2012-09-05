.class LF/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LF/C;

.field final synthetic b:LF/F;


# direct methods
.method constructor <init>(LF/F;LF/C;)V
    .registers 3

    iput-object p1, p0, LF/G;->b:LF/F;

    iput-object p2, p0, LF/G;->a:LF/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, LF/G;->b:LF/F;

    invoke-static {v0}, LF/F;->a(LF/F;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LF/B;

    iget-object v2, p0, LF/G;->a:LF/C;

    invoke-interface {v0, v2}, LF/B;->a(LF/C;)V

    goto :goto_a

    :cond_1c
    return-void
.end method
