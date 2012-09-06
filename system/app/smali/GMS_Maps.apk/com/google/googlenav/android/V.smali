.class Lcom/google/googlenav/android/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/googlenav/android/x;

.field final synthetic d:Lac/q;

.field final synthetic e:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;Landroid/app/ProgressDialog;ZLcom/google/googlenav/android/x;Lac/q;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    iput-object p2, p0, Lcom/google/googlenav/android/v;->a:Landroid/app/ProgressDialog;

    iput-boolean p3, p0, Lcom/google/googlenav/android/v;->b:Z

    iput-object p4, p0, Lcom/google/googlenav/android/v;->c:Lcom/google/googlenav/android/x;

    iput-object p5, p0, Lcom/google/googlenav/android/v;->d:Lac/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/google/googlenav/android/v;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    .line 880
    iget-object v0, p0, Lcom/google/googlenav/android/v;->a:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/G;->a(Landroid/app/Dialog;)V

    .line 884
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->m()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 885
    iget-object v0, p0, Lcom/google/googlenav/android/v;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1c

    .line 888
    iget-object v0, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    const-string v1, "RemoteStrings"

    invoke-static {v0, v1}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/i;Ljava/lang/String;)V

    .line 907
    :cond_1c
    :goto_1c
    return-void

    .line 894
    :cond_1d
    :try_start_1d
    iget-boolean v0, p0, Lcom/google/googlenav/android/v;->b:Z

    if-eqz v0, :cond_2a

    .line 895
    iget-object v0, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->e(Lcom/google/googlenav/android/i;)Lac/h;

    move-result-object v0

    invoke-virtual {v0}, Lac/h;->g()V

    .line 898
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->f(Lcom/google/googlenav/android/i;)V

    .line 900
    iget-object v0, p0, Lcom/google/googlenav/android/v;->c:Lcom/google/googlenav/android/x;

    invoke-interface {v0}, Lcom/google/googlenav/android/x;->a()V

    .line 902
    iget-object v0, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/i;Z)Z
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_46

    .line 904
    iget-object v0, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->e(Lcom/google/googlenav/android/i;)Lac/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/v;->d:Lac/q;

    invoke-virtual {v0, v1}, Lac/h;->b(Lac/q;)V

    goto :goto_1c

    :catchall_46
    move-exception v0

    iget-object v1, p0, Lcom/google/googlenav/android/v;->e:Lcom/google/googlenav/android/i;

    invoke-static {v1}, Lcom/google/googlenav/android/i;->e(Lcom/google/googlenav/android/i;)Lac/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/android/v;->d:Lac/q;

    invoke-virtual {v1, v2}, Lac/h;->b(Lac/q;)V

    throw v0
.end method
