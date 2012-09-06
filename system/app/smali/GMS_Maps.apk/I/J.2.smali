.class public Li/J;
.super Li/a;
.source "SourceFile"


# instance fields
.field private final a:[Li/a;


# direct methods
.method public constructor <init>([Li/a;)V
    .registers 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Li/a;-><init>()V

    .line 64
    iput-object p1, p0, Li/J;->a:[Li/a;

    .line 65
    return-void
.end method

.method static synthetic a(Li/J;)[Li/a;
    .registers 2
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Li/J;->a:[Li/a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    .prologue
    .line 75
    iget-object v1, p0, Li/J;->a:[Li/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 76
    invoke-virtual {v3}, Li/a;->a()V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 78
    :cond_e
    return-void
.end method

.method public a(Li/b;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    new-instance v0, Li/L;

    invoke-direct {v0, p0, p1}, Li/L;-><init>(Li/J;Li/b;)V

    .line 70
    invoke-virtual {v0}, Li/L;->a()Z

    .line 71
    return-void
.end method

.method public b()V
    .registers 5

    .prologue
    .line 82
    iget-object v1, p0, Li/J;->a:[Li/a;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-object v3, v1, v0

    .line 83
    invoke-virtual {v3}, Li/a;->b()V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 85
    :cond_e
    return-void
.end method

.method public c()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 103
    iget-object v2, p0, Li/J;->a:[Li/a;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_10

    aget-object v4, v2, v1

    .line 104
    invoke-virtual {v4}, Li/a;->c()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 105
    const/4 v0, 0x1

    .line 108
    :cond_10
    return v0

    .line 103
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method
