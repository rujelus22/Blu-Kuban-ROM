.class Lcom/google/googlenav/android/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/ac;

.field private b:Ljava/lang/Runnable;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ac;Ljava/lang/Runnable;Z)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/android/ad;->a:Lcom/google/googlenav/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/android/ad;->b:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/google/googlenav/android/ad;->c:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/android/ad;->a:Lcom/google/googlenav/android/ac;

    invoke-static {v0}, Lcom/google/googlenav/android/ac;->a(Lcom/google/googlenav/android/ac;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/googlenav/android/ad;->c:Z

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/android/ad;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_c
.end method
