.class public final Lcom/google/android/apps/reader/util/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/apps/reader/util/Config;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/google/android/apps/reader/util/Config;
    .registers 2
    .parameter "context"

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/reader/util/Config;

    invoke-direct {v0, p0}, Lcom/google/android/apps/reader/util/Config;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public debug()Z
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/reader/util/Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public logd()Z
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/reader/util/Config;->debug()Z

    move-result v0

    return v0
.end method

.method public logv()Z
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/android/apps/reader/util/Config;->debug()Z

    move-result v0

    return v0
.end method

.method public release()Z
    .registers 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/apps/reader/util/Config;->debug()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
