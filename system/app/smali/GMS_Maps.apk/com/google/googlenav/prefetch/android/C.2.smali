.class Lcom/google/googlenav/prefetch/android/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/B;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/B;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/C;->a:Lcom/google/googlenav/prefetch/android/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/C;->a:Lcom/google/googlenav/prefetch/android/B;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/B;->b()V

    .line 246
    return-void
.end method
