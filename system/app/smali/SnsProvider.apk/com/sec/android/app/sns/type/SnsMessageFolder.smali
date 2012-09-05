.class public final Lcom/sec/android/app/sns/type/SnsMessageFolder;
.super Ljava/lang/Object;
.source "SnsMessageFolder.java"


# static fields
.field public static final FOLDER_NAME:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "inbox"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "outbox"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "save"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "trash"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "temp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "all"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "commenting"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "updates"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sns/type/SnsMessageFolder;->FOLDER_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
