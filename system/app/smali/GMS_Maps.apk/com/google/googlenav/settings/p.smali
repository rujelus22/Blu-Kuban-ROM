.class Lcom/google/googlenav/settings/p;
.super Ljava/lang/Object;

# interfaces
.implements Lax/aZ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

.field final synthetic b:Lcom/google/googlenav/settings/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/o;Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/p;->b:Lcom/google/googlenav/settings/o;

    iput-object p2, p0, Lcom/google/googlenav/settings/p;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/p;->b:Lcom/google/googlenav/settings/o;

    iget-object v0, v0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/settings/p;->b:Lcom/google/googlenav/settings/o;

    iget-object v0, v0, Lcom/google/googlenav/settings/o;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_15
    return-void
.end method
