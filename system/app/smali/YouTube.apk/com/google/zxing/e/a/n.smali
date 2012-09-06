.class public final Lcom/google/zxing/e/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/zxing/e/a/n;

.field public static final b:Lcom/google/zxing/e/a/n;

.field public static final c:Lcom/google/zxing/e/a/n;

.field public static final d:Lcom/google/zxing/e/a/n;

.field private static final e:[Lcom/google/zxing/e/a/n;


# instance fields
.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/google/zxing/e/a/n;

    const-string v1, "L"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/zxing/e/a/n;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/n;->a:Lcom/google/zxing/e/a/n;

    .line 36
    new-instance v0, Lcom/google/zxing/e/a/n;

    const-string v1, "M"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/zxing/e/a/n;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/n;->b:Lcom/google/zxing/e/a/n;

    .line 40
    new-instance v0, Lcom/google/zxing/e/a/n;

    const-string v1, "Q"

    invoke-direct {v0, v4, v5, v1}, Lcom/google/zxing/e/a/n;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/n;->c:Lcom/google/zxing/e/a/n;

    .line 44
    new-instance v0, Lcom/google/zxing/e/a/n;

    const-string v1, "H"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/zxing/e/a/n;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/n;->d:Lcom/google/zxing/e/a/n;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/e/a/n;

    sget-object v1, Lcom/google/zxing/e/a/n;->b:Lcom/google/zxing/e/a/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/zxing/e/a/n;->a:Lcom/google/zxing/e/a/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/zxing/e/a/n;->d:Lcom/google/zxing/e/a/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/zxing/e/a/n;->c:Lcom/google/zxing/e/a/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/e/a/n;->e:[Lcom/google/zxing/e/a/n;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/google/zxing/e/a/n;->f:I

    .line 54
    iput p2, p0, Lcom/google/zxing/e/a/n;->g:I

    .line 55
    iput-object p3, p0, Lcom/google/zxing/e/a/n;->h:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static a(I)Lcom/google/zxing/e/a/n;
    .registers 2
    .parameter

    .prologue
    .line 79
    if-ltz p0, :cond_7

    sget-object v0, Lcom/google/zxing/e/a/n;->e:[Lcom/google/zxing/e/a/n;

    array-length v0, v0

    if-lt p0, v0, :cond_d

    .line 80
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 82
    :cond_d
    sget-object v0, Lcom/google/zxing/e/a/n;->e:[Lcom/google/zxing/e/a/n;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/zxing/e/a/n;->f:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/zxing/e/a/n;->h:Ljava/lang/String;

    return-object v0
.end method
