.class Lcom/google/googlenav/ui/android/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/google/googlenav/ui/android/U;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/googlenav/ui/android/U;->a:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->e(Lcom/google/googlenav/ui/android/FloorPickerView;)V

    .line 637
    return-void
.end method
