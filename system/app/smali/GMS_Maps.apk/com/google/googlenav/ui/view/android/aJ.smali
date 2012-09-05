.class Lcom/google/googlenav/ui/view/android/aJ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aH;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aJ;->a:Lcom/google/googlenav/ui/view/android/aH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    if-gez p3, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aJ;->a:Lcom/google/googlenav/ui/view/android/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/aH;->b()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/aJ;->a:Lcom/google/googlenav/ui/view/android/aH;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/aL;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aL;->a(Lcom/google/googlenav/ui/view/android/aL;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/aH;->a(Lcom/google/googlenav/ui/view/android/aH;I)V

    goto :goto_2
.end method
