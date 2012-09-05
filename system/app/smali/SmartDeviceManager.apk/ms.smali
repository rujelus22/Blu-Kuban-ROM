.class public final Lms;
.super Lmw;
.source "a"


# static fields
.field private static final d:[Lms;


# instance fields
.field final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0xc

    .line 24
    new-array v0, v4, [Lms;

    sput-object v0, Lms;->d:[Lms;

    .line 26
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v4, :cond_17

    .line 27
    sget-object v1, Lms;->d:[Lms;

    new-instance v2, Lms;

    add-int/lit8 v3, v0, -0x1

    invoke-direct {v2, v3}, Lms;-><init>(I)V

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 29
    :cond_17
    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lmw;-><init>()V

    iput p1, p0, Lms;->c:I

    return-void
.end method

.method public static a(I)Lms;
    .registers 3
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 45
    const/16 v0, 0xa

    if-gt p0, v0, :cond_7

    if-ge p0, v1, :cond_d

    :cond_7
    new-instance v0, Lms;

    invoke-direct {v0, p0}, Lms;-><init>(I)V

    .line 46
    :goto_c
    return-object v0

    :cond_d
    sget-object v0, Lms;->d:[Lms;

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    goto :goto_c
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lms;->c:I

    invoke-static {v0}, Lgv;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lez;Lhs;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 101
    iget v0, p0, Lms;->c:I

    invoke-virtual {p1, v0}, Lez;->a(I)V

    .line 102
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p1, p0, :cond_6

    move v0, v3

    .line 112
    :goto_5
    return v0

    .line 108
    :cond_6
    if-nez p1, :cond_a

    move v0, v2

    goto :goto_5

    .line 109
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_16

    move v0, v2

    .line 110
    goto :goto_5

    .line 112
    :cond_16
    check-cast p1, Lms;

    iget v0, p1, Lms;->c:I

    iget v1, p0, Lms;->c:I

    if-ne v0, v1, :cond_20

    move v0, v3

    goto :goto_5

    :cond_20
    move v0, v2

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lms;->c:I

    return v0
.end method
