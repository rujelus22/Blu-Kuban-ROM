.class public Lcom/google/android/apps/books/widget/StateUtil;
.super Ljava/lang/Object;
.source "StateUtil.java"


# static fields
.field public static final STATE_LAST:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a6

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/widget/StateUtil;->STATE_LAST:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasStateLast([I)Z
    .registers 7
    .parameter "stateArray"

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 56
    .local v1, hasStateLast:Z
    move-object v0, p0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_e

    aget v4, v0, v2

    .line 57
    .local v4, state:I
    const v5, 0x10100a6

    if-ne v4, v5, :cond_f

    .line 58
    const/4 v1, 0x1

    .line 62
    .end local v4           #state:I
    :cond_e
    return v1

    .line 56
    .restart local v4       #state:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method
