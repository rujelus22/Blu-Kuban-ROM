.class Lcom/google/googlenav/ui/android/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ln/B;

.field final synthetic b:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Ln/B;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/googlenav/ui/android/T;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/T;->a:Ln/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/googlenav/ui/android/T;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/T;->a:Ln/B;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ln/B;)V

    .line 460
    return-void
.end method
