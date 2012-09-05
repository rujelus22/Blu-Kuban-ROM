.class public final Lcom/sec/android/app/sns/type/SnsReqState;
.super Ljava/lang/Object;
.source "SnsReqState.java"


# static fields
.field public static final NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "STATE_INIT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "STATE_PREPARE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "STATE_SEND"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STATE_RECEIVE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsReqState;->NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
