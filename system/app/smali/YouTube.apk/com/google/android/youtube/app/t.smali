.class public final enum Lcom/google/android/youtube/app/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/youtube/app/t;

.field public static final enum b:Lcom/google/android/youtube/app/t;

.field public static final enum c:Lcom/google/android/youtube/app/t;

.field public static final enum d:Lcom/google/android/youtube/app/t;

.field public static final enum e:Lcom/google/android/youtube/app/t;

.field public static final enum f:Lcom/google/android/youtube/app/t;

.field private static final synthetic g:[Lcom/google/android/youtube/app/t;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-instance v0, Lcom/google/android/youtube/app/t;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/youtube/app/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    .line 77
    new-instance v0, Lcom/google/android/youtube/app/t;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/t;->b:Lcom/google/android/youtube/app/t;

    .line 78
    new-instance v0, Lcom/google/android/youtube/app/t;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/google/android/youtube/app/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    .line 79
    new-instance v0, Lcom/google/android/youtube/app/t;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/google/android/youtube/app/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/t;->d:Lcom/google/android/youtube/app/t;

    .line 80
    new-instance v0, Lcom/google/android/youtube/app/t;

    const-string v1, "SLEEP"

    invoke-direct {v0, v1, v7}, Lcom/google/android/youtube/app/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/t;->e:Lcom/google/android/youtube/app/t;

    .line 81
    new-instance v0, Lcom/google/android/youtube/app/t;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/youtube/app/t;->f:Lcom/google/android/youtube/app/t;

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/youtube/app/t;

    sget-object v1, Lcom/google/android/youtube/app/t;->a:Lcom/google/android/youtube/app/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/t;->b:Lcom/google/android/youtube/app/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/t;->c:Lcom/google/android/youtube/app/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/app/t;->d:Lcom/google/android/youtube/app/t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/app/t;->e:Lcom/google/android/youtube/app/t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/app/t;->f:Lcom/google/android/youtube/app/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/app/t;->g:[Lcom/google/android/youtube/app/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/t;
    .registers 2
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/google/android/youtube/app/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/t;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/t;
    .registers 1

    .prologue
    .line 75
    sget-object v0, Lcom/google/android/youtube/app/t;->g:[Lcom/google/android/youtube/app/t;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/t;

    return-object v0
.end method
