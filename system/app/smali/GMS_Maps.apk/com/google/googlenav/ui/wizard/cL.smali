.class Lcom/google/googlenav/ui/wizard/cL;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cL;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cL;->a:Lcom/google/googlenav/ui/wizard/cA;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cA;->h()V

    return-void
.end method
