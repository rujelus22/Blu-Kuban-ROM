.class public LdK;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements LHX;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/AccountsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/AccountsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 184
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lck;

    iget-object v1, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 180
    iget-object v0, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:LXJ;

    iget-object v1, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    sget v2, LcY;->error_failed_to_create_account:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/docs/app/AccountsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/AccountsActivity;->a:Lck;

    iget-object v1, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, LdK;->a:Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/AccountsActivity;->b(Lcom/google/android/apps/docs/app/AccountsActivity;)V

    .line 176
    return-void
.end method
