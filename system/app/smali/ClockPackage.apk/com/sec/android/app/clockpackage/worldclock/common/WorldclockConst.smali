.class public Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;
.super Ljava/lang/Object;
.source "WorldclockConst.java"


# static fields
.field public static final DATA_URI:Landroid/net/Uri;

.field public static final WC_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gmt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dst"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "homezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pointX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pointY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    .line 86
    const-string v0, "content://com.sec.android.provider.stri_s1_worldclock/HOMEZONE/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
