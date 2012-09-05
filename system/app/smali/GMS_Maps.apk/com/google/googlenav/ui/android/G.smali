.class Lcom/google/googlenav/ui/android/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/G;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/G;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->e(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    return-void
.end method
