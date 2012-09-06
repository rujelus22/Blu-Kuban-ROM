.class Lcom/google/googlenav/android/u;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/a;

.field final synthetic b:Lcom/google/googlenav/android/x;

.field final synthetic c:Landroid/app/ProgressDialog;

.field final synthetic d:Z

.field final synthetic e:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;Ljava/lang/String;Lcom/google/googlenav/ui/android/a;Lcom/google/googlenav/android/x;Landroid/app/ProgressDialog;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/googlenav/android/u;->e:Lcom/google/googlenav/android/i;

    iput-object p3, p0, Lcom/google/googlenav/android/u;->a:Lcom/google/googlenav/ui/android/a;

    iput-object p4, p0, Lcom/google/googlenav/android/u;->b:Lcom/google/googlenav/android/x;

    iput-object p5, p0, Lcom/google/googlenav/android/u;->c:Landroid/app/ProgressDialog;

    iput-boolean p6, p0, Lcom/google/googlenav/android/u;->d:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 855
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/android/u;->a:Lcom/google/googlenav/ui/android/a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/android/a;->a(Z)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->a([Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/google/googlenav/android/u;->e:Lcom/google/googlenav/android/i;

    iget-object v1, p0, Lcom/google/googlenav/android/u;->b:Lcom/google/googlenav/android/x;

    iget-object v2, p0, Lcom/google/googlenav/android/u;->c:Landroid/app/ProgressDialog;

    iget-boolean v3, p0, Lcom/google/googlenav/android/u;->d:Z

    iget-object v4, p0, Lcom/google/googlenav/android/u;->a:Lcom/google/googlenav/ui/android/a;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/i;Lcom/google/googlenav/android/x;Landroid/app/ProgressDialog;ZLac/q;)V

    .line 860
    return-void
.end method
