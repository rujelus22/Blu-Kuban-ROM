.class public Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;
.super Ljava/lang/Object;
.source "UnderlinePositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/UnderlinePositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WordUnderline"
.end annotation


# instance fields
.field private final left:Landroid/graphics/Point;

.field private final right:Landroid/graphics/Point;

.field private final wordBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;


# direct methods
.method constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)V
    .registers 4
    .parameter "left"
    .parameter "right"
    .parameter "wordBox"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->left:Landroid/graphics/Point;

    .line 28
    iput-object p2, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->right:Landroid/graphics/Point;

    .line 29
    iput-object p3, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->wordBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    .line 30
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 9
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->left:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->left:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->right:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->right:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 38
    return-void
.end method

.method public getBox()Lcom/google/goggles/BoundingBoxProtos$BoundingBox;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/unveil/textinput/UnderlinePositioner$WordUnderline;->wordBox:Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    return-object v0
.end method
