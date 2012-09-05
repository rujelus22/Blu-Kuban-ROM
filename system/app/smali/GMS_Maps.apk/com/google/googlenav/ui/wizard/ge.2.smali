.class Lcom/google/googlenav/ui/wizard/ge;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ga;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ga;Landroid/widget/EditText;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ge;->b:Lcom/google/googlenav/ui/wizard/ga;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ge;->b:Lcom/google/googlenav/ui/wizard/ga;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fX;->g:Lcom/google/googlenav/ui/wizard/gg;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/ge;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2, v2, v3}, Las/b;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/googlenav/ui/wizard/gg;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ge;->b:Lcom/google/googlenav/ui/wizard/ga;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    const/16 v1, 0x1f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/googlenav/ui/wizard/fX;->a(IILjava/lang/Object;)Z

    return-void
.end method
