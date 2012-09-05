.class Lcom/google/googlenav/ui/android/A;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/A;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/googlenav/ui/android/A;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;)I

    move-result v0

    if-eq p3, v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/android/A;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->d(Lcom/google/googlenav/ui/android/FloorPickerView;)Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->F()V

    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/android/A;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0, p3}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;I)V

    sget-object v0, Lcom/google/googlenav/android/D;->a:Lcom/google/googlenav/android/D;

    invoke-virtual {v0}, Lcom/google/googlenav/android/D;->h()V

    return-void
.end method
