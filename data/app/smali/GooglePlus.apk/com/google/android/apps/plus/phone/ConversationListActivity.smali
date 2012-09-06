.class public Lcom/google/android/apps/plus/phone/ConversationListActivity;
.super Landroid/app/Activity;
.source "ConversationListActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/google/android/apps/plus/phone/Intents;->getMessengerActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 27
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1201

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    invoke-static {}, Lcom/google/android/apps/plus/phone/ConversationActivity;->hasInstance()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->hasInstance()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 33
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 36
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationListActivity;->finish()V

    .line 38
    return-void
.end method
