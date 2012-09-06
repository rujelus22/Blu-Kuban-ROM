.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;
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
    name = "EntityProfileNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

.field public static final enum ENTITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

.field public static final enum ENTITY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

.field public static final enum ENTITY_PROFILE_PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;",
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

    .line 449
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    const-string v1, "ENTITY_NAME"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    .line 450
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    const-string v1, "ENTITY_ID"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    .line 451
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    const-string v1, "ENTITY_PROFILE_PHOTO_URL"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_PROFILE_PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    .line 447
    new-array v0, v5, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_PROFILE_PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    .line 475
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 484
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 485
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->value:I

    .line 486
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 462
    packed-switch p0, :pswitch_data_e

    .line 466
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 463
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    goto :goto_4

    .line 464
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    goto :goto_4

    .line 465
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->ENTITY_PROFILE_PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    goto :goto_4

    .line 462
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 447
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;
    .registers 1

    .prologue
    .line 447
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 459
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;->value:I

    return v0
.end method
