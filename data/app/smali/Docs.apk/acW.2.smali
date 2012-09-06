.class public final LacW;
.super LacU;
.source "ByteArrayContent.java"


# instance fields
.field private final a:I

.field private final a:[B

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, LacW;-><init>(Ljava/lang/String;[BII)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, LacU;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, LacW;->a:[B

    .line 81
    if-ltz p3, :cond_1d

    if-ltz p4, :cond_1d

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_1d

    const/4 v0, 0x1

    :goto_15
    invoke-static {v0}, LafQ;->a(Z)V

    .line 82
    iput p3, p0, LacW;->a:I

    .line 83
    iput p4, p0, LacW;->b:I

    .line 84
    return-void

    .line 81
    :cond_1d
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)LacW;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v0, LacW;

    invoke-static {p1}, Laey;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, LacW;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 110
    iget v0, p0, LacW;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)LacU;
    .registers 3
    .parameter

    .prologue
    .line 46
    invoke-virtual {p0, p1}, LacW;->a(Ljava/lang/String;)LacW;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)LacW;
    .registers 3
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, LacU;->a(Ljava/lang/String;)LacU;

    move-result-object v0

    check-cast v0, LacW;

    return-object v0
.end method

.method public a()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 119
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, LacW;->a:[B

    iget v2, p0, LacW;->a:I

    iget v3, p0, LacW;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method
