.class public LdU;
.super Ljava/lang/Object;
.source "CheckStatusActivity.java"

# interfaces
.implements LIj;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/CheckStatusActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, LdU;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;)V
    .registers 6
    .parameter

    .prologue
    .line 193
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 194
    const-string v1, "CheckStatusActivity"

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

    .line 195
    iget-object v1, p0, LdU;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->b(Lcom/google/android/apps/docs/app/CheckStatusActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 196
    iget-object v1, p0, LdU;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LXj;

    iget-object v2, p0, LdU;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-interface {v1, v2, v0}, LXj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, LdU;->a:Lcom/google/android/apps/docs/app/CheckStatusActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->finish()V

    .line 199
    :cond_34
    return-void
.end method
