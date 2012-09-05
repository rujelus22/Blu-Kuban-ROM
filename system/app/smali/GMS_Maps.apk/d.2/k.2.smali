.class Ld/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ld/h;


# direct methods
.method constructor <init>(Ld/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Ld/k;->b:Ld/h;

    iput-object p2, p0, Ld/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Ld/k;->b:Ld/h;

    invoke-static {v0}, Ld/h;->e(Ld/h;)Ld/r;

    move-result-object v0

    iget-object v1, p0, Ld/k;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ld/r;->a(Ljava/lang/String;)V

    return-void
.end method
