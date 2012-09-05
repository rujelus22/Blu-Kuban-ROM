.class public final enum Lcom/google/android/youtube/app/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/android/youtube/app/s;

.field public static final enum b:Lcom/google/android/youtube/app/s;

.field public static final enum c:Lcom/google/android/youtube/app/s;

.field public static final enum d:Lcom/google/android/youtube/app/s;

.field public static final enum e:Lcom/google/android/youtube/app/s;

.field public static final enum f:Lcom/google/android/youtube/app/s;

.field public static final enum g:Lcom/google/android/youtube/app/s;

.field public static final enum h:Lcom/google/android/youtube/app/s;

.field public static final enum i:Lcom/google/android/youtube/app/s;

.field private static final synthetic k:[Lcom/google/android/youtube/app/s;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 91
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "UNSTARTED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->a:Lcom/google/android/youtube/app/s;

    .line 92
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v5, v4}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->b:Lcom/google/android/youtube/app/s;

    .line 93
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6, v5}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->c:Lcom/google/android/youtube/app/s;

    .line 94
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7, v6}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->d:Lcom/google/android/youtube/app/s;

    .line 95
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "BUFFERING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v7}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->e:Lcom/google/android/youtube/app/s;

    .line 96
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "VIDEO_CUED"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->f:Lcom/google/android/youtube/app/s;

    .line 97
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "ADVERTISMENT"

    const/4 v2, 0x6

    const/16 v3, 0x439

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->g:Lcom/google/android/youtube/app/s;

    .line 102
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "UNCONFIRMED"

    const/4 v2, 0x7

    const/16 v3, -0x1f42

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->h:Lcom/google/android/youtube/app/s;

    .line 106
    new-instance v0, Lcom/google/android/youtube/app/s;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    const/16 v3, -0x1f41

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/s;->i:Lcom/google/android/youtube/app/s;

    .line 90
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/android/youtube/app/s;

    sget-object v1, Lcom/google/android/youtube/app/s;->a:Lcom/google/android/youtube/app/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/s;->b:Lcom/google/android/youtube/app/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/app/s;->c:Lcom/google/android/youtube/app/s;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/app/s;->d:Lcom/google/android/youtube/app/s;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/youtube/app/s;->e:Lcom/google/android/youtube/app/s;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/android/youtube/app/s;->f:Lcom/google/android/youtube/app/s;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/app/s;->g:Lcom/google/android/youtube/app/s;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/app/s;->h:Lcom/google/android/youtube/app/s;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/app/s;->i:Lcom/google/android/youtube/app/s;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/app/s;->k:[Lcom/google/android/youtube/app/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput p3, p0, Lcom/google/android/youtube/app/s;->j:I

    .line 121
    return-void
.end method

.method public static a(I)Lcom/google/android/youtube/app/s;
    .registers 6
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/google/android/youtube/app/s;->values()[Lcom/google/android/youtube/app/s;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_14

    aget-object v0, v2, v1

    .line 110
    iget v4, v0, Lcom/google/android/youtube/app/s;->j:I

    if-ne v4, p0, :cond_10

    .line 114
    :goto_f
    return-object v0

    .line 109
    :cond_10
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 114
    :cond_14
    sget-object v0, Lcom/google/android/youtube/app/s;->i:Lcom/google/android/youtube/app/s;

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/s;
    .registers 2
    .parameter

    .prologue
    .line 90
    const-class v0, Lcom/google/android/youtube/app/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/s;

    return-object v0
.end method

.method public static values()[Lcom/google/android/youtube/app/s;
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/youtube/app/s;->k:[Lcom/google/android/youtube/app/s;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/s;

    return-object v0
.end method
