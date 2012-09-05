.class public abstract Lcom/google/googlenav/actionbar/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/googlenav/actionbar/a;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/actionbar/a;
    .registers 1

    sget-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/google/googlenav/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-nez v0, :cond_1e

    new-instance v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;

    invoke-direct {v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk14;-><init>()V

    sput-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    :cond_1b
    :goto_1b
    sget-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    return-object v0

    :cond_1e
    invoke-static {}, Lcom/google/googlenav/android/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;

    invoke-direct {v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk11;-><init>()V

    sput-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    goto :goto_1b

    :cond_2c
    new-instance v0, Lcom/google/googlenav/actionbar/ActionBarControllerSdk9;

    invoke-direct {v0}, Lcom/google/googlenav/actionbar/ActionBarControllerSdk9;-><init>()V

    sput-object v0, Lcom/google/googlenav/actionbar/a;->a:Lcom/google/googlenav/actionbar/a;

    goto :goto_1b
.end method


# virtual methods
.method public abstract a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
.end method

.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/MenuItem;Lcom/google/googlenav/actionbar/b;)V
.end method

.method public abstract a(Lcom/google/android/maps/MapsActivity;Landroid/app/Dialog;Lcom/google/googlenav/ui/D;)V
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method

.method public abstract g()V
.end method

.method public abstract h()I
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method
