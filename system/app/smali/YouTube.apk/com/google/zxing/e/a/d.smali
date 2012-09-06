.class final Lcom/google/zxing/e/a/d;
.super Lcom/google/zxing/e/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/e/a/c;-><init>(B)V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/google/zxing/e/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    add-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
