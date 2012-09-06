.class Lcom/google/googlenav/ui/android/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ll/q;

.field final synthetic b:Ln/w;

.field final synthetic c:Lcom/google/googlenav/ui/android/FloorPickerView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/FloorPickerView;Ll/q;Ln/w;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/googlenav/ui/android/S;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/S;->a:Ll/q;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/S;->b:Ln/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/googlenav/ui/android/S;->a:Ll/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/S;->b:Ln/w;

    invoke-virtual {v1}, Ln/w;->a()Ln/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll/q;->b(Ln/p;)Ln/C;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/google/googlenav/ui/android/S;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/FloorPickerView;->f(Lcom/google/googlenav/ui/android/FloorPickerView;)Ln/w;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/S;->b:Ln/w;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Ln/w;Ln/w;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 437
    if-nez v0, :cond_29

    const/4 v0, 0x0

    .line 438
    :goto_1d
    iget-object v1, p0, Lcom/google/googlenav/ui/android/S;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/S;->c:Lcom/google/googlenav/ui/android/FloorPickerView;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/FloorPickerView;->f(Lcom/google/googlenav/ui/android/FloorPickerView;)Ln/w;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/googlenav/ui/android/FloorPickerView;->a(Lcom/google/googlenav/ui/android/FloorPickerView;Ln/w;Ln/B;)V

    .line 440
    :cond_28
    return-void

    .line 437
    :cond_29
    invoke-virtual {v0}, Ln/C;->c()Ln/B;

    move-result-object v0

    goto :goto_1d
.end method
