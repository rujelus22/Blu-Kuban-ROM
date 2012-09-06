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

.field public static final enum GADGET_HANGOUT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum GADGET_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

.field public static final enum GADGET_MARQUEE_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

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

    .line 493
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_URL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 494
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_GID"

    invoke-direct {v0, v1, v5, v5, v9}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_GID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 495
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_NAME"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 496
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_SCREENSHOT_URL"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_SCREENSHOT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 497
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "INVITE_PARAM"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->INVITE_PARAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 498
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_TITLE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_TITLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 499
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_BODY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_BODY:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 500
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_ANCHOR_TEXT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_ANCHOR_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 501
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "MESSAGE_IMAGE_URL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_IMAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 502
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "AUTH_TOKEN"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->AUTH_TOKEN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 503
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_ICON_URL"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 504
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_MARQUEE_ICON_URL"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_MARQUEE_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 505
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    const-string v1, "GADGET_HANGOUT_ID"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_HANGOUT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 491
    const/16 v0, 0xd

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

    const/16 v1, 0xb

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_MARQUEE_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_HANGOUT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    .line 549
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
    .line 558
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 559
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->value:I

    .line 560
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 526
    packed-switch p0, :pswitch_data_2c

    .line 540
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 527
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 528
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_GID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 529
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 530
    :pswitch_e
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_SCREENSHOT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 531
    :pswitch_11
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->INVITE_PARAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 532
    :pswitch_14
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_TITLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 533
    :pswitch_17
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_BODY:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 534
    :pswitch_1a
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_ANCHOR_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 535
    :pswitch_1d
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->MESSAGE_IMAGE_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 536
    :pswitch_20
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->AUTH_TOKEN:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 537
    :pswitch_23
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 538
    :pswitch_26
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_MARQUEE_ICON_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 539
    :pswitch_29
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->GADGET_HANGOUT_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    goto :goto_4

    .line 526
    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_14
        :pswitch_20
        :pswitch_23
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 491
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;
    .registers 1

    .prologue
    .line 491
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
    .line 523
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;->value:I

    return v0
.end method
