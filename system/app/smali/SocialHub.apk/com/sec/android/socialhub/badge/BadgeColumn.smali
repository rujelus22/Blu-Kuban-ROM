.class public Lcom/sec/android/socialhub/badge/BadgeColumn;
.super Ljava/lang/Object;
.source "BadgeColumn.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "badgecount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/badge/BadgeColumn;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
