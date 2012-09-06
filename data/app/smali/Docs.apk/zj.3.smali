.class Lzj;
.super Ljava/lang/Object;
.source "CollaboratorController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzh;


# direct methods
.method constructor <init>(Lzh;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lzj;->a:Lzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lzj;->a:Lzh;

    invoke-static {v0}, Lzh;->a(Lzh;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lzj;->a:Lzh;

    invoke-static {v0}, Lzh;->a(Lzh;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_44

    const/4 v0, 0x1

    .line 108
    :goto_18
    if-eqz v0, :cond_46

    .line 109
    iget-object v2, p0, Lzj;->a:Lzh;

    invoke-static {v2}, Lzh;->a(Lzh;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lzj;->a:Lzh;

    invoke-static {v3}, Lzh;->a(Lzh;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v2, p0, Lzj;->a:Lzh;

    invoke-static {v2}, Lzh;->a(Lzh;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_32
    iget-object v1, p0, Lzj;->a:Lzh;

    invoke-static {v1}, Lzh;->a(Lzh;)Lzk;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 117
    iget-object v1, p0, Lzj;->a:Lzh;

    invoke-static {v1}, Lzh;->a(Lzh;)Lzk;

    move-result-object v1

    invoke-interface {v1, v0}, Lzk;->a(Z)V

    .line 119
    :cond_43
    return-void

    :cond_44
    move v0, v1

    .line 107
    goto :goto_18

    .line 112
    :cond_46
    iget-object v2, p0, Lzj;->a:Lzh;

    invoke-static {v2}, Lzh;->a(Lzh;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 113
    iget-object v2, p0, Lzj;->a:Lzh;

    invoke-static {v2}, Lzh;->a(Lzh;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lzj;->a:Lzh;

    invoke-static {v2, v1}, Lzh;->a(Lzh;Z)V

    goto :goto_32
.end method
