.class LaR/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaR/a;


# direct methods
.method constructor <init>(LaR/a;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, LaR/c;->a:LaR/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    const-string v0, "Photo Upload"

    invoke-static {v0}, LP/a;->b(Ljava/lang/String;)V

    .line 139
    :cond_b
    iget-object v0, p0, LaR/c;->a:LaR/a;

    invoke-static {v0}, LaR/a;->c(LaR/a;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    iget-object v1, p0, LaR/c;->a:LaR/a;

    invoke-static {v1}, LaR/a;->b(LaR/a;)Lcom/google/googlenav/ui/view/android/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/bm;->v()Lcom/google/googlenav/ai;

    move-result-object v1

    const-string v2, "pv"

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/ai;Ljava/lang/String;)V

    .line 141
    return-void
.end method
