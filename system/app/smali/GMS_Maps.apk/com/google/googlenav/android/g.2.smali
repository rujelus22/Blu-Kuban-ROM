.class Lcom/google/googlenav/android/g;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/e;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/g;->a:Lcom/google/googlenav/android/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lat/g;

    invoke-interface {v0}, Lat/g;->j_()V

    return-void
.end method
