.class Lcom/google/googlenav/ui/wizard/dG;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/bM;


# instance fields
.field final synthetic a:Landroid/widget/TabHost;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dD;Landroid/widget/TabHost;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dG;->b:Lcom/google/googlenav/ui/wizard/dD;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dG;->a:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dG;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method
