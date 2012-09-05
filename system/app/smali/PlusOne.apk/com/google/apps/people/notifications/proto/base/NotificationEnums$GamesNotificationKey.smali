.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;
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
    name = "GamesNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum AUTH_TOKEN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum GADGET_GID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum GADGET_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum GADGET_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum GADGET_SCREENSHOT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum GADGET_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum INVITE_PARAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum MESSAGE_ANCHOR_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum MESSAGE_BODY:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum MESSAGE_IMAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum MESSAGE_TITLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0x9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 424
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_URL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 425
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_GID"

    invoke-direct {v0, v1, v5, v5, v9}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_GID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 426
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_NAME"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 427
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_SCREENSHOT_URL"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_SCREENSHOT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 428
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "INVITE_PARAM"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->INVITE_PARAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 429
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_TITLE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_TITLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 430
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_BODY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_BODY:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 431
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_ANCHOR_TEXT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_ANCHOR_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 432
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_IMAGE_URL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_IMAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 433
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "AUTH_TOKEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->AUTH_TOKEN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 434
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_ICON_URL"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 422
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_GID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_SCREENSHOT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->INVITE_PARAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_TITLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_BODY:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_ANCHOR_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_IMAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->AUTH_TOKEN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v1, v0, v9

    const/16 v1, 0xa

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 474
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 483
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 484
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->value:I

    .line 485
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;
    .registers 2
    .parameter

    .prologue
    .line 422
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;
    .registers 1

    .prologue
    .line 422
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->value:I

    return v0
.end method
