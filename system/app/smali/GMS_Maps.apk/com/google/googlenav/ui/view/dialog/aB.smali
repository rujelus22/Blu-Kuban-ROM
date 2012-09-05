.class Lcom/google/googlenav/ui/view/dialog/aB;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aB;->a:Lcom/google/googlenav/ui/view/dialog/aA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aB;->a:Lcom/google/googlenav/ui/view/dialog/aA;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/aA;->a:Lcom/google/googlenav/ui/wizard/hp;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hp;->B()V

    return-void
.end method
