.class Lcom/google/googlenav/android/x;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/b;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/google/googlenav/android/C;

.field final synthetic d:Landroid/app/ProgressDialog;

.field final synthetic e:Z

.field final synthetic f:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;Ljava/lang/String;Lcom/google/googlenav/ui/android/b;Landroid/os/Handler;Lcom/google/googlenav/android/C;Landroid/app/ProgressDialog;Z)V
    .registers 8

    iput-object p1, p0, Lcom/google/googlenav/android/x;->f:Lcom/google/googlenav/android/l;

    iput-object p3, p0, Lcom/google/googlenav/android/x;->a:Lcom/google/googlenav/ui/android/b;

    iput-object p4, p0, Lcom/google/googlenav/android/x;->b:Landroid/os/Handler;

    iput-object p5, p0, Lcom/google/googlenav/android/x;->c:Lcom/google/googlenav/android/C;

    iput-object p6, p0, Lcom/google/googlenav/android/x;->d:Landroid/app/ProgressDialog;

    iput-boolean p7, p0, Lcom/google/googlenav/android/x;->e:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/x;->a:Lcom/google/googlenav/ui/android/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/b;->a(Z)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laf/b;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/android/x;->f:Lcom/google/googlenav/android/l;

    iget-object v1, p0, Lcom/google/googlenav/android/x;->b:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/googlenav/android/x;->c:Lcom/google/googlenav/android/C;

    iget-object v3, p0, Lcom/google/googlenav/android/x;->d:Landroid/app/ProgressDialog;

    iget-boolean v4, p0, Lcom/google/googlenav/android/x;->e:Z

    iget-object v5, p0, Lcom/google/googlenav/android/x;->a:Lcom/google/googlenav/ui/android/b;

    invoke-static/range {v0 .. v5}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/l;Landroid/os/Handler;Lcom/google/googlenav/android/C;Landroid/app/ProgressDialog;ZLat/p;)V

    return-void
.end method
