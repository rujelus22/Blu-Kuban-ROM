.class public Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxEmailProvider;
.super Ljava/lang/Object;
.source "UinboxEmailProvider.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 13
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sevenAccountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "typeMsg"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/unifiedinbox/provider/UinboxEmailProvider;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
