.class Ld/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ld/y;


# direct methods
.method constructor <init>(Ld/y;)V
    .registers 2

    iput-object p1, p0, Ld/z;->a:Ld/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Ld/z;->a:Ld/y;

    invoke-static {v0}, Ld/y;->a(Ld/y;)Ld/F;

    move-result-object v0

    invoke-virtual {v0}, Ld/F;->a()V

    iget-object v0, p0, Ld/z;->a:Ld/y;

    invoke-static {v0}, Ld/y;->c(Ld/y;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ld/z;->a:Ld/y;

    invoke-static {v1}, Ld/y;->b(Ld/y;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
