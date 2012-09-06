.class Lcom/google/googlenav/android/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 731
    iput-object p1, p0, Lcom/google/googlenav/android/s;->b:Lcom/google/googlenav/android/i;

    iput-object p2, p0, Lcom/google/googlenav/android/s;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/googlenav/android/s;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/android/t;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/t;-><init>(Lcom/google/googlenav/android/s;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 740
    return-void
.end method
