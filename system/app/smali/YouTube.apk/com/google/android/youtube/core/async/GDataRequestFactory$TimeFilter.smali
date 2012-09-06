.class public final enum Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter; = null

.field public static final enum ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter; = null

.field public static final PARAM_NAME:Ljava/lang/String; = "time"

.field public static final enum THIS_MONTH:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

.field public static final enum THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

.field public static final enum TODAY:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;


# instance fields
.field public final stringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "TODAY"

    const v2, 0x7f0b0021

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->TODAY:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 193
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "THIS_WEEK"

    const v2, 0x7f0b0022

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 194
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "THIS_MONTH"

    const v2, 0x7f0b0023

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_MONTH:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 195
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    const-string v1, "ALL_TIME"

    const v2, 0x7f0b0024

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    .line 191
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->TODAY:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_WEEK:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->THIS_MONTH:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->ALL_TIME:Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput p3, p0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->stringId:I

    .line 203
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
    .registers 2
    .parameter

    .prologue
    .line 191
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;
    .registers 1

    .prologue
    .line 191
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/async/GDataRequestFactory$TimeFilter;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 207
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
