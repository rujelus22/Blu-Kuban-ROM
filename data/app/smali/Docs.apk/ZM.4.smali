.class public LZM;
.super Ljava/lang/Object;
.source "PreferenceUtilsImpl.java"

# interfaces
.implements LZK;


# instance fields
.field private a:I

.field final synthetic a:LZL;

.field private final a:[I


# direct methods
.method public constructor <init>(LZL;[II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, LZM;->a:LZL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, LZM;->a:[I

    .line 37
    invoke-virtual {p0, p3}, LZM;->a(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, LZM;->a:I

    return v0
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, LZM;->a:[I

    aget v0, v0, v1

    if-gt p1, v0, :cond_e

    .line 52
    iget-object v0, p0, LZM;->a:[I

    aget v0, v0, v1

    iput v0, p0, LZM;->a:I

    .line 61
    :goto_d
    return-void

    .line 56
    :cond_e
    const/4 v0, 0x1

    .line 57
    :goto_f
    iget-object v1, p0, LZM;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, LZM;->a:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_1d

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 60
    :cond_1d
    iget-object v1, p0, LZM;->a:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    iput v0, p0, LZM;->a:I

    goto :goto_d
.end method

.method public a()[I
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, LZM;->a:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
