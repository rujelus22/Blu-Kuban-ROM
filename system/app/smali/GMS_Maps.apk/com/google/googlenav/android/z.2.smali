.class Lcom/google/googlenav/android/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/Y;

.field private b:Ljava/lang/Runnable;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/Y;Ljava/lang/Runnable;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/google/googlenav/android/Z;->b:Ljava/lang/Runnable;

    .line 75
    iput-boolean p3, p0, Lcom/google/googlenav/android/Z;->c:Z

    .line 76
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/googlenav/android/Z;->a:Lcom/google/googlenav/android/Y;

    invoke-static {v0}, Lcom/google/googlenav/android/Y;->a(Lcom/google/googlenav/android/Y;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 83
    iget-boolean v0, p0, Lcom/google/googlenav/android/Z;->c:Z

    if-eqz v0, :cond_d

    .line 101
    :goto_c
    return-void

    .line 92
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/android/Z;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_c
.end method
