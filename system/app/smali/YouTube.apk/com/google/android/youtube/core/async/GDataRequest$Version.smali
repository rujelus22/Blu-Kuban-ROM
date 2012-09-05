.class public final enum Lcom/google/android/youtube/core/async/GDataRequest$Version;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/async/GDataRequest$Version;

.field public static final enum V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

.field public static final enum V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;


# instance fields
.field public final headerValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    const-string v1, "V_2"

    const-string v2, "2"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/core/async/GDataRequest$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 22
    new-instance v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    const-string v1, "V_2_1"

    const-string v2, "2.1"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/async/GDataRequest$Version;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/youtube/core/async/GDataRequest$Version;

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequest$Version;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->headerValue:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest$Version;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-string v0, "2.1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 37
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2_1:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    .line 39
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->V_2:Lcom/google/android/youtube/core/async/GDataRequest$Version;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest$Version;
    .registers 2
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/core/async/GDataRequest$Version;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->$VALUES:[Lcom/google/android/youtube/core/async/GDataRequest$Version;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/async/GDataRequest$Version;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/async/GDataRequest$Version;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/core/async/GDataRequest$Version;->headerValue:Ljava/lang/String;

    return-object v0
.end method
