.class LaR/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaR/h;


# direct methods
.method constructor <init>(LaR/h;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, LaR/i;->a:LaR/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, LaR/i;->a:LaR/h;

    invoke-static {v0}, LaR/h;->b(LaR/h;)Lcom/google/googlenav/L;

    move-result-object v0

    iget-object v1, p0, LaR/i;->a:LaR/h;

    invoke-static {v1}, LaR/h;->a(LaR/h;)Lcom/google/googlenav/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ai;->cd()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/L;->b(Ljava/lang/String;Lcom/google/googlenav/android/R;)V

    .line 58
    const/4 v0, 0x5

    const-string v1, "g"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 60
    return-void
.end method
