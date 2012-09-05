.class public Lcom/google/mobile/googlenav/common/util/RuntimeCheck;
.super Ljava/lang/Object;


# static fields
.field private static isStartupComplete:Z

.field private static isTrackingStartup:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mobile/googlenav/common/util/RuntimeCheck;->isTrackingStartup:Z

    sput-boolean v0, Lcom/google/mobile/googlenav/common/util/RuntimeCheck;->isStartupComplete:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTest()V
    .registers 2

    invoke-static {}, Lcom/google/mobile/googlenav/common/ConfigSettings;->isTestBuild()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a unit or feature test"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method
