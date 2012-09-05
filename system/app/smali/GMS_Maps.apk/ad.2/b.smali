.class public Lad/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/i;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "signedin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lad/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public F_()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "signedin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lad/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lad/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lad/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/checkins/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public i()V
    .registers 1

    return-void
.end method
