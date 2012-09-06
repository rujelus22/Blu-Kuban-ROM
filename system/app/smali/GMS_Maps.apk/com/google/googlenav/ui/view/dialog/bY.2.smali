.class Lcom/google/googlenav/ui/view/dialog/bY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bS;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bY;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bY;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->h(Lcom/google/googlenav/ui/view/dialog/bO;)I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 392
    :goto_b
    return-void

    .line 375
    :pswitch_c
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 377
    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x333

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    goto :goto_b

    .line 381
    :cond_2e
    const-string v0, "e"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bY;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    invoke-virtual {v0}, Laz/a;->g()Z

    goto :goto_b

    .line 387
    :pswitch_41
    const-string v0, "u"

    const-string v1, ""

    invoke-static {v0, v1}, Laz/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bY;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bO;->g(Lcom/google/googlenav/ui/view/dialog/bO;)Laz/a;

    move-result-object v0

    invoke-virtual {v0}, Laz/a;->f()V

    goto :goto_b

    .line 370
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_c
        :pswitch_41
        :pswitch_41
        :pswitch_c
    .end packed-switch
.end method
