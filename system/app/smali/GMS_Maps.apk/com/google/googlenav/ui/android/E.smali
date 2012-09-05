.class Lcom/google/googlenav/ui/android/E;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lr/l;

.field final synthetic b:Lt/q;

.field final synthetic c:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lr/l;Lt/q;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/android/E;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/E;->a:Lr/l;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/E;->b:Lt/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/E;->a:Lr/l;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/E;->b:Lt/q;

    invoke-virtual {v1}, Lt/q;->a()Lt/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr/l;->a(Lt/r;)Lt/y;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/E;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->f(Lcom/google/googlenav/ui/android/FloorPickerView;)Lt/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/E;->b:Lt/q;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lt/q;Lt/q;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/googlenav/ui/android/E;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/E;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/FloorPickerView;->f(Lcom/google/googlenav/ui/android/FloorPickerView;)Lt/q;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;Lt/q;Lt/y;)V

    :cond_25
    return-void
.end method
