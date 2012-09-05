.class Lcom/google/googlenav/ui/view/dialog/aN;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aM;

.field private final b:Lcom/google/googlenav/bJ;

.field private final c:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/aM;Lcom/google/googlenav/bJ;Landroid/widget/Spinner;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aN;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/aN;->b:Lcom/google/googlenav/bJ;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/aN;->c:Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aN;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aM;->d(Lcom/google/googlenav/ui/view/dialog/aM;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aN;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aM;->d(Lcom/google/googlenav/ui/view/dialog/aM;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aN;->b:Lcom/google/googlenav/bJ;

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bJ;->d(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->addAll([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aN;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aM;->e(Lcom/google/googlenav/ui/view/dialog/aM;)Lcom/google/googlenav/ui/view/dialog/aO;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/dialog/aO;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aN;->c:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aN;->b:Lcom/google/googlenav/bJ;

    invoke-virtual {v1, p3}, Lcom/google/googlenav/bJ;->e(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
