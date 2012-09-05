.class Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;
.super Ljava/lang/Object;
.source "SocialHubMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/SocialHubMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageTableWrapper"
.end annotation


# static fields
.field public static final FIELD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 925
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "app_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id_origin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "remove_req_cnt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contactid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sp_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/service/SocialHubMsgService$MessageTableWrapper;->FIELD:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 923
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
