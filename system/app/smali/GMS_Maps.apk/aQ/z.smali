.class LaQ/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:LaQ/y;


# direct methods
.method constructor <init>(LaQ/y;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, LaQ/z;->b:LaQ/y;

    iput-object p2, p0, LaQ/z;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x11

    .line 68
    iget-object v0, p0, LaQ/z;->b:LaQ/y;

    iget-object v0, v0, LaQ/y;->a:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 69
    iget-object v0, p0, LaQ/z;->b:LaQ/y;

    iget-boolean v0, v0, LaQ/y;->c:Z

    if-eqz v0, :cond_27

    .line 70
    iget-object v0, p0, LaQ/z;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x24

    iget-object v2, p0, LaQ/z;->b:LaQ/y;

    iget-object v2, v2, LaQ/y;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 86
    :goto_1d
    const/16 v0, 0x54

    const-string v1, "ac"

    const-string v2, "hc"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_26
    return-void

    .line 77
    :cond_27
    iget-object v0, p0, LaQ/z;->b:LaQ/y;

    iget-object v0, v0, LaQ/y;->b:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->o()LaM/i;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_35

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/i;->j(Z)V

    .line 81
    :cond_35
    iget-object v0, p0, LaQ/z;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x28

    iget-object v2, p0, LaQ/z;->b:LaQ/y;

    iget-object v2, v2, LaQ/y;->a:Ljava/lang/String;

    invoke-interface {v0, v3, v1, v2}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    goto :goto_1d
.end method
