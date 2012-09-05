.class Ld/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/i;


# direct methods
.method constructor <init>(Ld/i;)V
    .registers 2

    iput-object p1, p0, Ld/j;->a:Ld/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Ld/j;->a:Ld/i;

    iget-object v0, v0, Ld/i;->a:Ld/h;

    invoke-static {v0}, Ld/h;->e(Ld/h;)Ld/r;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Ld/aw;

    invoke-direct {v2}, Ld/aw;-><init>()V

    invoke-interface {v0, v1, v2}, Ld/r;->a(Ljava/lang/String;Ld/aw;)V

    return-void
.end method
