.class Lcom/google/googlenav/ui/wizard/fg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fe;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fg;->a:Lcom/google/googlenav/ui/wizard/fe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fg;->a:Lcom/google/googlenav/ui/wizard/fe;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fe;->a(Lcom/google/googlenav/ui/wizard/fe;)Lcom/google/googlenav/ui/wizard/eX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eX;->b()V

    return-void
.end method
