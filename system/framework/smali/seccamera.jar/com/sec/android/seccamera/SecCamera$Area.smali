.class public Lcom/sec/android/seccamera/SecCamera$Area;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# instance fields
.field public rect:Landroid/graphics/Rect;

.field public weight:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;I)V
    .registers 3
    .parameter "rect"
    .parameter "weight"

    .prologue
    .line 2212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2213
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    .line 2214
    iput p2, p0, Lcom/sec/android/seccamera/SecCamera$Area;->weight:I

    .line 2215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 2225
    instance-of v2, p1, Lcom/sec/android/seccamera/SecCamera$Area;

    if-nez v2, :cond_6

    .line 2234
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 2228
    check-cast v0, Lcom/sec/android/seccamera/SecCamera$Area;

    .line 2229
    .local v0, a:Lcom/sec/android/seccamera/SecCamera$Area;
    iget-object v2, p0, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_19

    .line 2230
    iget-object v2, v0, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    if-nez v2, :cond_5

    .line 2234
    :cond_11
    iget v2, p0, Lcom/sec/android/seccamera/SecCamera$Area;->weight:I

    iget v3, v0, Lcom/sec/android/seccamera/SecCamera$Area;->weight:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    .line 2232
    :cond_19
    iget-object v2, p0, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/sec/android/seccamera/SecCamera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5
.end method
