.class Lcom/google/googlenav/settings/H;
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
    .line 443
    iput-object p1, p0, Lcom/google/googlenav/settings/H;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 446
    new-instance v1, Lcom/google/googlenav/settings/M;

    iget-object v2, p0, Lcom/google/googlenav/settings/H;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {v1, v2, v0}, Lcom/google/googlenav/settings/M;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/settings/F;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/settings/M;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 447
    return-void
.end method
