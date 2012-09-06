.class public final enum Lcom/google/googlenav/prefetch/android/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/google/googlenav/prefetch/android/j;

.field public static final enum b:Lcom/google/googlenav/prefetch/android/j;

.field public static final enum c:Lcom/google/googlenav/prefetch/android/j;

.field private static final synthetic e:[Lcom/google/googlenav/prefetch/android/j;


# instance fields
.field private final d:C


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 126
    new-instance v0, Lcom/google/googlenav/prefetch/android/j;

    const-string v1, "AUTOMATIC"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v3, v2}, Lcom/google/googlenav/prefetch/android/j;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/j;

    .line 127
    new-instance v0, Lcom/google/googlenav/prefetch/android/j;

    const-string v1, "FORCE"

    const/16 v2, 0x46

    invoke-direct {v0, v1, v4, v2}, Lcom/google/googlenav/prefetch/android/j;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/j;->b:Lcom/google/googlenav/prefetch/android/j;

    .line 128
    new-instance v0, Lcom/google/googlenav/prefetch/android/j;

    const-string v1, "OFFLINE_MAP"

    const/16 v2, 0x4f

    invoke-direct {v0, v1, v5, v2}, Lcom/google/googlenav/prefetch/android/j;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    .line 125
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/googlenav/prefetch/android/j;

    sget-object v1, Lcom/google/googlenav/prefetch/android/j;->a:Lcom/google/googlenav/prefetch/android/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/prefetch/android/j;->b:Lcom/google/googlenav/prefetch/android/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/googlenav/prefetch/android/j;->c:Lcom/google/googlenav/prefetch/android/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/googlenav/prefetch/android/j;->e:[Lcom/google/googlenav/prefetch/android/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 133
    iput-char p3, p0, Lcom/google/googlenav/prefetch/android/j;->d:C

    .line 134
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/googlenav/prefetch/android/j;
    .registers 2
    .parameter

    .prologue
    .line 125
    const-class v0, Lcom/google/googlenav/prefetch/android/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/j;

    return-object v0
.end method

.method public static values()[Lcom/google/googlenav/prefetch/android/j;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/google/googlenav/prefetch/android/j;->e:[Lcom/google/googlenav/prefetch/android/j;

    invoke-virtual {v0}, [Lcom/google/googlenav/prefetch/android/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/prefetch/android/j;

    return-object v0
.end method


# virtual methods
.method public a()C
    .registers 2

    .prologue
    .line 137
    iget-char v0, p0, Lcom/google/googlenav/prefetch/android/j;->d:C

    return v0
.end method
