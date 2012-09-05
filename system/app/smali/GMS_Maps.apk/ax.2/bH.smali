.class Lax/bH;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lax/bG;


# direct methods
.method constructor <init>(Lax/bG;)V
    .registers 2

    iput-object p1, p0, Lax/bH;->a:Lax/bG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lax/bH;->a:Lax/bG;

    invoke-static {v0}, Lax/bG;->a(Lax/bG;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lax/bH;->a:Lax/bG;

    invoke-static {v0}, Lax/bG;->a(Lax/bG;)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_20

    iget-object v0, p0, Lax/bH;->a:Lax/bG;

    invoke-static {v0}, Lax/bG;->b(Lax/bG;)Lax/bJ;

    move-result-object v0

    iget-object v1, p0, Lax/bH;->a:Lax/bG;

    invoke-static {v1}, Lax/bG;->a(Lax/bG;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lax/bJ;->a([B)V

    :cond_20
    return-void
.end method
