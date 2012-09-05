.class public final enum Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;
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
    name = "NotificationCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum CIRCLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum ENTITYPROFILE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum GAMES:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum HANGOUT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum MOBILE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum QUESTIONS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum STREAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field public static final enum SYSTEM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;",
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
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 25
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "STREAM"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->STREAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 26
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->CIRCLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 27
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "PHOTOS"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 28
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "GAMES"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->GAMES:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 29
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->SYSTEM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 30
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "QUESTIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->QUESTIONS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 31
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "MOBILE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->MOBILE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 32
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "HANGOUT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->HANGOUT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 33
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const-string v1, "ENTITYPROFILE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->ENTITYPROFILE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 23
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->STREAM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->CIRCLE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->PHOTOS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->GAMES:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->SYSTEM:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->QUESTIONS:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->MOBILE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->HANGOUT:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->ENTITYPROFILE:Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    .line 69
    new-instance v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory$1;

    invoke-direct {v0}, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory$1;-><init>()V

    sput-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p4, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->value:I

    .line 80
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->$VALUES:[Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    invoke-virtual {v0}, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/google/apps/people/notifications/proto/base/NotificationEnums$NotificationCategory;->value:I

    return v0
.end method
