.class Ld/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:LW/a;

.field final synthetic c:Ld/m;


# direct methods
.method constructor <init>(Ld/m;ILW/a;)V
    .registers 4

    iput-object p1, p0, Ld/o;->c:Ld/m;

    iput p2, p0, Ld/o;->a:I

    iput-object p3, p0, Ld/o;->b:LW/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Ld/o;->c:Ld/m;

    invoke-static {v0}, Ld/m;->a(Ld/m;)Ld/r;

    move-result-object v0

    iget v1, p0, Ld/o;->a:I

    iget-object v2, p0, Ld/o;->b:LW/a;

    invoke-interface {v0, v1, v2}, Ld/r;->a(ILW/a;)V

    return-void
.end method
