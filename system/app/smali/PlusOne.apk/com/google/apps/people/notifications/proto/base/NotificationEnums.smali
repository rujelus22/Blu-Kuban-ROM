.class public final Lcom/google/apps/people/notifications/proto/base/NotificationEnums;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NotificationEnums.java"

# interfaces
.implements Lcom/google/apps/people/notifications/proto/base/NotificationEnumsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$1;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$Builder;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$HangoutNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$QuestionsNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$MobileNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$PhotosNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationSourceValue;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleExplicitInviteNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CircleNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$GamesNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$EntityProfileNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CirclePersonalAddNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$StreamNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$CommonNotificationKey;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationType;,
        Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/people/notifications/proto/base/NotificationEnums;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1072
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;-><init>(Z)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->defaultInstance:Lcom/google/apps/people/notifications/proto/base/NotificationEnums;

    .line 1073
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->defaultInstance:Lcom/google/apps/people/notifications/proto/base/NotificationEnums;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->initFields()V

    .line 1074
    return-void
.end method

.method private constructor <init>(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 881
    iput-byte v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->memoizedIsInitialized:B

    .line 895
    iput v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->memoizedSerializedSize:I

    .line 11
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$Builder;Lcom/google/apps/people/notifications/proto/base/NotificationEnums$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5
    invoke-direct {p0, p1}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;-><init>(Lcom/google/apps/people/notifications/proto/base/NotificationEnums$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 12
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 881
    iput-byte v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->memoizedIsInitialized:B

    .line 895
    iput v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->memoizedSerializedSize:I

    .line 12
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/apps/people/notifications/proto/base/NotificationEnums;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->defaultInstance:Lcom/google/apps/people/notifications/proto/base/NotificationEnums;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 880
    return-void
.end method


# virtual methods
.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 897
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->memoizedSerializedSize:I

    .line 898
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 902
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 900
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 901
    iput v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->memoizedSerializedSize:I

    move v1, v0

    .line 902
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 909
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums;->getSerializedSize()I

    .line 893
    return-void
.end method
