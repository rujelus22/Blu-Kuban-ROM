.class public Lcom/google/googlenav/layer/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/layer/r;


# instance fields
.field private final a:Lcom/google/googlenav/android/l;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/b;->a:Lcom/google/googlenav/android/l;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    new-instance v0, Lcom/google/googlenav/layer/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/layer/d;-><init>(Lcom/google/googlenav/layer/b;)V

    new-instance v1, Lap/d;

    invoke-virtual {p0}, Lcom/google/googlenav/layer/b;->c()Lap/c;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lap/d;->g()V

    return-void
.end method

.method public a(LaY/i;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    :cond_9
    :goto_9
    return-void

    :sswitch_a
    move-object v0, p1

    check-cast v0, LaY/aG;

    invoke-virtual {v0}, LaY/aG;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move-object v1, v2

    :goto_19
    invoke-virtual {p1}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, LaY/i;->az()Z

    move-result v3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "layerId"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "layerDisplayName"

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isActive"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "isSearch"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance v0, Lcom/google/googlenav/layer/c;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/layer/c;-><init>(Lcom/google/googlenav/layer/b;Landroid/content/ContentValues;)V

    new-instance v1, Lap/d;

    invoke-virtual {p0}, Lcom/google/googlenav/layer/b;->c()Lap/c;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lap/d;-><init>(Lap/c;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lap/d;->g()V

    goto :goto_9

    :sswitch_54
    move-object v0, p1

    check-cast v0, LaY/t;

    invoke-virtual {v0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_19

    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_a
        0x6 -> :sswitch_54
    .end sparse-switch
.end method

.method protected b()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/b;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->h()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lap/c;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/b;->a:Lcom/google/googlenav/android/l;

    invoke-virtual {v0}, Lcom/google/googlenav/android/l;->k()Lcom/google/googlenav/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v0

    return-object v0
.end method
