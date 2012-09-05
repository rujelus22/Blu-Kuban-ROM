.class Lcom/google/googlenav/settings/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/prefetch/android/t;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/D;

.field final synthetic b:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/ui/D;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/E;->b:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    iput-object p2, p0, Lcom/google/googlenav/settings/E;->a:Lcom/google/googlenav/ui/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/settings/E;->a:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/settings/F;

    invoke-direct {v2, p0}, Lcom/google/googlenav/settings/F;-><init>(Lcom/google/googlenav/settings/E;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
