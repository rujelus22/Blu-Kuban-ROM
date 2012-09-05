.class public Lcom/android/emailcommon/EasRefs;
.super Ljava/lang/Object;
.source "EasRefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/EasRefs$EmailDataSize;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static EAS_LOCAL_DB_OPERATION:Z

.field public static FILE_LOG:Z

.field public static final FILTER_1_DAY:Ljava/lang/String;

.field public static final FILTER_1_MONTH:Ljava/lang/String;

.field public static final FILTER_1_WEEK:Ljava/lang/String;

.field public static final FILTER_2_WEEKS:Ljava/lang/String;

.field public static final FILTER_3_DAYS:Ljava/lang/String;

.field public static final FILTER_AUTO:Ljava/lang/String;

.field public static LOGD:Z

.field public static LOG_TAG:Ljava/lang/String;

.field public static PARSER_LOG:Z

.field public static final PLATFORM_VERSION:Ljava/lang/String;

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 34
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->WAIT_DEBUG:Z

    .line 36
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->DEBUG:Z

    .line 39
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    .line 41
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    .line 43
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    .line 73
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "."

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->PLATFORM_VERSION:Ljava/lang/String;

    .line 114
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_AUTO:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_1_DAY:Ljava/lang/String;

    .line 117
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_3_DAYS:Ljava/lang/String;

    .line 118
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_1_WEEK:Ljava/lang/String;

    .line 119
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 120
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/EasRefs;->FILTER_1_MONTH:Ljava/lang/String;

    .line 145
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->LOGD:Z

    .line 146
    const-string v0, "FixIt"

    sput-object v0, Lcom/android/emailcommon/EasRefs;->LOG_TAG:Ljava/lang/String;

    .line 405
    sput-boolean v3, Lcom/android/emailcommon/EasRefs;->EAS_LOCAL_DB_OPERATION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method

.method public static getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .parameter "version"

    .prologue
    .line 386
    const-string v0, "2.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 387
    const-wide/high16 v0, 0x4004

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 395
    :goto_e
    return-object v0

    .line 388
    :cond_f
    const-string v0, "12.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 389
    const-wide/high16 v0, 0x4028

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 390
    :cond_1e
    const-string v0, "12.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 391
    const-wide v0, 0x4028333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 392
    :cond_30
    const-string v0, "14.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 393
    const-wide/high16 v0, 0x402c

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 394
    :cond_3f
    const-string v0, "14.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 395
    const-wide v0, 0x402c333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 397
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal protocol version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setUserDebug(I)V
    .registers 4
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->DEBUG:Z

    if-nez v0, :cond_57

    .line 52
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_58

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    .line 53
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    .line 54
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_19

    move v2, v1

    :cond_19
    sput-boolean v2, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    .line 55
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v0, :cond_25

    .line 56
    :cond_23
    sput-boolean v1, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    .line 58
    :cond_25
    const-string v1, "Eas Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_5c

    const-string v0, "User "

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->PARSER_LOG:Z

    if-eqz v0, :cond_5f

    const-string v0, "Parser "

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->FILE_LOG:Z

    if-eqz v0, :cond_62

    const-string v0, "File"

    :goto_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_57
    return-void

    :cond_58
    move v0, v2

    .line 52
    goto :goto_b

    :cond_5a
    move v0, v2

    .line 53
    goto :goto_12

    .line 58
    :cond_5c
    const-string v0, ""

    goto :goto_38

    :cond_5f
    const-string v0, ""

    goto :goto_42

    :cond_62
    const-string v0, ""

    goto :goto_4c
.end method
