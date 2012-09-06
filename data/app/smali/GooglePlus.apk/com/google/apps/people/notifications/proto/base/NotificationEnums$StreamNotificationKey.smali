.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;
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
    name = "StreamNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

.field public static final enum ACTOR_DISPLAY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

.field public static final enum COMMENT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 370
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    const-string v1, "ACTOR_DISPLAY_NAME"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->ACTOR_DISPLAY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    .line 371
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    const-string v1, "COMMENT_ID"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->COMMENT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    .line 368
    new-array v0, v4, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->ACTOR_DISPLAY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->COMMENT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    .line 393
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 402
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 403
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->value:I

    .line 404
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 381
    packed-switch p0, :pswitch_data_c

    .line 384
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 382
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->ACTOR_DISPLAY_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    goto :goto_4

    .line 383
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->COMMENT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    goto :goto_4

    .line 381
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 368
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;
    .registers 1

    .prologue
    .line 368
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;->value:I

    return v0
.end method
