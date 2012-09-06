.class final Lcom/google/zxing/e/a/g;
.super Lcom/google/zxing/e/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/e/a/c;-><init>(B)V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/zxing/e/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 114
    add-int v0, p1, p2

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
