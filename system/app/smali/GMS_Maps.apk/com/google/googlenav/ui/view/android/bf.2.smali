.class Lcom/google/googlenav/ui/view/android/bF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bE;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bF;->a:Lcom/google/googlenav/ui/view/android/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 177
    const/4 v0, 0x1

    .line 178
    sget-object v1, Lcom/google/googlenav/ui/view/android/V;->f:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v1}, Lcom/google/googlenav/android/BaseMapsActivity;->getUiThreadHandler()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/view/android/bG;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/view/android/bG;-><init>(Lcom/google/googlenav/ui/view/android/bF;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 184
    return-void
.end method
