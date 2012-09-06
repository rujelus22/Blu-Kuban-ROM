.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;
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
    name = "CircleNotificationSourceValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

.field public static final enum OFF_NETWORK_USER_ADDED_TO_CIRCLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 649
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    const-string v1, "OFF_NETWORK_USER_ADDED_TO_CIRCLE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->OFF_NETWORK_USER_ADDED_TO_CIRCLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    .line 647
    new-array v0, v3, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->OFF_NETWORK_USER_ADDED_TO_CIRCLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    .line 669
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 678
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 679
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->value:I

    .line 680
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;
    .registers 2
    .parameter "value"

    .prologue
    .line 658
    packed-switch p0, :pswitch_data_8

    .line 660
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 659
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->OFF_NETWORK_USER_ADDED_TO_CIRCLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    goto :goto_4

    .line 658
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;
    .registers 2
    .parameter "name"

    .prologue
    .line 647
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;
    .registers 1

    .prologue
    .line 647
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;->value:I

    return v0
.end method
