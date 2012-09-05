.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;
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
    name = "HangoutNotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

.field public static final enum ACTIVITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

.field public static final enum TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;",
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

    .line 840
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    const-string v1, "ACTIVITY_ID"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->ACTIVITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    .line 841
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    .line 838
    new-array v0, v4, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->ACTIVITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    .line 863
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 872
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 873
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->value:I

    .line 874
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;
    .registers 2
    .parameter

    .prologue
    .line 838
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;
    .registers 1

    .prologue
    .line 838
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 848
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->value:I

    return v0
.end method
