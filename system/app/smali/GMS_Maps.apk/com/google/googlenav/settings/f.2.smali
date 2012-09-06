.class Lcom/google/googlenav/settings/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/prefetch/android/w;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;

.field final synthetic b:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/google/googlenav/settings/F;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    iput-object p2, p0, Lcom/google/googlenav/settings/F;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 401
    const/4 v0, 0x0

    .line 404
    iget-object v1, p0, Lcom/google/googlenav/settings/F;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aa()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/G;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/G;-><init>(Lcom/google/googlenav/settings/F;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 417
    return-void
.end method
