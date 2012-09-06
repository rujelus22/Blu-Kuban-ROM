.class final Lcom/google/zxing/e/a/f;
.super Lcom/google/zxing/e/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/e/a/c;-><init>(B)V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/zxing/e/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    rem-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
