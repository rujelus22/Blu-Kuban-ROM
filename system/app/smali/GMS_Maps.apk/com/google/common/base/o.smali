.class final Lcom/google/common/base/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/16 v0, 0x800

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/base/o;->a:[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/c;)V
    .registers 2
    .parameter

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/google/common/base/o;-><init>()V

    return-void
.end method


# virtual methods
.method a(C)V
    .registers 6
    .parameter

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/common/base/o;->a:[I

    shr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 723
    return-void
.end method

.method b(C)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 726
    iget-object v1, p0, Lcom/google/common/base/o;->a:[I

    shr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
