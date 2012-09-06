.class public Lcom/android/emailcommon/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field public static final DEBUG_LIFECYCLE:Z

.field public static final DEBUG_SENSITIVE:Z

.field public static final LOGD:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/android/emailcommon/Logging;->LOGD:Z

    .line 44
    sput-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_SENSITIVE:Z

    .line 45
    sput-boolean v0, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
