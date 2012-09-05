.class Ld/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ld/aw;

.field final synthetic c:Ld/m;


# direct methods
.method constructor <init>(Ld/m;Ljava/lang/String;Ld/aw;)V
    .registers 4

    iput-object p1, p0, Ld/q;->c:Ld/m;

    iput-object p2, p0, Ld/q;->a:Ljava/lang/String;

    iput-object p3, p0, Ld/q;->b:Ld/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Ld/q;->c:Ld/m;

    invoke-static {v0}, Ld/m;->a(Ld/m;)Ld/r;

    move-result-object v0

    iget-object v1, p0, Ld/q;->a:Ljava/lang/String;

    iget-object v2, p0, Ld/q;->b:Ld/aw;

    invoke-interface {v0, v1, v2}, Ld/r;->a(Ljava/lang/String;Ld/aw;)V

    return-void
.end method
