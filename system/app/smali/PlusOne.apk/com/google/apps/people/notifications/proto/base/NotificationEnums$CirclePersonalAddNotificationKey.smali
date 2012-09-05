.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;
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
    name = "CirclePersonalAddNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

.field public static final enum RECIPROCATING_MEMBERSHIP:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;",
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

    .line 342
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    const-string v1, "RECIPROCATING_MEMBERSHIP"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->RECIPROCATING_MEMBERSHIP:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    .line 340
    new-array v0, v3, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->RECIPROCATING_MEMBERSHIP:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    .line 362
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 371
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 372
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->value:I

    .line 373
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 340
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;
    .registers 1

    .prologue
    .line 340
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 348
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;->value:I

    return v0
.end method
