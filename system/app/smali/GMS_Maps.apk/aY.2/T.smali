.class LaY/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaJ/B;

.field final synthetic b:I

.field final synthetic c:Lt/y;

.field final synthetic d:LaY/S;


# direct methods
.method constructor <init>(LaY/S;LaJ/B;ILt/y;)V
    .registers 5

    iput-object p1, p0, LaY/T;->d:LaY/S;

    iput-object p2, p0, LaY/T;->a:LaJ/B;

    iput p3, p0, LaY/T;->b:I

    iput-object p4, p0, LaY/T;->c:Lt/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, LaY/T;->d:LaY/S;

    iget-object v1, p0, LaY/T;->a:LaJ/B;

    invoke-static {v0, v1}, LaY/S;->a(LaY/S;LaJ/B;)LaJ/B;

    iget-object v0, p0, LaY/T;->d:LaY/S;

    iget v1, p0, LaY/T;->b:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, LaY/S;->a(LaY/S;J)J

    iget-object v0, p0, LaY/T;->d:LaY/S;

    iget-object v1, p0, LaY/T;->c:Lt/y;

    invoke-static {v0, v1}, LaY/S;->a(LaY/S;Lt/y;)Lt/y;

    iget-object v0, p0, LaY/T;->d:LaY/S;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->v()Laf/a;

    move-result-object v1

    invoke-interface {v1}, Laf/a;->b()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, LaY/S;->b(LaY/S;J)J

    invoke-static {}, Lax/aO;->b()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, LaY/T;->d:LaY/S;

    invoke-virtual {v0}, LaY/S;->a()V

    :cond_32
    return-void
.end method
