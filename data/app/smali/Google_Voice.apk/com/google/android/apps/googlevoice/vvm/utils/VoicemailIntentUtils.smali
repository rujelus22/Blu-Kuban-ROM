.class public Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;
.super Ljava/lang/Object;
.source "VoicemailIntentUtils.java"


# static fields
.field public static final PROVIDER_DATA_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".PROVIDER_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;->PROVIDER_DATA_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static copyExtrasBetween(Landroid/content/Intent;Landroid/content/Intent;)V
    .registers 5
    .parameter "from"
    .parameter "to"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    .local v0, extras:Landroid/os/Bundle;
    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;->PROVIDER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 53
    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;->PROVIDER_DATA_KEY:Ljava/lang/String;

    sget-object v2, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;->PROVIDER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    :cond_17
    return-void
.end method

.method public static extractIdentifierFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .registers 3
    .parameter "intent"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;->PROVIDER_DATA_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public static storeIdentifierInIntent(Landroid/content/Intent;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 4
    .parameter "intent"
    .parameter "message"

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailIntentUtils;->PROVIDER_DATA_KEY:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    return-void
.end method
