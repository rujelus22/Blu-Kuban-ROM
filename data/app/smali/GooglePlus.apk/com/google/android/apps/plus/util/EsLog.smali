.class public Lcom/google/android/apps/plus/util/EsLog;
.super Ljava/lang/Object;
.source "EsLog.java"


# static fields
.field public static final ENABLE_DOGFOOD_FEATURES:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->ENABLE_DOGFOOD_FEATURES:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .registers 3
    .parameter "tag"
    .parameter "level"

    .prologue
    .line 27
    sget-boolean v0, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    if-nez v0, :cond_7

    const/4 v0, 0x6

    if-ne p1, v0, :cond_f

    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
