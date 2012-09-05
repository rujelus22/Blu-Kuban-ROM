.class Lcom/google/googlenav/ui/view/android/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/i;Landroid/widget/Button;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/m;->b:Lcom/google/googlenav/ui/view/android/i;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/m;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/m;->a:Landroid/widget/Button;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_b

    const/16 v0, 0x8

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
