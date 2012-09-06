.class Lcom/google/googlenav/settings/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/aS;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

.field final synthetic b:Lcom/google/googlenav/settings/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/q;Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Lcom/google/googlenav/settings/r;->b:Lcom/google/googlenav/settings/q;

    iput-object p2, p0, Lcom/google/googlenav/settings/r;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/googlenav/settings/r;->b:Lcom/google/googlenav/settings/q;

    iget-object v0, v0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 608
    iget-object v0, p0, Lcom/google/googlenav/settings/r;->b:Lcom/google/googlenav/settings/q;

    iget-object v0, v0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->c(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 610
    :cond_15
    return-void
.end method
