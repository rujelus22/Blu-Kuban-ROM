.class public Lcom/google/googlenav/android/MonkeyManagerSdk8;
.super Lcom/google/googlenav/android/X;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/android/X;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    :goto_4
    return v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method
