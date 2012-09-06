.class public Lcom/google/googlenav/layer/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/layer/r;


# instance fields
.field private final a:Lcom/google/googlenav/android/i;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/i;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/googlenav/layer/b;->a:Lcom/google/googlenav/android/i;

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 77
    new-instance v0, Lcom/google/googlenav/layer/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/layer/d;-><init>(Lcom/google/googlenav/layer/b;)V

    .line 84
    new-instance v1, LY/d;

    invoke-virtual {p0}, Lcom/google/googlenav/layer/b;->c()LY/c;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {v1}, LY/d;->g()V

    .line 86
    return-void
.end method

.method public a(LaM/i;)V
    .registers 9
    .parameter

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    .line 72
    :cond_9
    :goto_9
    return-void

    :sswitch_a
    move-object v0, p1

    .line 36
    check-cast v0, LaM/bj;

    invoke-virtual {v0}, LaM/bj;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 39
    const/4 v0, 0x1

    move-object v1, v2

    .line 55
    :goto_19
    invoke-virtual {p1}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, LaM/i;->ax()Z

    move-result v3

    .line 57
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 58
    const-string v5, "layerId"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "layerDisplayName"

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "isActive"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    const-string v1, "isSearch"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 64
    new-instance v0, Lcom/google/googlenav/layer/c;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/layer/c;-><init>(Lcom/google/googlenav/layer/b;Landroid/content/ContentValues;)V

    .line 70
    new-instance v1, LY/d;

    invoke-virtual {p0}, Lcom/google/googlenav/layer/b;->c()LY/c;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LY/d;-><init>(LY/c;Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v1}, LY/d;->g()V

    goto :goto_9

    :sswitch_54
    move-object v0, p1

    .line 43
    check-cast v0, LaM/y;

    invoke-virtual {v0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_9

    .line 45
    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_19

    .line 32
    nop

    :sswitch_data_66
    .sparse-switch
        0x0 -> :sswitch_a
        0x6 -> :sswitch_54
        0x1a -> :sswitch_a
    .end sparse-switch
.end method

.method protected b()Landroid/content/ContentResolver;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/googlenav/layer/b;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected c()LY/c;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/layer/b;->a:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v0

    return-object v0
.end method
