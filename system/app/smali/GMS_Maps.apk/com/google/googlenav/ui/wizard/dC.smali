.class Lcom/google/googlenav/ui/wizard/dC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dB;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dB;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dC;->a:Lcom/google/googlenav/ui/wizard/dB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dC;->a:Lcom/google/googlenav/ui/wizard/dB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dB;->a()V

    return-void
.end method
