.class LaQ/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ez;

.field final synthetic b:LaQ/a;


# direct methods
.method constructor <init>(LaQ/a;Lcom/google/googlenav/ui/wizard/ez;)V
    .registers 3

    iput-object p1, p0, LaQ/b;->b:LaQ/a;

    iput-object p2, p0, LaQ/b;->a:Lcom/google/googlenav/ui/wizard/ez;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/C;

    iget-object v1, p0, LaQ/b;->a:Lcom/google/googlenav/ui/wizard/ez;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/ez;->a(Lcom/google/googlenav/ui/wizard/C;)V

    return-void
.end method
