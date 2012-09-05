.class public final enum Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;
.super Ljava/lang/Enum;
.source "Buzz.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum ACCESS_DENIED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum BACKEND_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum BUZZ_HEADER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum COMPRESSION_TYPE_NOT_SUPPORTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum EXPECTED_RECIPIENT_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum EXPECTED_SENDER_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum NON_EXISTENT_RECIPIENT:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum NOT_IMPLEMENTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum PREPICKED_SERVER_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum RECIPIENT_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum RECIPIENT_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum RECIPIENT_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum SENDER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum SENDER_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum SENDER_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum SERVER_OVERLOADED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum STANZA_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum TASK_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum UNEXPECTED_RECIPIENT_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field public static final enum UNEXPECTED_SENDER_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;",
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

    .line 2928
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "EXPECTED_RECIPIENT_TYPE_NOT_FOUND"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->EXPECTED_RECIPIENT_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2929
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "UNEXPECTED_RECIPIENT_TYPE_FOUND"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->UNEXPECTED_RECIPIENT_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2930
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "EXPECTED_SENDER_TYPE_NOT_FOUND"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->EXPECTED_SENDER_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2931
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "UNEXPECTED_SENDER_TYPE_FOUND"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->UNEXPECTED_SENDER_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2932
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "RECIPIENT_ERROR"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2933
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "SENDER_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2934
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "RECIPIENT_JID_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2935
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "RECIPIENT_GATEWAY_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2936
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "SENDER_JID_ERROR"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2937
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "SENDER_GATEWAY_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2938
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "BUZZ_HEADER_ERROR"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->BUZZ_HEADER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2939
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "BACKEND_ERROR"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->BACKEND_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2940
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "NON_EXISTENT_RECIPIENT"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->NON_EXISTENT_RECIPIENT:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2941
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "COMPRESSION_TYPE_NOT_SUPPORTED"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->COMPRESSION_TYPE_NOT_SUPPORTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2942
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "STANZA_ERROR"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->STANZA_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2943
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "ACCESS_DENIED"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->ACCESS_DENIED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2944
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "TASK_NOT_REACHABLE"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->TASK_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2945
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "PREPICKED_SERVER_NOT_REACHABLE"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->PREPICKED_SERVER_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2946
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "NOT_IMPLEMENTED"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->NOT_IMPLEMENTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2947
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    const-string v1, "SERVER_OVERLOADED"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SERVER_OVERLOADED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 2926
    const/16 v0, 0x14

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->EXPECTED_RECIPIENT_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->UNEXPECTED_RECIPIENT_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->EXPECTED_SENDER_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->UNEXPECTED_SENDER_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->BUZZ_HEADER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->BACKEND_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->NON_EXISTENT_RECIPIENT:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->COMPRESSION_TYPE_NOT_SUPPORTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->STANZA_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->ACCESS_DENIED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->TASK_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->PREPICKED_SERVER_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->NOT_IMPLEMENTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SERVER_OVERLOADED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    .line 3005
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3014
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3015
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->value:I

    .line 3016
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;
    .registers 2
    .parameter "value"

    .prologue
    .line 2975
    packed-switch p0, :pswitch_data_42

    .line 2996
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2976
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->EXPECTED_RECIPIENT_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2977
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->UNEXPECTED_RECIPIENT_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2978
    :pswitch_b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->EXPECTED_SENDER_TYPE_NOT_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2979
    :pswitch_e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->UNEXPECTED_SENDER_TYPE_FOUND:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2980
    :pswitch_11
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2981
    :pswitch_14
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2982
    :pswitch_17
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2983
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->RECIPIENT_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2984
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_JID_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2985
    :pswitch_20
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SENDER_GATEWAY_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2986
    :pswitch_23
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->BUZZ_HEADER_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2987
    :pswitch_26
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->BACKEND_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2988
    :pswitch_29
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->NON_EXISTENT_RECIPIENT:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2989
    :pswitch_2c
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->COMPRESSION_TYPE_NOT_SUPPORTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2990
    :pswitch_2f
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->STANZA_ERROR:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2991
    :pswitch_32
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->ACCESS_DENIED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2992
    :pswitch_35
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->TASK_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2993
    :pswitch_38
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->PREPICKED_SERVER_NOT_REACHABLE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2994
    :pswitch_3b
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->NOT_IMPLEMENTED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2995
    :pswitch_3e
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->SERVER_OVERLOADED:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    goto :goto_4

    .line 2975
    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;
    .registers 2
    .parameter

    .prologue
    .line 2926
    const-class v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;
    .registers 1

    .prologue
    .line 2926
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2972
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingResult$ApplicationError;->value:I

    return v0
.end method
