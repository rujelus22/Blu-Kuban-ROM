.class Lcom/google/googlenav/ui/wizard/dJ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dI;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dI;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dJ;->a:Lcom/google/googlenav/ui/wizard/dI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dJ;->a:Lcom/google/googlenav/ui/wizard/dI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dI;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dJ;->a:Lcom/google/googlenav/ui/wizard/dI;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dI;->a()V

    return-void
.end method
