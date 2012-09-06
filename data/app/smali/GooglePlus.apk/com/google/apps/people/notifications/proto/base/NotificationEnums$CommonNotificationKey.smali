.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;
.super Ljava/lang/Enum;
.source "NotificationEnums.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/notifications/proto/base/NotificationEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommonNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

.field public static final enum APPLICATION_BASE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

.field public static final enum RECIPIENT_LOCALE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

.field public static final enum SOURCE_APPLICATION_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 326
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    const-string v1, "APPLICATION_BASE_URL"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->APPLICATION_BASE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    .line 327
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    const-string v1, "SOURCE_APPLICATION_ID"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->SOURCE_APPLICATION_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    .line 328
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    const-string v1, "RECIPIENT_LOCALE"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->RECIPIENT_LOCALE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    .line 324
    new-array v0, v5, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->APPLICATION_BASE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->SOURCE_APPLICATION_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->RECIPIENT_LOCALE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    .line 352
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 362
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->value:I

    .line 363
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 339
    packed-switch p0, :pswitch_data_e

    .line 343
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 340
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->APPLICATION_BASE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    goto :goto_4

    .line 341
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->SOURCE_APPLICATION_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    goto :goto_4

    .line 342
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->RECIPIENT_LOCALE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    goto :goto_4

    .line 339
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 324
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;
    .registers 1

    .prologue
    .line 324
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;->value:I

    return v0
.end method
