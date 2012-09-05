.class Lcom/google/googlenav/ui/wizard/gi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gh;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gh;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gi;->a:Lcom/google/googlenav/ui/wizard/gh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gi;->a:Lcom/google/googlenav/ui/wizard/gh;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/gh;->a:Lcom/google/googlenav/ui/wizard/fX;

    const/16 v1, 0x5dd

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/fX;->a(IILjava/lang/Object;)Z

    return-void
.end method
