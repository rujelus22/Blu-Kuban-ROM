.class public final enum Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;
.super Ljava/lang/Enum;
.source "AndroidPushNotificationRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Api"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

.field public static final enum CHECKIN:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

.field public static final enum REGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

.field public static final enum UNREGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;


# instance fields
.field public final apiAction:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    const-string v1, "CHECKIN"

    const/16 v2, 0x407

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->CHECKIN:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    .line 301
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    const-string v1, "REGISTER"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->REGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    .line 302
    new-instance v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    const-string v1, "UNREGISTER"

    const/16 v2, 0x3f3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->UNREGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    .line 299
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    sget-object v1, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->CHECKIN:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->REGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->UNREGISTER:Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->$VALUES:[Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "apiAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 305
    iput p3, p0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->apiAction:I

    .line 306
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;
    .registers 2
    .parameter "name"

    .prologue
    .line 299
    const-class v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;
    .registers 1

    .prologue
    .line 299
    sget-object v0, Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->$VALUES:[Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    invoke-virtual {v0}, [Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/googlevoice/AndroidPushNotificationRegistrar$Request$Api;

    return-object v0
.end method
