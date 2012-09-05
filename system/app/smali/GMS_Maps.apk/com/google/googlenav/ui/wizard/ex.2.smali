.class Lcom/google/googlenav/ui/wizard/ex;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ew;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ew;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ex;->a:Lcom/google/googlenav/ui/wizard/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ex;->a:Lcom/google/googlenav/ui/wizard/ew;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ew;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eo;->h(Lcom/google/googlenav/ui/wizard/eo;)V

    return-void
.end method
