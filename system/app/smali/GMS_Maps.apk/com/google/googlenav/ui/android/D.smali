.class Lcom/google/googlenav/ui/android/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lr/l;

.field final synthetic b:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lr/l;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/D;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/D;->a:Lr/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/D;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/D;->a:Lr/l;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->d(Lr/l;)V

    return-void
.end method
