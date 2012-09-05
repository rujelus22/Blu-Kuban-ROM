.class public Lcom/google/android/opengl/glview/GLView;
.super Ljava/lang/Object;
.source "GLView.java"

# interfaces
.implements Lcom/google/android/opengl/glview/Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;,
        Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;,
        Lcom/google/android/opengl/glview/GLView$EventTracker;
    }
.end annotation


# static fields
.field public static final kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;


# instance fields
.field private mAlpha:F

.field private mFlags:I

.field private mH:F

.field private mId:I

.field private mParent:Lcom/google/android/opengl/glview/GLView;

.field private mW:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 602
    new-instance v0, Lcom/google/android/opengl/glview/GLView$1;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/GLView$1;-><init>()V

    sput-object v0, Lcom/google/android/opengl/glview/GLView;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 110
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 113
    iput p1, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    .line 114
    return-void
.end method

.method private gainFocus()V
    .registers 4

    .prologue
    .line 1037
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->select(Z)V

    .line 1038
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1039
    return-void
.end method

.method public static isKeyEvent(I)Z
    .registers 2
    .parameter "tag"

    .prologue
    .line 720
    const/16 v0, 0xb

    if-eq p0, v0, :cond_8

    const/16 v0, 0xc

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static keyCodeToFocusDir(II)I
    .registers 3
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 808
    sparse-switch p0, :sswitch_data_1a

    .line 825
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 810
    :sswitch_5
    const/16 v0, 0x11

    goto :goto_4

    .line 812
    :sswitch_8
    const/16 v0, 0x42

    goto :goto_4

    .line 814
    :sswitch_b
    const/16 v0, 0x21

    goto :goto_4

    .line 816
    :sswitch_e
    const/16 v0, 0x82

    goto :goto_4

    .line 818
    :sswitch_11
    const/high16 v0, 0x1

    and-int/2addr v0, p1

    if-eqz v0, :cond_18

    .line 819
    const/4 v0, 0x1

    goto :goto_4

    .line 821
    :cond_18
    const/4 v0, 0x2

    goto :goto_4

    .line 808
    :sswitch_data_1a
    .sparse-switch
        0x13 -> :sswitch_b
        0x14 -> :sswitch_e
        0x15 -> :sswitch_5
        0x16 -> :sswitch_8
        0x3d -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method protected activateFocus(I)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 889
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 890
    new-instance v0, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;

    invoke-direct {v0, p0, p0, p1}, Lcom/google/android/opengl/glview/GLView$DefaultActivateFocusTracker;-><init>(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;I)V

    .line 892
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public addFocusables(Ljava/util/ArrayList;ILandroid/graphics/RectF;)V
    .registers 8
    .parameter
    .parameter "direction"
    .parameter "focusedRect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;I",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/glview/GLView;>;"
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v1

    .line 1131
    .local v1, childCount:I
    if-eqz p3, :cond_9

    .line 1132
    invoke-virtual {p0, p3}, Lcom/google/android/opengl/glview/GLView;->convertFromParent(Landroid/graphics/RectF;)V

    .line 1134
    :cond_9
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_16

    .line 1135
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1136
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->addFocusables(Ljava/util/ArrayList;ILandroid/graphics/RectF;)V

    .line 1134
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1138
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    :cond_16
    if-eqz p3, :cond_1b

    .line 1139
    invoke-virtual {p0, p3}, Lcom/google/android/opengl/glview/GLView;->convertToParent(Landroid/graphics/RectF;)V

    .line 1141
    :cond_1b
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->focusable()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1142
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    :cond_24
    return-void
.end method

.method public addView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t add a child to a simple view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final centerX()F
    .registers 4

    .prologue
    .line 356
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public final centerY()F
    .registers 4

    .prologue
    .line 360
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 293
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_9

    .line 294
    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLView;->childExtentChanged(Lcom/google/android/opengl/glview/GLView;)V

    .line 296
    :cond_9
    return-void
.end method

.method public final clearFlags(I)V
    .registers 4
    .parameter "flags"

    .prologue
    .line 121
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    .line 122
    return-void
.end method

.method protected clearFocus()V
    .registers 3

    .prologue
    .line 1045
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getFocusedChild()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1046
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_9

    .line 1047
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->clearFocus()V

    .line 1049
    :cond_9
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    .line 1050
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->select(Z)V

    .line 1051
    return-void
.end method

