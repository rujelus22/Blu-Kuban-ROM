.class Lcom/google/googlenav/android/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/googlenav/android/C;

.field final synthetic d:Lat/p;

.field final synthetic e:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;Landroid/app/ProgressDialog;ZLcom/google/googlenav/android/C;Lat/p;)V
    .registers 6

    iput-object p1, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    iput-object p2, p0, Lcom/google/googlenav/android/y;->a:Landroid/app/ProgressDialog;

    iput-boolean p3, p0, Lcom/google/googlenav/android/y;->b:Z

    iput-object p4, p0, Lcom/google/googlenav/android/y;->c:Lcom/google/googlenav/android/C;

    iput-object p5, p0, Lcom/google/googlenav/android/y;->d:Lat/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/android/y;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/googlenav/android/y;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/u;->a(Landroid/app/Dialog;)V

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->q()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/android/y;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    const-string v1, "RemoteStrings"

    invoke-static {v0, v1}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/l;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    :try_start_1d
    iget-boolean v0, p0, Lcom/google/googlenav/android/y;->b:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->e(Lcom/google/googlenav/android/l;)Lat/h;

    move-result-object v0

    invoke-virtual {v0}, Lat/h;->f()V

    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->f(Lcom/google/googlenav/android/l;)V

    iget-object v0, p0, Lcom/google/googlenav/android/y;->c:Lcom/google/googlenav/android/C;

    invoke-interface {v0}, Lcom/google/googlenav/android/C;->a()V

    iget-object v0, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/android/l;->a(Lcom/google/googlenav/android/l;Z)Z
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_46

    iget-object v0, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    invoke-static {v0}, Lcom/google/googlenav/android/l;->e(Lcom/google/googlenav/android/l;)Lat/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/y;->d:Lat/p;

    invoke-virtual {v0, v1}, Lat/h;->b(Lat/p;)V

    goto :goto_1c

    :catchall_46
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/android/y;->e:Lcom/google/googlenav/android/l;

    invoke-static {v1}, Lcom/google/googlenav/android/l;->e(Lcom/google/googlenav/android/l;)Lat/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/y;->d:Lat/p;

    invoke-virtual {v1, v2}, Lat/h;->b(Lat/p;)V

    throw v0
.end method
