.class LaQ/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:Lcom/google/googlenav/ui/view/a;

.field final synthetic c:LaQ/bm;


# direct methods
.method constructor <init>(LaQ/bm;Lcom/google/googlenav/ui/g;Lcom/google/googlenav/ui/view/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, LaQ/bo;->c:LaQ/bm;

    iput-object p2, p0, LaQ/bo;->a:Lcom/google/googlenav/ui/g;

    iput-object p3, p0, LaQ/bo;->b:Lcom/google/googlenav/ui/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, LaQ/bo;->a:Lcom/google/googlenav/ui/g;

    iget-object v1, p0, LaQ/bo;->b:Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/a;->a()I

    move-result v1

    iget-object v2, p0, LaQ/bo;->b:Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/a;->b()I

    move-result v2

    iget-object v3, p0, LaQ/bo;->b:Lcom/google/googlenav/ui/view/a;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 123
    return-void
.end method
