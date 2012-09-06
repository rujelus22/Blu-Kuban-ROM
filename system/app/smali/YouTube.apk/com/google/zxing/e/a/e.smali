.class final Lcom/google/zxing/e/a/e;
.super Lcom/google/zxing/e/a/c;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/zxing/e/a/c;-><init>(B)V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/google/zxing/e/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method final a(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 96
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
