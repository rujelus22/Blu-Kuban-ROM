.class public LwK;
.super Ljava/lang/Object;
.source "DocumentSliceImpl.java"

# interfaces
.implements LwJ;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final a:Lwb;

.field private final a:[I

.field private final b:[I

.field private final c:[I


# direct methods
.method constructor <init>(Lwb;II[I[I[I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LwK;->a:Lwb;

    .line 36
    iput p2, p0, LwK;->a:I

    .line 37
    iput-object p4, p0, LwK;->a:[I

    .line 38
    iput-object p5, p0, LwK;->b:[I

    .line 39
    iput-object p6, p0, LwK;->c:[I

    .line 41
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    .line 42
    invoke-interface {p1, p2, v0}, Lwb;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LwK;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private static a([II)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 87
    if-gez v0, :cond_9

    .line 88
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 90
    :cond_9
    return v0
.end method

.method private a(II[I)Ljava/util/Iterator;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {p3, p1}, LwK;->a([II)I

    move-result v0

    .line 110
    add-int/lit8 v1, p2, 0x1

    invoke-static {p3, v1}, LwK;->a([II)I

    move-result v1

    .line 111
    new-instance v2, LwL;

    invoke-direct {v2, p0, v0, v1, p3}, LwL;-><init>(LwK;II[I)V

    return-object v2
.end method


# virtual methods
.method public a(II)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, LwK;->a:Ljava/lang/String;

    iget v1, p0, LwK;->a:I

    sub-int v1, p1, v1

    add-int/lit8 v2, p2, 0x1

    iget v3, p0, LwK;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(II)Ljava/util/Iterator;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, LwK;->a:[I

    invoke-direct {p0, p1, p2, v0}, LwK;->a(II[I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lvz;
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, LwK;->a:Lwb;

    invoke-interface {v0}, Lwb;->d()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 76
    iget-object v0, p0, LwK;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)Lvz;

    move-result-object v0

    .line 78
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(I)Lwk;
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, LwK;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)Lwk;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lwm;
    .registers 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LwK;->a:Lwb;

    invoke-interface {v0}, Lwb;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 68
    iget-object v0, p0, LwK;->a:Lwb;

    invoke-interface {v0, p1}, Lwb;->a(I)Lwm;

    move-result-object v0

    .line 70
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b(II)Ljava/util/Iterator;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, LwK;->b:[I

    invoke-direct {p0, p1, p2, v0}, LwK;->a(II[I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public c(II)Ljava/util/Iterator;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, LwK;->c:[I

    invoke-direct {p0, p1, p2, v0}, LwK;->a(II[I)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
