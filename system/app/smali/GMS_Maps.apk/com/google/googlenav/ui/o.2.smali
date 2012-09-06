.class Lcom/google/googlenav/ui/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/android/A;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;

.field final synthetic b:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;Lcom/google/android/maps/MapsActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5988
    iput-object p1, p0, Lcom/google/googlenav/ui/O;->b:Lcom/google/googlenav/ui/v;

    iput-object p2, p0, Lcom/google/googlenav/ui/O;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lat/B;Lat/B;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5991
    new-instance v0, Laz/f;

    new-instance v1, Lcom/google/googlenav/prefetch/android/E;

    invoke-direct {v1, p1, p2}, Lcom/google/googlenav/prefetch/android/E;-><init>(Lat/B;Lat/B;)V

    const/16 v2, 0x35e

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, p3}, Laz/f;-><init>(Lcom/google/googlenav/prefetch/android/y;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    .line 5997
    invoke-virtual {v0}, Laz/f;->b()V

    .line 5998
    invoke-static {}, Laz/a;->c()Laz/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Laz/a;->a(Laz/f;)I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 6005
    :goto_1f
    iget-object v0, p0, Lcom/google/googlenav/ui/O;->b:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->d(Lcom/google/googlenav/ui/v;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->G()Lcom/google/googlenav/J;

    move-result-object v0

    const-string v1, "offline"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/J;->a(Ljava/lang/String;Z)V

    .line 6007
    return-void

    .line 6000
    :pswitch_30
    iget-object v0, p0, Lcom/google/googlenav/ui/O;->a:Lcom/google/android/maps/MapsActivity;

    const/16 v1, 0x340

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1f

    .line 5998
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_30
    .end packed-switch
.end method
