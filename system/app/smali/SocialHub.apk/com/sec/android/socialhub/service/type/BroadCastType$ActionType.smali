.class public Lcom/sec/android/socialhub/service/type/BroadCastType$ActionType;
.super Ljava/lang/Object;
.source "BroadCastType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/service/type/BroadCastType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionType"
.end annotation


# static fields
.field private static final ACTION_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 57
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACTION_INSERT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ACTION_UPDATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ACTION_DELETE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ACTION_ADD_ACCOUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ACTION_EDIT_ACCOUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ACTION_DELETE_ACCOUNT"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ACTION_SYNC_COMPLETE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ACTION_SYNC_FAVORITE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ACTION_RES_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ACTION_SYNC_FOLLOWUPFLAG"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ACTION_STATUS_LASTVERB"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ACTION_ATTACHMENT_UPDATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/service/type/BroadCastType$ActionType;->ACTION_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(I)Ljava/lang/String;
    .registers 2
    .parameter "type"

    .prologue
    .line 76
    sget-object v0, Lcom/sec/android/socialhub/service/type/BroadCastType$ActionType;->ACTION_NAME:[Ljava/lang/String;

    array-length v0, v0

    if-lt p0, v0, :cond_7

    .line 78
    const/4 v0, 0x0

    .line 82
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/sec/android/socialhub/service/type/BroadCastType$ActionType;->ACTION_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_6
.end method
