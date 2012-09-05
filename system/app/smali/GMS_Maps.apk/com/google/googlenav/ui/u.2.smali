.class final Lcom/google/googlenav/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lbb/l;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lbb/l;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/u;->a:Lbb/l;

    iput p2, p0, Lcom/google/googlenav/ui/u;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/u;->a:Lbb/l;

    iget-object v0, v0, Lbb/l;->n:[I

    iget v1, p0, Lcom/google/googlenav/ui/u;->b:I

    aput p3, v0, v1

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
