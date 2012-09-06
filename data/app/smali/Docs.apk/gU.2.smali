.class public LgU;
.super Ljava/lang/Object;
.source "InvitationActivity.java"

# interfaces
.implements Lrz;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/InvitationActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/InvitationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LrA;
    .registers 6

    .prologue
    .line 134
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)LrA;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 135
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LLz;

    iget-object v1, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v2, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v2}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LLz;->a(Landroid/content/Context;Landroid/net/Uri;)LLC;

    move-result-object v0

    .line 137
    iget-object v1, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    new-instance v2, Lry;

    iget-object v3, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v3}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Lry;-><init>(Ljava/lang/String;Ljava/lang/String;LLC;)V

    invoke-static {v1, v2}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;LrA;)LrA;

    .line 139
    :cond_2d
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)LrA;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    iget-object v1, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->finish()V

    .line 130
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    iget-object v1, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/docs/app/InvitationActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    iget-object v1, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public a(LnQ;)V
    .registers 4
    .parameter

    .prologue
    .line 156
    const-string v0, "InvitationActivity"

    const-string v1, "UrlLoaderHelper.showLoginSpinner"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;Z)V

    .line 160
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)Lcg;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 161
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)Lcg;

    move-result-object v0

    invoke-virtual {v0}, Lcg;->a()V

    .line 164
    :cond_1e
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    new-instance v1, LgV;

    invoke-direct {v1, p0, p1}, LgV;-><init>(LgU;LnQ;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;Lcg;)Lcg;

    .line 183
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)Lcg;

    move-result-object v0

    invoke-virtual {v0}, Lcg;->start()V

    .line 184
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 150
    const-string v0, "InvitationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UrlLoaderHelper.showError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, LgU;->a:Lcom/google/android/apps/docs/app/InvitationActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Lcom/google/android/apps/docs/app/InvitationActivity;)V

    .line 152
    return-void
.end method
