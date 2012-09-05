.class public Lcom/google/android/apps/uploader/googlemobile/common/util/RuntimeCheck;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUnitTest()V
    .registers 2

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/util/RuntimeCheck;->isUnitTest()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not in a unit test"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method public static isUnitTest()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
