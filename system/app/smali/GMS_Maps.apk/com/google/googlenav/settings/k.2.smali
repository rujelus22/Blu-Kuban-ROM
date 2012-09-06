.class Lcom/google/googlenav/settings/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/googlenav/settings/K;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 492
    const-string v0, "magicpig"

    const-string v1, "clearAll "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v0, p0, Lcom/google/googlenav/settings/K;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->c(Lcom/google/googlenav/settings/MapTileSettingsActivity;)LaD/i;

    move-result-object v0

    invoke-interface {v0}, LaD/i;->e()V

    .line 495
    invoke-static {}, Lcom/google/googlenav/prefetch/android/B;->d()Lcom/google/googlenav/prefetch/android/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/B;->f()V

    .line 496
    invoke-static {}, Lcom/google/googlenav/prefetch/android/B;->d()Lcom/google/googlenav/prefetch/android/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/B;->b()V

    .line 497
    return-void
.end method