.method public contains(FF)Z
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 369
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_20

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_20

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_20

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    iget v1, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public convertFromParent(Landroid/graphics/RectF;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 495
    return-void
.end method

.method public convertFromParent(Lcom/google/android/opengl/glview/Point;)V
    .registers 2
    .parameter "pt"

    .prologue
    .line 487
    return-void
.end method

.method public convertToParent(Landroid/graphics/RectF;)V
    .registers 2
    .parameter "r"

    .prologue
    .line 491
    return-void
.end method

.method public convertToParent(Lcom/google/android/opengl/glview/Point;)V
    .registers 2
    .parameter "pt"

    .prologue
    .line 483
    return-void
.end method

.method public createTracker(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 9
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 615
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 616
    .local v0, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 617
    .local v1, y:F
    invoke-virtual {p0, v0, v1}, Lcom/google/android/opengl/glview/GLView;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 618
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v2

    .line 620
    :goto_12
    return-object v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public final expandable(Z)Z
    .registers 3
    .parameter "horizontal"

    .prologue
    .line 384
    if-eqz p1, :cond_9

    const/16 v0, 0x100

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x200

    goto :goto_4
.end method

.method public findChildViewIndexById(I)I
    .registers 6
    .parameter "id"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v1

    .line 174
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_13

    .line 175
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 176
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    iget v3, v0, Lcom/google/android/opengl/glview/GLView;->mId:I

    if-ne v3, p1, :cond_10

    .line 180
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v2           #i:I
    :goto_f
    return v2

    .line 174
    .restart local v0       #child:Lcom/google/android/opengl/glview/GLView;
    .restart local v2       #i:I
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 180
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    :cond_13
    const/4 v2, -0x1

    goto :goto_f
.end method

.method public findFocusable()Lcom/google/android/opengl/glview/GLView;
    .registers 6

    .prologue
    .line 1067
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v2, p0

    .line 1087
    :cond_9
    :goto_9
    return-object v2

    .line 1071
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getFocusedChild()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1072
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_16

    .line 1073
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->findFocusable()Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 1074
    .local v2, focusable:Lcom/google/android/opengl/glview/GLView;
    if-nez v2, :cond_9

    .line 1079
    .end local v2           #focusable:Lcom/google/android/opengl/glview/GLView;
    :cond_16
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v1

    .line 1080
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1b
    if-ge v3, v1, :cond_2a

    .line 1081
    invoke-virtual {p0, v3}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->findFocusable()Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 1083
    .restart local v2       #focusable:Lcom/google/android/opengl/glview/GLView;
    if-nez v2, :cond_9

    .line 1080
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1087
    .end local v2           #focusable:Lcom/google/android/opengl/glview/GLView;
    :cond_2a
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public findUserSetNextFocus(Lcom/google/android/opengl/glview/GLView;I)Lcom/google/android/opengl/glview/GLView;
    .registers 4
    .parameter "root"
    .parameter "direction"

    .prologue
    .line 1091
    const/4 v0, 0x0

    return-object v0
.end method

.method public findViewById(I)Lcom/google/android/opengl/glview/GLView;
    .registers 6
    .parameter "id"

    .prologue
    .line 159
    iget v3, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    if-ne p1, v3, :cond_5

    .line 169
    .end local p0
    :goto_4
    return-object p0

    .line 162
    .restart local p0
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 163
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v0, :cond_1b

    .line 164
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    .line 165
    .local v1, found:Lcom/google/android/opengl/glview/GLView;
    if-eqz v1, :cond_18

    move-object p0, v1

    .line 166
    goto :goto_4

    .line 163
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 169
    .end local v1           #found:Lcom/google/android/opengl/glview/GLView;
    :cond_1b
    const/4 p0, 0x0

    goto :goto_4
.end method

.method public focusSearch(I)Lcom/google/android/opengl/glview/GLView;
    .registers 4
    .parameter "direction"

    .prologue
    .line 880
    invoke-static {}, Lcom/google/android/opengl/glview/GLFocusFinder;->getInstance()Lcom/google/android/opengl/glview/GLFocusFinder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->root()Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/google/android/opengl/glview/GLFocusFinder;->findNextFocus(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    return-object v0
.end method

.method public final focusable()Z
    .registers 2

    .prologue
    .line 987
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    return v0
.end method

.method public final focused()Z
    .registers 2

    .prologue
    .line 991
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    return v0
.end method

.method public freeOpenGlResources()V
    .registers 4

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 445
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 446
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 448
    :cond_11
    return-void
.end method

.method protected gestureCancel(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 929
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 896
    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 897
    new-instance v0, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;

    invoke-direct {v0, p0, p0}, Lcom/google/android/opengl/glview/GLView$DefaultClickTracker;-><init>(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;)V

    .line 899
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected gestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 6
    .parameter "e0"
    .parameter "e1"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureHoverEnter()Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 2

    .prologue
    .line 963
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureHoverExit()Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 2

    .prologue
    .line 967
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureHoverMove(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 959
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureKeyDown(II)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 4
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 945
    sparse-switch p1, :sswitch_data_a

    .line 951
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 949
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->activateFocus(I)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v0

    goto :goto_4

    .line 945
    :sswitch_data_a
    .sparse-switch
        0x17 -> :sswitch_5
        0x42 -> :sswitch_5
    .end sparse-switch
.end method

.method protected gestureKeyUp(II)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 4
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    .line 955
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureLongPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 911
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScale(Landroid/view/MotionEvent;F)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 4
    .parameter "e0"
    .parameter "scaleFactor"

    .prologue
    .line 937
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScaleBegin(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 933
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScaleEnd(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 941
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 6
    .parameter "e0"
    .parameter "e1"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 916
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureShowPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 903
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureSingleTapUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 907
    const/4 v0, 0x0

    return-object v0
.end method

.method protected gestureUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 3
    .parameter "e0"

    .prologue
    .line 925
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha()F
    .registers 4

    .prologue
    .line 317
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 318
    .local v0, alpha:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 319
    .local v2, view:Lcom/google/android/opengl/glview/GLView;
    if-eqz v2, :cond_d

    .line 320
    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLView;->getAlpha()F

    move-result v1

    .line 321
    .local v1, parentAlpha:F
    mul-float/2addr v0, v1

    .line 324
    .end local v1           #parentAlpha:F
    :cond_d
    return v0
.end method

.method public getBounds(Landroid/graphics/RectF;)V
    .registers 5
    .parameter "bounds"

    .prologue
    .line 1115
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v0

    .line 1116
    .local v0, x:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v1

    .line 1117
    .local v1, y:F
    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 1118
    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 1119
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v2

    add-float/2addr v2, v0

    iput v2, p1, Landroid/graphics/RectF;->right:F

    .line 1120
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, p1, Landroid/graphics/RectF;->bottom:F

    .line 1121
    return-void
.end method

.method public getChildAt(I)Lcom/google/android/opengl/glview/GLView;
    .registers 3
    .parameter "index"

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/RectF;)V
    .registers 2
    .parameter "bounds"

    .prologue
    .line 1111
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->getBounds(Landroid/graphics/RectF;)V

    .line 1112
    return-void
.end method

.method public getFocusLeaf()Lcom/google/android/opengl/glview/GLView;
    .registers 3

    .prologue
    .line 862
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->focused()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 863
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getFocusedChild()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 864
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_10

    .line 865
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->getFocusLeaf()Lcom/google/android/opengl/glview/GLView;

    move-result-object p0

    .line 869
    .end local p0
    :cond_10
    :goto_10
    return-object p0

    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    .restart local p0
    :cond_11
    const/4 p0, 0x0

    goto :goto_10
.end method

.method public getFocusTargetBounds(Landroid/graphics/RectF;)V
    .registers 2
    .parameter "focusTargetBounds"

    .prologue
    .line 1107
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->getBounds(Landroid/graphics/RectF;)V

    .line 1108
    return-void
.end method

.method public getFocusables(ILandroid/graphics/RectF;)Ljava/util/ArrayList;
    .registers 5
    .parameter "direction"
    .parameter "focusedRect"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/glview/GLView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1125
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/glview/GLView;>;"
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->addFocusables(Ljava/util/ArrayList;ILandroid/graphics/RectF;)V

    .line 1126
    return-object v0
.end method

.method public getFocusedChild()Lcom/google/android/opengl/glview/GLView;
    .registers 5

    .prologue
    .line 1056
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v1

    .line 1057
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 1058
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1059
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->focused()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1063
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    :goto_11
    return-object v0

    .line 1057
    .restart local v0       #child:Lcom/google/android/opengl/glview/GLView;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1063
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getFocusedRect(Landroid/graphics/RectF;)V
    .registers 2
    .parameter "focusedRect"

    .prologue
    .line 1099
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->getBounds(Landroid/graphics/RectF;)V

    .line 1100
    return-void
.end method

.method public final getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;
    .registers 3

    .prologue
    .line 465
    new-instance v0, Lcom/google/android/opengl/glview/Point;

    invoke-direct {v0}, Lcom/google/android/opengl/glview/Point;-><init>()V

    .line 466
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->centerX()F

    move-result v1

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->x:F

    .line 467
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->centerY()F

    move-result v1

    iput v1, v0, Lcom/google/android/opengl/glview/Point;->y:F

    .line 468
    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->localToGlobal(Lcom/google/android/opengl/glview/Point;)V

    .line 469
    return-object v0
.end method

.method public getHoveredChild()Lcom/google/android/opengl/glview/GLView;
    .registers 5

    .prologue
    .line 1158
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v1

    .line 1159
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 1160
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1161
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->hovered()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1165
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    :goto_11
    return-object v0

    .line 1159
    .restart local v0       #child:Lcom/google/android/opengl/glview/GLView;
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1165
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    return v0
.end method

.method public getMinLength(Z)F
    .registers 3
    .parameter "horizontal"

    .prologue
    .line 377
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    goto :goto_4
.end method

.method public getNextListener()Lcom/google/android/opengl/glview/Listener;
    .registers 2

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    return-object v0
.end method

.method public getParent()Lcom/google/android/opengl/glview/GLView;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    return-object v0
.end method

.method public getTransformer()Lcom/google/android/opengl/glview/Transformer;
    .registers 3

    .prologue
    .line 1188
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1189
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_b

    .line 1190
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->getTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v1

    .line 1192
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected handleFocusGainInternal(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)V
    .registers 7
    .parameter "child"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1011
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->focused()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1012
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getFocusedChild()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 1013
    .local v0, oldChild:Lcom/google/android/opengl/glview/GLView;
    if-eq v0, p1, :cond_11

    if-eqz v0, :cond_11

    .line 1017
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->clearFocus()V

    .line 1031
    .end local v0           #oldChild:Lcom/google/android/opengl/glview/GLView;
    :cond_11
    :goto_11
    return-void

    .line 1022
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    .line 1023
    .local v1, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v1, :cond_1c

    .line 1024
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Lcom/google/android/opengl/glview/GLView;->handleFocusGainInternal(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)V

    .line 1026
    :cond_1c
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 1027
    if-nez p1, :cond_11

    .line 1028
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLView;->gainFocus()V

    goto :goto_11
.end method

.method public final height()F
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    return v0
.end method

.method public highlight(Z)V
    .registers 3
    .parameter "setHighlighted"

    .prologue
    .line 971
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/opengl/glview/GLView;->maskFlagsTree(IZ)V

    .line 972
    return-void
.end method

.method public hover(Z)V
    .registers 5
    .parameter "setHovered"

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->hovered()Z

    move-result v0

    if-eq v0, p1, :cond_13

    .line 1148
    if-eqz p1, :cond_14

    const/4 v0, 0x4

    :goto_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p0, v2}, Lcom/google/android/opengl/glview/GLView;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    .line 1149
    const/16 v0, 0x40

    invoke-virtual {p0, v0, p1}, Lcom/google/android/opengl/glview/GLView;->maskFlags(IZ)V

    .line 1151
    :cond_13
    return-void

    .line 1148
    :cond_14
    const/4 v0, 0x5

    goto :goto_9
.end method

.method public hovered()Z
    .registers 2

    .prologue
    .line 1154
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLView;->testAndFlags(I)Z

    move-result v0

    return v0
.end method

.method public indexOfChild(Lcom/google/android/opengl/glview/GLView;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 202
    const/4 v0, -0x1

    return v0
.end method

.method protected final internalLayout(ZFF)V
    .registers 4
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 303
    if-eqz p1, :cond_7

    .line 304
    iput p2, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    .line 305
    iput p3, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    .line 310
    :goto_6
    return-void

    .line 307
    :cond_7
    iput p2, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    .line 308
    iput p3, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    goto :goto_6
.end method

.method protected final internalSetExtent(FF)V
    .registers 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 284
    iput p1, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    .line 285
    iput p2, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    .line 286
    return-void
.end method

.method public layout(ZFF)V
    .registers 4
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->internalLayout(ZFF)V

    .line 300
    return-void
.end method

.method protected final layout(ZFFFI)V
    .registers 12
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"
    .parameter "childLength"
    .parameter "gravity"

    .prologue
    .line 395
    if-eqz p1, :cond_22

    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v0

    if-nez v0, :cond_22

    .line 396
    and-int/lit8 v0, p5, 0x7

    packed-switch v0, :pswitch_data_40

    .line 418
    :cond_d
    :goto_d
    :pswitch_d
    :sswitch_d
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v0

    if-eqz v0, :cond_3e

    .end local p3
    :goto_13
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 419
    return-void

    .line 400
    .restart local p3
    :pswitch_17
    sub-float v0, p3, p4

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    .line 401
    goto :goto_d

    .line 403
    :pswitch_1e
    sub-float v0, p3, p4

    add-float/2addr p2, v0

    goto :goto_d

    .line 406
    :cond_22
    if-nez p1, :cond_d

    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->expandable(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 407
    and-int/lit8 v0, p5, 0x38

    sparse-switch v0, :sswitch_data_4a

    goto :goto_d

    .line 411
    :sswitch_30
    float-to-double v0, p2

    sub-float v2, p3, p4

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p2, v0

    .line 412
    goto :goto_d

    .line 414
    :sswitch_3a
    sub-float v0, p3, p4

    add-float/2addr p2, v0

    goto :goto_d

    :cond_3e
    move p3, p4

    .line 418
    goto :goto_13

    .line 396
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_d
        :pswitch_17
        :pswitch_1e
    .end packed-switch

    .line 407
    :sswitch_data_4a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_30
        0x10 -> :sswitch_3a
    .end sparse-switch
.end method

.method public final length(Z)F
    .registers 3
    .parameter "horizontal"

    .prologue
    .line 332
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    goto :goto_4
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1173
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getNextListener()Lcom/google/android/opengl/glview/Listener;

    move-result-object v0

    .line 1174
    .local v0, listener:Lcom/google/android/opengl/glview/Listener;
    if-eqz v0, :cond_b

    .line 1175
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/Listener;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 1177
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final localToGlobal(Lcom/google/android/opengl/glview/Point;)V
    .registers 3
    .parameter "pt"

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->convertToParent(Lcom/google/android/opengl/glview/Point;)V

    .line 475
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 476
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_c

    .line 477
    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/GLView;->localToGlobal(Lcom/google/android/opengl/glview/Point;)V

    .line 479
    :cond_c
    return-void
.end method

.method public final maskFlags(IZ)V
    .registers 3
    .parameter "flags"
    .parameter "set"

    .prologue
    .line 125
    if-eqz p2, :cond_6

    .line 126
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 130
    :goto_5
    return-void

    .line 128
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/opengl/glview/GLView;->clearFlags(I)V

    goto :goto_5
.end method

.method public maskFlagsTree(IZ)V
    .registers 6
    .parameter "mask"
    .parameter "value"

    .prologue
    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/google/android/opengl/glview/GLView;->maskFlags(IZ)V

    .line 976
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 977
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 978
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/opengl/glview/GLView;->maskFlagsTree(IZ)V

    .line 977
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 980
    :cond_14
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V
    .registers 5
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 498
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/opengl/glview/GLView;->offsetRectBetweenParentAndChild(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;ZZ)V

    .line 499
    return-void
.end method

.method offsetRectBetweenParentAndChild(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;ZZ)V
    .registers 14
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v8, 0x0

    .line 509
    if-ne p1, p0, :cond_4

    .line 564
    :goto_3
    return-void

    .line 513
    :cond_4
    iget-object v5, p1, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    .line 514
    .local v5, theParent:Lcom/google/android/opengl/glview/GLView;
    new-instance v4, Lcom/google/android/opengl/glview/Point;

    invoke-direct {v4}, Lcom/google/android/opengl/glview/Point;-><init>()V

    .line 518
    .local v4, point:Lcom/google/android/opengl/glview/Point;
    :goto_b
    if-eqz v5, :cond_63

    if-eq v5, p0, :cond_63

    .line 520
    if-eqz p3, :cond_3b

    .line 521
    iput v8, v4, Lcom/google/android/opengl/glview/Point;->x:F

    .line 522
    iput v8, v4, Lcom/google/android/opengl/glview/Point;->y:F

    .line 523
    invoke-virtual {v5, v4}, Lcom/google/android/opengl/glview/GLView;->convertToParent(Lcom/google/android/opengl/glview/Point;)V

    .line 524
    iget v6, v4, Lcom/google/android/opengl/glview/Point;->x:F

    iget v7, v4, Lcom/google/android/opengl/glview/Point;->y:F

    invoke-virtual {p2, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 525
    if-eqz p4, :cond_38

    .line 526
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v2

    .line 527
    .local v2, parentX:F
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v3

    .line 528
    .local v3, parentY:F
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v1

    .line 529
    .local v1, parentW:F
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v0

    .line 530
    .local v0, parentH:F
    add-float v6, v2, v1

    add-float v7, v3, v0

    invoke-virtual {p2, v2, v3, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 546
    .end local v0           #parentH:F
    .end local v1           #parentW:F
    .end local v2           #parentX:F
    .end local v3           #parentY:F
    :cond_38
    :goto_38
    iget-object v5, v5, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    goto :goto_b

    .line 533
    :cond_3b
    if-eqz p4, :cond_54

    .line 534
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v2

    .line 535
    .restart local v2       #parentX:F
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v3

    .line 536
    .restart local v3       #parentY:F
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v1

    .line 537
    .restart local v1       #parentW:F
    invoke-virtual {v5}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v0

    .line 538
    .restart local v0       #parentH:F
    add-float v6, v2, v1

    add-float v7, v3, v0

    invoke-virtual {p2, v2, v3, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 540
    .end local v0           #parentH:F
    .end local v1           #parentW:F
    .end local v2           #parentX:F
    .end local v3           #parentY:F
    :cond_54
    iput v8, v4, Lcom/google/android/opengl/glview/Point;->x:F

    .line 541
    iput v8, v4, Lcom/google/android/opengl/glview/Point;->y:F

    .line 542
    invoke-virtual {v5, v4}, Lcom/google/android/opengl/glview/GLView;->convertFromParent(Lcom/google/android/opengl/glview/Point;)V

    .line 543
    iget v6, v4, Lcom/google/android/opengl/glview/Point;->x:F

    iget v7, v4, Lcom/google/android/opengl/glview/Point;->y:F

    invoke-virtual {p2, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_38

    .line 551
    :cond_63
    if-ne v5, p0, :cond_81

    .line 552
    iput v8, v4, Lcom/google/android/opengl/glview/Point;->x:F

    .line 553
    iput v8, v4, Lcom/google/android/opengl/glview/Point;->y:F

    .line 554
    if-eqz p3, :cond_76

    .line 555
    invoke-virtual {v5, v4}, Lcom/google/android/opengl/glview/GLView;->convertToParent(Lcom/google/android/opengl/glview/Point;)V

    .line 556
    iget v6, v4, Lcom/google/android/opengl/glview/Point;->x:F

    iget v7, v4, Lcom/google/android/opengl/glview/Point;->y:F

    invoke-virtual {p2, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    .line 558
    :cond_76
    invoke-virtual {v5, v4}, Lcom/google/android/opengl/glview/GLView;->convertFromParent(Lcom/google/android/opengl/glview/Point;)V

    .line 559
    iget v6, v4, Lcom/google/android/opengl/glview/Point;->x:F

    iget v7, v4, Lcom/google/android/opengl/glview/Point;->y:F

    invoke-virtual {p2, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_3

    .line 562
    :cond_81
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "parameter must be a descendant of this view"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public final offsetRectIntoDescendantCoords(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V
    .registers 4
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/google/android/opengl/glview/GLView;->offsetRectBetweenParentAndChild(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;ZZ)V

    .line 503
    return-void
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .registers 7
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, animating:Z
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v1

    .line 430
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    if-ge v2, v1, :cond_14

    .line 431
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/google/android/opengl/glview/GLView;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v3

    or-int/2addr v0, v3

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 433
    :cond_14
    return v0
.end method

.method public onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V
    .registers 5
    .parameter "glCanvas"

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 438
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 439
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/opengl/glview/GLView;->onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 441
    :cond_11
    return-void
.end method

.method public removeView(Lcom/google/android/opengl/glview/GLView;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t remove a child from a simple view"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requestFocus()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 995
    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/opengl/glview/GLView;->requestFocus(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method protected requestFocus(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)Z
    .registers 5
    .parameter "child"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1003
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->handleFocusGainInternal(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)V

    .line 1004
    const/4 v0, 0x1

    return v0
.end method

.method public requestRectangleOnScreen(FFFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 573
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_9

    .line 574
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLView;->requestRectangleOnScreen(FFFF)V

    .line 576
    :cond_9
    return-void
.end method

.method public requestScrollTo(FFZ)V
    .registers 5
    .parameter "x"
    .parameter "y"
    .parameter "animate"

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getParent()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 584
    .local v0, parent:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_9

    .line 585
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FFZ)V

    .line 587
    :cond_9
    return-void
.end method

.method public root()Lcom/google/android/opengl/glview/GLView;
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    if-eqz v0, :cond_a

    .line 874
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->root()Lcom/google/android/opengl/glview/GLView;

    move-result-object p0

    .line 876
    .end local p0
    :cond_a
    return-object p0
.end method

.method public route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 23
    .parameter "tag"
    .parameter "e0"
    .parameter "e1"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 729
    invoke-static/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLView;->isKeyEvent(I)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLView;->getFocusedChild()Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .line 731
    .local v5, child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v5, :cond_32

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 732
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    .line 733
    .local v13, et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-eqz v13, :cond_32

    .line 804
    .end local v5           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v13           #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    :cond_1c
    :goto_1c
    return-object v13

    .line 737
    :cond_1d
    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_37

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLView;->getHoveredChild()Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .line 739
    .restart local v5       #child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v5, :cond_32

    .line 740
    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 768
    .end local v5           #child:Lcom/google/android/opengl/glview/GLView;
    :cond_32
    packed-switch p1, :pswitch_data_148

    .line 804
    const/4 v13, 0x0

    goto :goto_1c

    .line 743
    :cond_37
    const/16 v6, 0xd

    move/from16 v0, p1

    if-ne v0, v6, :cond_6e

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLView;->hovered()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 745
    const/16 v7, 0xe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 747
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLView;->getHoveredChild()Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .line 748
    .restart local v5       #child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v5, :cond_6e

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 750
    .local v15, x:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 751
    .local v16, y:F
    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lcom/google/android/opengl/glview/GLView;->contains(FF)Z

    move-result v6

    if-nez v6, :cond_6e

    .line 752
    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->route(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 758
    .end local v5           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v12

    .line 759
    .local v12, childCount:I
    add-int/lit8 v14, v12, -0x1

    .local v14, i:I
    :goto_74
    if-ltz v14, :cond_32

    .line 760
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    .restart local v5       #child:Lcom/google/android/opengl/glview/GLView;
    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 761
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/opengl/glview/GLView;->createTracker(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    .line 762
    .restart local v13       #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    if-nez v13, :cond_1c

    .line 759
    add-int/lit8 v14, v14, -0x1

    goto :goto_74

    .line 770
    .end local v5           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v12           #childCount:I
    .end local v13           #et:Lcom/google/android/opengl/glview/GLView$EventTracker;
    .end local v14           #i:I
    :pswitch_8f
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureDown(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto :goto_1c

    .line 772
    :pswitch_98
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureShowPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 774
    :pswitch_a2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureSingleTapUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 776
    :pswitch_ac
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureLongPress(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 778
    :pswitch_b6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLView;->gestureScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 780
    :pswitch_c6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLView;->gestureFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 782
    :pswitch_d6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureUp(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 784
    :pswitch_e0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureCancel(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 786
    :pswitch_ea
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureScaleBegin(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 788
    :pswitch_f4
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLView;->gestureScale(Landroid/view/MotionEvent;F)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 790
    :pswitch_100
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureScaleEnd(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 792
    :pswitch_10a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->gestureHoverMove(Landroid/view/MotionEvent;)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 794
    :pswitch_114
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/opengl/glview/GLView;->hover(Z)V

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLView;->gestureHoverEnter()Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 797
    :pswitch_120
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/opengl/glview/GLView;->hover(Z)V

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLView;->gestureHoverExit()Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 800
    :pswitch_12c
    move/from16 v0, p4

    float-to-int v6, v0

    move/from16 v0, p5

    float-to-int v7, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/opengl/glview/GLView;->gestureKeyDown(II)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 802
    :pswitch_13a
    move/from16 v0, p4

    float-to-int v6, v0

    move/from16 v0, p5

    float-to-int v7, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/google/android/opengl/glview/GLView;->gestureKeyUp(II)Lcom/google/android/opengl/glview/GLView$EventTracker;

    move-result-object v13

    goto/16 :goto_1c

    .line 768
    :pswitch_data_148
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_98
        :pswitch_a2
        :pswitch_ac
        :pswitch_b6
        :pswitch_c6
        :pswitch_d6
        :pswitch_e0
        :pswitch_ea
        :pswitch_f4
        :pswitch_100
        :pswitch_12c
        :pswitch_13a
        :pswitch_10a
        :pswitch_114
        :pswitch_120
    .end packed-switch
.end method

.method public routeFocusEvent(II)Lcom/google/android/opengl/glview/GLView$EventTracker;
    .registers 12
    .parameter "keyCode"
    .parameter "flags"

    .prologue
    const/4 v5, 0x0

    .line 830
    invoke-static {p1, p2}, Lcom/google/android/opengl/glview/GLView;->keyCodeToFocusDir(II)I

    move-result v0

    .line 831
    .local v0, direction:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_43

    .line 832
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getFocusLeaf()Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    .line 833
    .local v1, leaf:Lcom/google/android/opengl/glview/GLView;
    if-eqz v1, :cond_43

    .line 834
    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/GLView;->focusSearch(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 835
    .local v4, v:Lcom/google/android/opengl/glview/GLView;
    if-eqz v4, :cond_43

    if-eq v4, v1, :cond_43

    .line 842
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->root()Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    .line 843
    .local v2, root:Lcom/google/android/opengl/glview/GLView;
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 844
    .local v3, temp:Landroid/graphics/RectF;
    invoke-virtual {p0, v3}, Lcom/google/android/opengl/glview/GLView;->getFocusedRect(Landroid/graphics/RectF;)V

    .line 845
    invoke-virtual {v2, p0, v3}, Lcom/google/android/opengl/glview/GLView;->offsetDescendantRectToMyCoords(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V

    .line 846
    invoke-virtual {v2, v4, v3}, Lcom/google/android/opengl/glview/GLView;->offsetRectIntoDescendantCoords(Lcom/google/android/opengl/glview/GLView;Landroid/graphics/RectF;)V

    .line 847
    invoke-virtual {v4, v5, v0, v3}, Lcom/google/android/opengl/glview/GLView;->requestFocus(Lcom/google/android/opengl/glview/GLView;ILandroid/graphics/RectF;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 848
    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/android/opengl/glview/GLView;->requestRectangleOnScreen(FFFF)V

    .line 853
    sget-object v5, Lcom/google/android/opengl/glview/GLView;->kDoNothing:Lcom/google/android/opengl/glview/GLView$EventTracker;

    .line 858
    .end local v1           #leaf:Lcom/google/android/opengl/glview/GLView;
    .end local v2           #root:Lcom/google/android/opengl/glview/GLView;
    .end local v3           #temp:Landroid/graphics/RectF;
    .end local v4           #v:Lcom/google/android/opengl/glview/GLView;
    :cond_43
    return-object v5
.end method

.method public select(Z)V
    .registers 3
    .parameter "setSelected"

    .prologue
    .line 983
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/opengl/glview/GLView;->maskFlagsTree(IZ)V

    .line 984
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 313
    iput p1, p0, Lcom/google/android/opengl/glview/GLView;->mAlpha:F

    .line 314
    return-void
.end method

.method public final setContentRect(FFFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 279
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p3}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 280
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p4}, Lcom/google/android/opengl/glview/GLView;->layout(ZFF)V

    .line 281
    return-void
.end method

.method public final setExpandable(ZZ)V
    .registers 4
    .parameter "horizontal"
    .parameter "expandable"

    .prologue
    .line 388
    if-eqz p1, :cond_8

    const/16 v0, 0x100

    :goto_4
    invoke-virtual {p0, v0, p2}, Lcom/google/android/opengl/glview/GLView;->maskFlags(IZ)V

    .line 389
    return-void

    .line 388
    :cond_8
    const/16 v0, 0x200

    goto :goto_4
.end method

.method public final setFlags(I)V
    .registers 3
    .parameter "flags"

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    .line 118
    return-void
.end method

.method public setId(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 151
    iput p1, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    .line 152
    return-void
.end method

.method public setParent(Lcom/google/android/opengl/glview/GLView;)V
    .registers 2
    .parameter "p"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLView;->mParent:Lcom/google/android/opengl/glview/GLView;

    .line 228
    return-void
.end method

.method public final start(Z)F
    .registers 3
    .parameter "horizontal"

    .prologue
    .line 328
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    :goto_4
    return v0

    :cond_5
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    goto :goto_4
.end method

.method public final testAndFlags(I)Z
    .registers 3
    .parameter "flags"

    .prologue
    .line 133
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, clazz:Ljava/lang/String;
    const-string v0, "class "

    .line 241
    .local v0, classPrefix:Ljava/lang/String;
    const-string v4, "class "

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 242
    const-string v4, "class "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    :cond_1c
    const-string v2, "com.google.android.opengl.glview."

    .line 245
    .local v2, prefix:Ljava/lang/String;
    const-string v4, "com.google.android.opengl.glview."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 246
    const-string v4, "com.google.android.opengl.glview."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_30
    :goto_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " o: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mZ:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), e: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/opengl/glview/GLView;->mH:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") flags: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_11a

    const-string v4, " highlighted"

    :goto_8f
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_11e

    const-string v4, " highlightable"

    :goto_9b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_122

    const-string v4, " selected"

    :goto_a7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_125

    const-string v4, " selectable"

    :goto_b3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_128

    const-string v4, " focused"

    :goto_bf
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_12b

    const-string v4, " focusable"

    :goto_cb
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_12e

    const-string v4, " hovered"

    :goto_d7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_131

    const-string v4, " clickable"

    :goto_e3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_134

    const-string v4, " expandableH"

    :goto_ef
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v4, p0, Lcom/google/android/opengl/glview/GLView;->mFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_137

    const-string v4, " expandableV"

    :goto_fb
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 248
    :cond_104
    const-string v3, "com.google.android.opengl.albumwall."

    .line 249
    .local v3, prefix2:Ljava/lang/String;
    const-string v4, "com.google.android.opengl.albumwall."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 250
    const-string v4, "com.google.android.opengl.albumwall."

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_30

    .line 253
    .end local v3           #prefix2:Ljava/lang/String;
    :cond_11a
    const-string v4, ""

    goto/16 :goto_8f

    :cond_11e
    const-string v4, ""

    goto/16 :goto_9b

    :cond_122
    const-string v4, ""

    goto :goto_a7

    :cond_125
    const-string v4, ""

    goto :goto_b3

    :cond_128
    const-string v4, ""

    goto :goto_bf

    :cond_12b
    const-string v4, ""

    goto :goto_cb

    :cond_12e
    const-string v4, ""

    goto :goto_d7

    :cond_131
    const-string v4, ""

    goto :goto_e3

    :cond_134
    const-string v4, ""

    goto :goto_ef

    :cond_137
    const-string v4, ""

    goto :goto_fb
.end method

.method public visit(ILjava/lang/Object;)V
    .registers 6
    .parameter "message"
    .parameter "visitor"

    .prologue
    .line 1181
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLView;->getChildCount()I

    move-result v0

    .line 1182
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1183
    invoke-virtual {p0, v1}, Lcom/google/android/opengl/glview/GLView;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/android/opengl/glview/GLView;->visit(ILjava/lang/Object;)V

    .line 1182
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1185
    :cond_11
    return-void
.end method

.method public final width()F
    .registers 2

    .prologue
    .line 348
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mW:F

    return v0
.end method

.method public final x()F
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mX:F

    return v0
.end method

.method public final y()F
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mY:F

    return v0
.end method

.method public final z()F
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/google/android/opengl/glview/GLView;->mZ:F

    return v0
.end method
