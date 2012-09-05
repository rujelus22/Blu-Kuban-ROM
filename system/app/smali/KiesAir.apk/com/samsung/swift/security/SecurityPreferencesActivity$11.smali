.class Lcom/samsung/swift/security/SecurityPreferencesActivity$11;
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
    .line 682
    iput-object p1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$11;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9
    .parameter "preference"
    .parameter "arg1"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 686
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

    .line 687
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$11;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    #getter for: Lcom/samsung/swift/security/SecurityPreferencesActivity;->localConnections:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->access$800(Lcom/samsung/swift/security/SecurityPreferencesActivity;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/swift/security/Connection;

    .line 688
    .local v0, conn:Lcom/samsung/swift/security/Connection;
    const-string v1, "0"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 690
    invoke-interface {v0, v4}, Lcom/samsung/swift/security/Connection;->setWhiteListed(Z)V

    .line 691
    invoke-interface {v0, v5}, Lcom/samsung/swift/security/Connection;->setBlackListed(Z)V

    .line 692
    invoke-interface {v0}, Lcom/samsung/swift/security/Connection;->setShortExpiration()V

    .line 693
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$11;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_allowed_connection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 702
    :goto_5e
    invoke-static {}, Lcom/samsung/swift/security/SecurityManager;->instance()Lcom/samsung/swift/security/SecurityManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/swift/security/SecurityManager;->update(Lcom/samsung/swift/security/Connection;)V

    .line 703
    return v4

    .line 697
    :cond_66
    invoke-interface {v0, v5}, Lcom/samsung/swift/security/Connection;->setWhiteListed(Z)V

    .line 698
    invoke-interface {v0, v4}, Lcom/samsung/swift/security/Connection;->setBlackListed(Z)V

    .line 699
    invoke-interface {v0}, Lcom/samsung/swift/security/Connection;->setInfiniteExpiration()V

    .line 700
    iget-object v1, p0, Lcom/samsung/swift/security/SecurityPreferencesActivity$11;->this$0:Lcom/samsung/swift/security/SecurityPreferencesActivity;

    invoke-virtual {v1}, Lcom/samsung/swift/security/SecurityPreferencesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/swift/R$string;->security_manager_inline_button_prompt_blocked_connection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5e
.end method
