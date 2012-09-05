.class Lcom/samsung/swift/security/SecurityPreferencesActivity$12;
.super Ljava/lang/Object;
.source "SecurityPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/swift/security/SecurityPreferencesActivity;->showSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/samsung/swift/security/SecurityPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$12;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "preference"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 748
    invoke-static {}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$12;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #getter for: Lcom/samsung/swift/security/SecurityPreferencesActivity;->localNetworks:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$100(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/Network;

    .line 750
    .local v0, net:Lcom/samsung/swift/security/Network;
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 752
    invoke-virtual {v0, v5}, Lcom/samsung/swift/security/Network;->setWhiteListed(Z)V

    .line 753
    invoke-virtual {v0, v4}, Lcom/samsung/swift/security/Network;->setBlackListed(Z)V

    .line 754
    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->setShortExpiration()V

    .line 755
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$12;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_allowed_network:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 771
    :goto_5e
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/swift/security/SecurityManager;->update(Lcom/samsung/swift/security/Network;)V

    .line 772
    return v5

    .line 757
    :cond_66
    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 759
    invoke-virtual {v0, v4}, Lcom/samsung/swift/security/Network;->setWhiteListed(Z)V

    .line 760
    invoke-virtual {v0, v5}, Lcom/samsung/swift/security/Network;->setBlackListed(Z)V

    .line 761
    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->setInfiniteExpiration()V

    .line 762
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$12;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_blocked_network:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5e

    .line 766
    :cond_87
    invoke-virtual {v0, v4}, Lcom/samsung/swift/security/Network;->setWhiteListed(Z)V

    .line 767
    invoke-virtual {v0, v4}, Lcom/samsung/swift/security/Network;->setBlackListed(Z)V

    .line 768
    invoke-virtual {v0}, Lcom/samsung/swift/security/Network;->setInfiniteExpiration()V

    .line 769
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$12;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_ask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5e
.end method
