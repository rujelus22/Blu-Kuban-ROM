.class public Lcom/google/android/maps/driveabout/vector/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln/am;Ln/am;)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-virtual {p1}, Ln/am;->b()I

    move-result v0

    .line 295
    invoke-virtual {p2}, Ln/am;->b()I

    move-result v1

    .line 296
    if-eq v0, v1, :cond_d

    .line 297
    sub-int v0, v1, v0

    .line 308
    :goto_c
    return v0

    .line 299
    :cond_d
    const/high16 v1, 0x2000

    shr-int v0, v1, v0

    .line 300
    invoke-virtual {p1}, Ln/am;->e()I

    move-result v1

    add-int/2addr v1, v0

    .line 301
    invoke-virtual {p1}, Ln/am;->f()I

    move-result v2

    add-int/2addr v2, v0

    .line 302
    invoke-virtual {p2}, Ln/am;->e()I

    move-result v3

    add-int/2addr v3, v0

    .line 303
    invoke-virtual {p2}, Ln/am;->f()I

    move-result v4

    add-int/2addr v0, v4

    .line 304
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/de;->a:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/de;->b:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 306
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/de;->a:I

    sub-int v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/de;->b:I

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v2

    .line 308
    sub-int v0, v1, v0

    goto :goto_c
.end method

.method public a(Ln/Q;)V
    .registers 3
    .parameter

    .prologue
    .line 288
    invoke-virtual {p1}, Ln/Q;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/de;->a:I

    .line 289
    invoke-virtual {p1}, Ln/Q;->g()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/de;->b:I

    .line 290
    return-void
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 282
    check-cast p1, Ln/am;

    check-cast p2, Ln/am;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/de;->a(Ln/am;Ln/am;)I

    move-result v0

    return v0
.end method
