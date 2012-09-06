.class Lcom/google/googlenav/networkinitiated/d;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/networkinitiated/c;


# direct methods
.method constructor <init>(Lcom/google/googlenav/networkinitiated/c;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/d;->a:Lcom/google/googlenav/networkinitiated/c;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/d;->a:Lcom/google/googlenav/networkinitiated/c;

    invoke-static {v0}, Lcom/google/googlenav/networkinitiated/c;->a(Lcom/google/googlenav/networkinitiated/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "network_initiated_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    const-string v1, "registration_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/google/googlenav/friend/au;->k()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 65
    :goto_1a
    return-void

    .line 56
    :cond_1b
    if-eqz v0, :cond_23

    .line 59
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/d;->a:Lcom/google/googlenav/networkinitiated/c;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/networkinitiated/c;->a(Ljava/lang/String;)V

    goto :goto_1a

    .line 63
    :cond_23
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/d;->a:Lcom/google/googlenav/networkinitiated/c;

    invoke-static {v0}, Lcom/google/googlenav/networkinitiated/c;->b(Lcom/google/googlenav/networkinitiated/c;)V

    goto :goto_1a
.end method
