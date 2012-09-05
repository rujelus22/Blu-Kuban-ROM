.class Ld/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ld/aw;

.field final synthetic d:Ld/m;


# direct methods
.method constructor <init>(Ld/m;ILjava/lang/String;Ld/aw;)V
    .registers 5

    iput-object p1, p0, Ld/p;->d:Ld/m;

    iput p2, p0, Ld/p;->a:I

    iput-object p3, p0, Ld/p;->b:Ljava/lang/String;

    iput-object p4, p0, Ld/p;->c:Ld/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Ld/p;->d:Ld/m;

    invoke-static {v0}, Ld/m;->a(Ld/m;)Ld/r;

    move-result-object v0

    iget v1, p0, Ld/p;->a:I

    iget-object v2, p0, Ld/p;->b:Ljava/lang/String;

    iget-object v3, p0, Ld/p;->c:Ld/aw;

    invoke-interface {v0, v1, v2, v3}, Ld/r;->a(ILjava/lang/String;Ld/aw;)V

    return-void
.end method
