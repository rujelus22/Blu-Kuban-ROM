.class LaQ/G;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/F;


# direct methods
.method constructor <init>(LaQ/F;)V
    .registers 2

    iput-object p1, p0, LaQ/G;->a:LaQ/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, LaQ/G;->a:LaQ/F;

    invoke-static {v0}, LaQ/F;->a(LaQ/F;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, LaQ/G;->a:LaQ/F;

    invoke-static {v0}, LaQ/F;->b(LaQ/F;)Lcom/google/googlenav/ui/wizard/ez;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ez;->n()V

    :cond_11
    return-void
.end method
