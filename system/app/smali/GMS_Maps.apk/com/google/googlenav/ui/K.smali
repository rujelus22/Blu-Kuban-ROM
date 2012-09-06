.class final Lcom/google/googlenav/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/G;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/G;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/view/G;

    iput p2, p0, Lcom/google/googlenav/ui/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/googlenav/ui/k;->a:Lcom/google/googlenav/ui/view/G;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/G;->e:[I

    iget v1, p0, Lcom/google/googlenav/ui/k;->b:I

    aput p3, v0, v1

    .line 393
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    return-void
.end method
