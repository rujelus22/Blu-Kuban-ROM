.class LgW;
.super Ljava/lang/Object;
.source "InvitationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LgV;


# direct methods
.method constructor <init>(LgV;)V
    .registers 2
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, LgW;->a:LgV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, LgW;->a:LgV;

    iget-object v0, v0, LgV;->a:LgU;

    iget-object v0, v0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;Z)V

    .line 177
    return-void
.end method
