.class LgV;
.super Lcg;
.source "InvitationActivity.java"


# instance fields
.field final synthetic a:LgU;

.field final synthetic a:LnQ;


# direct methods
.method constructor <init>(LgU;LnQ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, LgV;->a:LgU;

    iput-object p2, p0, LgV;->a:LnQ;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 3

    .prologue
    .line 167
    iget-object v0, p0, LgV;->a:LgU;

    iget-object v0, v0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    iget-object v1, p0, LgV;->a:LgU;

    iget-object v1, v1, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 168
    const/4 v0, 0x0

    .line 169
    :goto_e
    if-ltz v0, :cond_17

    .line 170
    iget-object v1, p0, LgV;->a:LnQ;

    invoke-interface {v1, v0}, LnQ;->a(I)I

    move-result v0

    goto :goto_e

    .line 173
    :cond_17
    iget-object v0, p0, LgV;->a:LgU;

    iget-object v0, v0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LgW;

    invoke-direct {v1, p0}, LgW;-><init>(LgV;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    iget-object v0, p0, LgV;->a:LgU;

    iget-object v0, v0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;Lcg;)Lcg;

    .line 181
    return-void
.end method
