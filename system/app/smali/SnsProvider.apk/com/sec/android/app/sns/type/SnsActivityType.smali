.class public Lcom/sec/android/app/sns/type/SnsActivityType;
.super Ljava/lang/Object;
.source "SnsActivityType.java"


# static fields
.field private static final ACTOR_CODE:[Ljava/lang/String;

.field public static final TABLE_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ActorCode_OWNER"

    aput-object v1, v0, v2

    const-string v1, "ActorCode_FRIEND"

    aput-object v1, v0, v3

    const-string v1, "ActorCode_GROUP"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sns/type/SnsActivityType;->ACTOR_CODE:[Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "activity"

    aput-object v1, v0, v2

    const-string v1, "friend_activity"

    aput-object v1, v0, v3

    const-string v1, "group_activity"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/sns/type/SnsActivityType;->TABLE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActorCode(I)Ljava/lang/String;
    .registers 3
    .parameter "activityType"

    .prologue
    .line 56
    :try_start_0
    sget-object v1, Lcom/sec/android/app/sns/type/SnsActivityType;->ACTOR_CODE:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    .line 59
    :goto_4
    return-object v1

    .line 57
    :catch_5
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 59
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static getTableName(I)Ljava/lang/String;
    .registers 3
    .parameter "activityType"

    .prologue
    .line 65
    :try_start_0
    sget-object v1, Lcom/sec/android/app/sns/type/SnsActivityType;->TABLE_NAME:[Ljava/lang/String;

    aget-object v1, v1, p0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    .line 68
    :goto_4
    return-object v1

    .line 66
    :catch_5
    move-exception v0

    .line 67
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 68
    const/4 v1, 0x0

    goto :goto_4
.end method
