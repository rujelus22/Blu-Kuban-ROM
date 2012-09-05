.class public Lcom/sec/android/widgetapp/stockclock/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final CONNECTION_CHANGED:Ljava/lang/Object;

.field public static DEB_PRINT:Z

.field public static ENABLE_PERIODIC_AUTO_REFRESH:Z

.field public static FORMAT_CHANGED:Z

.field public static US_FORMAT:Z

.field public static bGotoIdel:Z

.field public static symbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    .line 8
    sput-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->US_FORMAT:Z

    .line 9
    sput-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->FORMAT_CHANGED:Z

    .line 10
    sput-boolean v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->ENABLE_PERIODIC_AUTO_REFRESH:Z

    .line 38
    sput-boolean v1, Lcom/sec/android/widgetapp/stockclock/common/Constants;->bGotoIdel:Z

    .line 39
    const-string v0, ""

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->symbol:Ljava/lang/String;

    .line 83
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    sput-object v0, Lcom/sec/android/widgetapp/stockclock/common/Constants;->CONNECTION_CHANGED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
