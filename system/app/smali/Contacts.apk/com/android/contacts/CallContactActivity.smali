.class public Lcom/android/contacts/CallContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CallContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 40
    .local v0, contactUri:Landroid/net/Uri;
    if-nez v0, :cond_10

    .line 41
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    .line 46
    :cond_10
    if-eqz p1, :cond_13

    .line 56
    :goto_12
    return-void

    .line 50
    :cond_13
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 51
    invoke-static {p0, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_12

    .line 53
    :cond_27
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/CallContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    goto :goto_12
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_9

    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    .line 63
    :cond_9
    return-void
.end method
