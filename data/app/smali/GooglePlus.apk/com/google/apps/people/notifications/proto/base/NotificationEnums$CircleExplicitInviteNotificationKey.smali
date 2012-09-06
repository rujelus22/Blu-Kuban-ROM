.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;
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
    name = "CircleExplicitInviteNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

.field public static final enum CIRCLE_NOTIFICATION_SOURCE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;",
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

    .line 611
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    const-string v1, "CIRCLE_NOTIFICATION_SOURCE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->CIRCLE_NOTIFICATION_SOURCE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    .line 609
    new-array v0, v3, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->CIRCLE_NOTIFICATION_SOURCE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    .line 631
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 640
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 641
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->value:I

    .line 642
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 620
    packed-switch p0, :pswitch_data_8

    .line 622
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 621
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->CIRCLE_NOTIFICATION_SOURCE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    goto :goto_4

    .line 620
    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 609
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;
    .registers 1

    .prologue
    .line 609
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;->value:I

    return v0
.end method
