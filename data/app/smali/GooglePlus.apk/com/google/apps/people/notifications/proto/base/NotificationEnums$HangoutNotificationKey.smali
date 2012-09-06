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

.field public static final enum HANGOUT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

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
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 915
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    const-string v1, "ACTIVITY_ID"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->ACTIVITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    .line 916
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    .line 917
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    const-string v1, "HANGOUT_URL"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->HANGOUT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    .line 913
    new-array v0, v5, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->ACTIVITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->HANGOUT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    .line 941
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
    .line 950
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 951
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->value:I

    .line 952
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;
    .registers 2
    .parameter "value"

    .prologue
    .line 928
    packed-switch p0, :pswitch_data_e

    .line 932
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 929
    :pswitch_5
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->ACTIVITY_ID:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    goto :goto_4

    .line 930
    :pswitch_8
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->TYPE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    goto :goto_4

    .line 931
    :pswitch_b
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->HANGOUT_URL:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    goto :goto_4

    .line 928
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;
    .registers 2
    .parameter "name"

    .prologue
    .line 913
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;
    .registers 1

    .prologue
    .line 913
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
    .line 925
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;->value:I

    return v0
.end method
