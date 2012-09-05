.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;
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
    name = "CircleNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

.field public static final enum CIRCLE_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

.field public static final enum CIRCLE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

.field public static final enum CIRCLE_PERSONAL_MESSAGE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;",
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

    .line 492
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    const-string v1, "CIRCLE_ID"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->CIRCLE_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    .line 493
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    const-string v1, "CIRCLE_NAME"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->CIRCLE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    .line 494
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    const-string v1, "CIRCLE_PERSONAL_MESSAGE"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->CIRCLE_PERSONAL_MESSAGE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    .line 490
    new-array v0, v5, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->CIRCLE_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->CIRCLE_NAME:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->CIRCLE_PERSONAL_MESSAGE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    .line 518
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 527
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 528
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->value:I

    .line 529
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;
    .registers 2
    .parameter

    .prologue
    .line 490
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;
    .registers 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 502
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;->value:I

    return v0
.end method
