.class public Lcom/google/googlenav/networkinitiated/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/networkinitiated/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/h;->a:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .registers 4
    .parameter

    .prologue
    .line 33
    const-string v0, "refreshList"

    const-string v1, "op"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.friend.android.LatitudeBroadcastReceiver.ACTION_REFRESH_FRIENDS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v1, "respondingGaiaId"

    const-string v2, "respondingGaiaId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    const-string v1, "timestamp"

    const-string v2, "timestamp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/h;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
