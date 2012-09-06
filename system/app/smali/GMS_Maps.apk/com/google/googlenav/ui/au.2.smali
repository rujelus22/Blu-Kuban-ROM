.class public Lcom/google/googlenav/ui/aU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LS/d;


# direct methods
.method public static a(LS/e;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    sget-object v0, Lcom/google/googlenav/ui/aU;->a:LS/d;

    if-nez v0, :cond_10

    .line 193
    const/high16 v0, -0x1

    invoke-static {v5, v4, v0}, Lcom/google/googlenav/G;->a(IZI)LS/d;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/aU;->a:LS/d;

    .line 195
    :cond_10
    sget-object v0, Lcom/google/googlenav/ui/aU;->a:LS/d;

    invoke-interface {p0, v0}, LS/e;->a(LS/d;)V

    .line 196
    sget-object v0, Lcom/google/googlenav/ui/aU;->a:LS/d;

    invoke-interface {v0}, LS/d;->a()I

    move-result v7

    .line 199
    array-length v1, p2

    move v0, v4

    move v6, v4

    .line 200
    :goto_1e
    if-ge v0, v1, :cond_29

    .line 201
    aget-object v2, p2, v0

    invoke-interface {p0, v2, v3, v6}, LS/e;->a(Ljava/lang/String;II)V

    .line 200
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v6, v7

    goto :goto_1e

    .line 203
    :cond_29
    array-length v1, p3

    move v0, v4

    .line 204
    :goto_2b
    if-ge v0, v1, :cond_36

    .line 205
    aget-object v2, p3, v0

    invoke-interface {p0, v2, v3, v6}, LS/e;->a(Ljava/lang/String;II)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    add-int/2addr v6, v7

    goto :goto_2b

    .line 211
    :cond_36
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->E()I

    move-result v0

    add-int/lit8 v0, v0, -0x19

    const v1, 0x7fffffff

    sget-object v2, Lcom/google/googlenav/ui/aU;->a:LS/d;

    move-object v3, p4

    invoke-static/range {v0 .. v5}, LS/r;->a(IILS/d;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v2

    .line 214
    sub-int v0, p1, v6

    div-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    .line 215
    array-length v1, v2

    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v6

    .line 216
    :goto_57
    array-length v3, v2

    if-ge v0, v3, :cond_6f

    .line 217
    rem-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-interface {p0, v3, v4, v1}, LS/e;->a(Ljava/lang/String;II)V

    .line 218
    aget-object v3, v2, v0

    const/16 v4, 0x19

    invoke-interface {p0, v3, v4, v1}, LS/e;->a(Ljava/lang/String;II)V

    .line 219
    add-int/2addr v1, v7

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 221
    :cond_6f
    return-void
.end method
