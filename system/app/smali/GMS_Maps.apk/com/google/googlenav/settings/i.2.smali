.class Lcom/google/googlenav/settings/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/settings/h;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/h;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/settings/i;->b:Lcom/google/googlenav/settings/h;

    iput p2, p0, Lcom/google/googlenav/settings/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/settings/i;->b:Lcom/google/googlenav/settings/h;

    iget-object v0, v0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    iget v1, p0, Lcom/google/googlenav/settings/i;->a:I

    invoke-static {v0, v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;I)V

    return-void
.end method
