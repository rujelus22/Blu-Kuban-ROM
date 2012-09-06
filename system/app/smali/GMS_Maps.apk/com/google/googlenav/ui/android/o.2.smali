.class Lcom/google/googlenav/ui/android/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/N;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/N;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/googlenav/ui/android/O;->a:Lcom/google/googlenav/ui/android/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/googlenav/ui/android/O;->a:Lcom/google/googlenav/ui/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/N;->a(Lcom/google/googlenav/ui/android/N;)Lcom/google/googlenav/ui/android/FloorPickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a()I

    move-result v0

    if-eq p3, v0, :cond_15

    .line 58
    iget-object v0, p0, Lcom/google/googlenav/ui/android/O;->a:Lcom/google/googlenav/ui/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/N;->b(Lcom/google/googlenav/ui/android/N;)Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->D()V

    .line 60
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/ui/android/O;->a:Lcom/google/googlenav/ui/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/N;->a(Lcom/google/googlenav/ui/android/N;)Lcom/google/googlenav/ui/android/FloorPickerView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/android/FloorPickerView;->setSelectedPosition(I)V

    .line 61
    sget-object v0, Lcom/google/googlenav/android/A;->a:Lcom/google/googlenav/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/android/A;->h()V

    .line 62
    return-void
.end method
