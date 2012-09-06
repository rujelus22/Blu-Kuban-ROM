.class LaC/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaC/K;


# direct methods
.method constructor <init>(LaC/K;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, LaC/L;->a:LaC/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, LaC/L;->a:LaC/K;

    invoke-static {v0}, LaC/K;->a(LaC/K;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69
    iget-object v0, p0, LaC/L;->a:LaC/K;

    invoke-static {v0}, LaC/K;->b(LaC/K;)Lcom/google/googlenav/ui/wizard/gi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->Z_()V

    .line 71
    :cond_11
    return-void
.end method
