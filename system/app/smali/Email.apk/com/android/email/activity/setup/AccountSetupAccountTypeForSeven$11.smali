.class synthetic Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$11;
.super Ljava/lang/Object;
.source "AccountSetupAccountTypeForSeven.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 996
    invoke-static {}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->values()[Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$11;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    :try_start_9
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupAccountTypeForSeven$11;->$SwitchMap$com$seven$Z7$shared$Z7ServiceConstants$SystemCallbackType:[I

    sget-object v1, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->Z7_CALLBACK_PROVISIONING_CONNECTORS:Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;

    invoke-virtual {v1}, Lcom/seven/Z7/shared/Z7ServiceConstants$SystemCallbackType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
