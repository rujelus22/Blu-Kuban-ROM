.class public Lcom/google/android/apps/plus/oob/OobUtils;
.super Ljava/lang/Object;
.source "OobUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNextIntent(Landroid/content/Context;ILcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "step"
    .parameter "account"
    .parameter "startIntent"

    .prologue
    .line 30
    add-int/lit8 v1, p1, 0x1

    .line 33
    .local v1, nextStep:I
    packed-switch v1, :pswitch_data_1a

    .line 50
    const/4 v0, 0x0

    .line 54
    .local v0, intent:Landroid/content/Intent;
    :goto_6
    return-object v0

    .line 35
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_7
    invoke-static {p0, p2, v1, p3}, Lcom/google/android/apps/plus/phone/Intents;->getOobInstantUploadIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_6

    .line 40
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_c
    invoke-static {}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isAndroidSyncSupported()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 41
    invoke-static {p0, p2, v1, p3}, Lcom/google/android/apps/plus/phone/Intents;->getOobContactsSyncIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_6

    .line 44
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    const/4 v0, 0x0

    .line 46
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_6

    .line 33
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method public static shouldClearAccountBeforeGoingBack(I)Z
    .registers 3
    .parameter "step"

    .prologue
    .line 66
    add-int/lit8 v0, p0, -0x1

    .line 67
    .local v0, previousStep:I
    packed-switch v0, :pswitch_data_a

    .line 74
    const/4 v1, 0x1

    :goto_6
    return v1

    .line 70
    :pswitch_7
    const/4 v1, 0x0

    goto :goto_6

    .line 67
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method
