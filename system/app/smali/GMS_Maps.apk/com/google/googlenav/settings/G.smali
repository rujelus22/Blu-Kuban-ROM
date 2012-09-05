.class Lcom/google/googlenav/settings/G;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/G;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Lcom/google/googlenav/settings/J;

    iget-object v2, p0, Lcom/google/googlenav/settings/G;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/settings/J;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/settings/E;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/settings/J;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
