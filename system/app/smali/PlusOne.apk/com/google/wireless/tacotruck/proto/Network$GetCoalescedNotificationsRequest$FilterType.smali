.class public final enum Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum CAMERA_SYNC_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum CIRCLE_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum GAMES_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum MY_POSTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum NEW_COMMENTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum NO_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field public static final enum SYSTEM_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31129
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "MENTIONS_FILTER"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31130
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "MY_POSTS_FILTER"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MY_POSTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31131
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "NEW_COMMENTS_FILTER"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->NEW_COMMENTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31132
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "CIRCLE_FILTER"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->CIRCLE_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31133
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "GAMES_FILTER"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->GAMES_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31134
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "SYSTEM_FILTER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->SYSTEM_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31135
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "CAMERA_SYNC_FILTER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->CAMERA_SYNC_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31136
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    const-string v1, "NO_FILTER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const v4, 0xffff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->NO_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31127
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MY_POSTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->NEW_COMMENTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->CIRCLE_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->GAMES_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->SYSTEM_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->CAMERA_SYNC_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->NO_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    .line 31170
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 31179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31180
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->value:I

    .line 31181
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    .registers 2
    .parameter "value"

    .prologue
    .line 31152
    sparse-switch p0, :sswitch_data_1e

    .line 31161
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 31153
    :sswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MENTIONS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31154
    :sswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->MY_POSTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31155
    :sswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->NEW_COMMENTS_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31156
    :sswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->CIRCLE_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31157
    :sswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->GAMES_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31158
    :sswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->SYSTEM_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31159
    :sswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->CAMERA_SYNC_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31160
    :sswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->NO_FILTER:Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    goto :goto_4

    .line 31152
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0x4 -> :sswitch_11
        0x5 -> :sswitch_14
        0x6 -> :sswitch_17
        0xffff -> :sswitch_1a
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    .registers 2
    .parameter

    .prologue
    .line 31127
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;
    .registers 1

    .prologue
    .line 31127
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 31149
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetCoalescedNotificationsRequest$FilterType;->value:I

    return v0
.end method
