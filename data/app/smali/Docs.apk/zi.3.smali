.class Lzi;
.super Ljava/lang/Object;
.source "CollaboratorController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic a:Lzh;


# direct methods
.method constructor <init>(Lzh;Landroid/widget/LinearLayout;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lzi;->a:Lzh;

    iput-object p2, p0, Lzi;->a:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v2, p0, Lzi;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lzi;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    const/16 v0, 0x8

    :goto_d
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lzi;->a:Lzh;

    iget-object v2, p0, Lzi;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    invoke-static {v0, v1}, Lzh;->a(Lzh;Z)V

    .line 67
    return-void

    :cond_1f
    move v0, v1

    .line 64
    goto :goto_d
.end method
