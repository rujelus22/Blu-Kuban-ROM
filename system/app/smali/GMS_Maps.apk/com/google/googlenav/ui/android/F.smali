.class Lcom/google/googlenav/ui/android/F;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lt/y;

.field final synthetic b:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Lt/y;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/android/F;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/F;->a:Lt/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/F;->a:Lt/y;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lt/y;)V

    return-void
.end method
