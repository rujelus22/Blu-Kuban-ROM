.class public Lcom/android/exchange/Eas;
.super Ljava/lang/Object;
.source "Eas.java"


# static fields
.field public static DEBUG:Z

.field public static FILE_LOG:Z

.field public static final FILTER_1_DAY:Ljava/lang/String;

.field public static final FILTER_1_MONTH:Ljava/lang/String;

.field public static final FILTER_1_WEEK:Ljava/lang/String;

.field public static final FILTER_2_WEEKS:Ljava/lang/String;

.field public static final FILTER_3_DAYS:Ljava/lang/String;

.field public static final FILTER_AUTO:Ljava/lang/String;

.field public static PARSER_LOG:Z

.field public static USER_LOG:Z

.field public static WAIT_DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 31
    sput-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    .line 32
    sput-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    .line 35
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 36
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 37
    sput-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 68
    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_AUTO:Ljava/lang/String;

    .line 71
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_1_DAY:Ljava/lang/String;

    .line 72
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_3_DAYS:Ljava/lang/String;

    .line 73
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_1_WEEK:Ljava/lang/String;

    .line 74
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_2_WEEKS:Ljava/lang/String;

    .line 75
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/Eas;->FILTER_1_MONTH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProtocolVersionDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .parameter "version"

    .prologue
    .line 110
    const-string v0, "2.5"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 111
    const-wide/high16 v0, 0x4004

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 119
    :goto_e
    return-object v0

    .line 112
    :cond_f
    const-string v0, "12.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 113
    const-wide/high16 v0, 0x4028

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 114
    :cond_1e
    const-string v0, "12.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 115
    const-wide v0, 0x4028333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 116
    :cond_30
    const-string v0, "14.0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 117
    const-wide/high16 v0, 0x402c

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 118
    :cond_3f
    const-string v0, "14.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 119
    const-wide v0, 0x402c333333333333L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_e

    .line 121
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

    .line 97
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-nez v0, :cond_57

    .line 98
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_58

    move v0, v1

    :goto_b
    sput-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 99
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_12
    sput-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 100
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_19

    move v2, v1

    :cond_19
    sput-boolean v2, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 101
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-nez v0, :cond_23

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_25

    .line 102
    :cond_23
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 104
    :cond_25
    const-string v1, "Eas Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Logging: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_5c

    const-string v0, "User "

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    if-eqz v0, :cond_5f

    const-string v0, "Parser "

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_62

    const-string v0, "File"

    :goto_4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_57
    return-void

    :cond_58
    move v0, v2

    .line 98
    goto :goto_b

    :cond_5a
    move v0, v2

    .line 99
    goto :goto_12

    .line 104
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
