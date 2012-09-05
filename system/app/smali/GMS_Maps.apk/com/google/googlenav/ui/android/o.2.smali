.class Lcom/google/googlenav/ui/android/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/n;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/n;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/android/o;->a:Lcom/google/googlenav/ui/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    iget-object v0, p0, Lcom/google/googlenav/ui/android/o;->a:Lcom/google/googlenav/ui/android/n;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f026e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/o;->a:Lcom/google/googlenav/ui/android/n;

    iget-object v1, v1, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x14

    iget-object v6, p0, Lcom/google/googlenav/ui/android/o;->a:Lcom/google/googlenav/ui/android/n;

    iget-object v6, v6, Lcom/google/googlenav/ui/android/n;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v6, v6, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/l;

    invoke-virtual {v6}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Landroid/os/Handler;JJLap/c;J)V

    return-void
.end method
