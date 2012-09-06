.class Lcom/google/googlenav/ui/view/android/bG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bF;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bF;)V
    .registers 2
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bG;->a:Lcom/google/googlenav/ui/view/android/bF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bG;->a:Lcom/google/googlenav/ui/view/android/bF;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/bF;->a:Lcom/google/googlenav/ui/view/android/bE;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bE;->i()V

    .line 182
    return-void
.end method
