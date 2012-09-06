.class Lcom/google/googlenav/ui/view/android/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/av;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/av;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    if-gez p3, :cond_3

    .line 154
    :goto_2
    return-void

    .line 152
    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/av;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/av;->b()V

    .line 153
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/av;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/az;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/az;->a(Lcom/google/googlenav/ui/view/android/az;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/av;->a(Lcom/google/googlenav/ui/view/android/av;I)V

    goto :goto_2
.end method
