.class Lcom/google/googlenav/ui/android/R;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ll/q;

.field final synthetic b:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Ll/q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/googlenav/ui/android/R;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/R;->a:Ll/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/googlenav/ui/android/R;->b:Lcom/google/googlenav/ui/android/FloorPickerView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/R;->a:Ll/q;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->c(Ll/q;)V

    .line 423
    return-void
.end method
