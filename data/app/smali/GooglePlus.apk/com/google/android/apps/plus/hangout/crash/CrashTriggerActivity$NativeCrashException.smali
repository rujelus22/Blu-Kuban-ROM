.class Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$NativeCrashException;
.super Ljava/lang/RuntimeException;
.source "CrashTriggerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCrashException"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/crash/CrashTriggerActivity$NativeCrashException;-><init>()V

    return-void
.end method
