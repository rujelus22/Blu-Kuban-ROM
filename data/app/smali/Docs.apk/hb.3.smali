.class public Lhb;
.super Ljava/lang/Object;
.source "InvitationActivity.java"

# interfaces
.implements LIj;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/InvitationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/InvitationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lhb;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)V
    .registers 6
    .parameter

    .prologue
    .line 348
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 349
    const-string v1, "InvitationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account switched to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v1, p0, Lhb;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/InvitationActivity;->b(Lcom/google/android/apps/docs/app/InvitationActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 351
    iget-object v1, p0, Lhb;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LXj;

    iget-object v2, p0, Lhb;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v1, v2, v0}, LXj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lhb;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->finish()V

    .line 354
    :cond_34
    return-void
.end method
