.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;
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
    name = "MobileNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

.field public static final enum CHAT_PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

.field public static final enum CHAT_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

.field public static final enum HAS_USED_BUNCH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;",
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

    .line 731
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    const-string v1, "CHAT_TEXT"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->CHAT_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    .line 732
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    const-string v1, "CHAT_PHOTO_URL"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->CHAT_PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    .line 733
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    const-string v1, "HAS_USED_BUNCH"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->HAS_USED_BUNCH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    .line 729
    new-array v0, v5, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->CHAT_TEXT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->CHAT_PHOTO_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->HAS_USED_BUNCH:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    .line 757
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 766
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 767
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->value:I

    .line 768
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;
    .registers 2
    .parameter

    .prologue
    .line 729
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;
    .registers 1

    .prologue
    .line 729
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 741
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;->value:I

    return v0
.end method
