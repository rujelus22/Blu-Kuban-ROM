.class public Lcom/sec/android/app/sns/type/SnsTargetType;
.super Ljava/lang/Object;
.source "SnsTargetType.java"


# static fields
.field public static final NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "note"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "video"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "profile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "activity"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bulletin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "statuslist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "diary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "event"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "blog"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "AllContents"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsTargetType;->NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
