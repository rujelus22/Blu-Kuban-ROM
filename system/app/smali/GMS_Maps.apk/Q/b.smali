.class public LQ/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/h;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, LQ/b;->a:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public D_()V
    .registers 4

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v1, "signedin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, LQ/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 59
    return-void
.end method

.method public L_()V
    .registers 4

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.googlenav.friend.android.FriendServiceHelper.SIGNED_IN_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "signedin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, LQ/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 40
    iget-object v0, p0, LQ/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/appwidget/friends/a;->b(Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, LQ/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/googlenav/friend/checkins/a;->c(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method
