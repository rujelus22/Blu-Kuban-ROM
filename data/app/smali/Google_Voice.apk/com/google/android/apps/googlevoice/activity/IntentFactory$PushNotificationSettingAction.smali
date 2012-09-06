.class public final enum Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;
.super Ljava/lang/Enum;
.source "IntentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/activity/IntentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PushNotificationSettingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

.field public static final enum REGISTER:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

.field public static final enum TOGGLE:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

.field public static final enum UNREGISTER:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->REGISTER:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    .line 68
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    const-string v1, "UNREGISTER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->UNREGISTER:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    .line 69
    new-instance v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    const-string v1, "TOGGLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->TOGGLE:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->REGISTER:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->UNREGISTER:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->TOGGLE:Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->$VALUES:[Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;
    .registers 2
    .parameter "name"

    .prologue
    .line 66
    const-class v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->$VALUES:[Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/activity/IntentFactory$PushNotificationSettingAction;

    return-object v0
.end method
