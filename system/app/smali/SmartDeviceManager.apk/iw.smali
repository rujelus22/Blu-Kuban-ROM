.class public final Liw;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field final a:Lfd;

.field final b:Lhc;

.field final c:[Ljava/lang/Object;

.field d:Liv;

.field private e:I


# direct methods
.method public constructor <init>(Lfd;Lhc;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Liw;->a:Lfd;

    .line 42
    iput-object p2, p0, Liw;->b:Lhc;

    .line 43
    iput p3, p0, Liw;->e:I

    .line 44
    new-array v0, p3, [Ljava/lang/Object;

    iput-object v0, p0, Liw;->c:[Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v0, p0, Liw;->c:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 74
    iget v0, p0, Liw;->e:I

    sub-int/2addr v0, v1

    iput v0, p0, Liw;->e:I

    if-gtz v0, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected final a([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    .line 54
    if-eqz p1, :cond_19

    .line 55
    const/4 v0, 0x0

    iget-object v1, p0, Liw;->c:[Ljava/lang/Object;

    array-length v1, v1

    :goto_6
    if-ge v0, v1, :cond_19

    .line 56
    iget-object v2, p0, Liw;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_16

    .line 57
    aget-object v2, p1, v0

    .line 58
    if-eqz v2, :cond_16

    .line 59
    iget-object v3, p0, Liw;->c:[Ljava/lang/Object;

    aput-object v2, v3, v0

    .line 55
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 64
    :cond_19
    iget-object v0, p0, Liw;->c:[Ljava/lang/Object;

    return-object v0
.end method
