.class final Lcom/google/zxing/e/a/i;
.super Lcom/google/zxing/e/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/e/a/c;-><init>(B)V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/google/zxing/e/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 132
    mul-int v0, p1, p2

    .line 133
    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
