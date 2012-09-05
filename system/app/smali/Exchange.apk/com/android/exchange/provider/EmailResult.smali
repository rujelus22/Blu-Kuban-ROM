.class public Lcom/android/exchange/provider/EmailResult;
.super Ljava/lang/Object;
.source "EmailResult.java"


# static fields
.field public static searchResultPages:[Ljava/lang/String;


# instance fields
.field public endRange:I

.field public result:I

.field public startRange:I

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 65
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Success"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Protocol Violation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Server Error"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Bad Link"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Access Denied"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Not Found"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Connection Failed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Query Too Complex"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Content Index"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Time Out"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Bad ConnectionId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Too Many Results"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Access Blocked"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Credentails Required"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/provider/EmailResult;->searchResultPages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/android/exchange/provider/EmailResult;->startRange:I

    .line 94
    iput v0, p0, Lcom/android/exchange/provider/EmailResult;->endRange:I

    .line 104
    return-void
.end method
