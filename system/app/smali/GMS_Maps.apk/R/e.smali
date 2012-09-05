.class LR/e;
.super LY/d;


# instance fields
.field a:LR/d;


# direct methods
.method constructor <init>(LY/c;)V
    .registers 2

    invoke-direct {p0, p1}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    sget-object v0, LR/c;->a:Lcom/google/gmm/debug/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchdogTask.run(): request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LR/e;->a:LR/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gmm/debug/c;->c(Ljava/lang/Object;)V

    iget-object v0, p0, LR/e;->a:LR/d;

    invoke-virtual {v0}, LR/d;->o()V

    return-void
.end method

.method public a(LR/d;)V
    .registers 2

    iput-object p1, p0, LR/e;->a:LR/d;

    return-void
.end method
