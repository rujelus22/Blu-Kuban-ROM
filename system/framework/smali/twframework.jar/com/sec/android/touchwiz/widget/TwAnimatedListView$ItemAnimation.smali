.class public abstract Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;
.super Ljava/lang/Object;
.source "TwAnimatedListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemAnimation"
.end annotation


# static fields
.field public static final TYPE_CUSTOM_DRAW:I = 0x1

.field public static final TYPE_MATRIX_MODIFICATION:I


# instance fields
.field private mKeepOnFinish:Z

.field private mType:I


# direct methods
.method protected constructor <init>(IZ)V
    .registers 4
    .parameter "type"
    .parameter "retainOnFinish"

    .prologue
    .line 126
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    .line 127
    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mType:I

    .line 128
    iput-boolean p2, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    .line 129
    return-void
.end method


# virtual methods
.method public abstract computeAnimation(J)V
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/view/View;)V
    .registers 3
    .parameter "canvas"
    .parameter "child"

    .prologue
    .line 201
    return-void
.end method

.method public getRetainOnFinish()Z
    .registers 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mKeepOnFinish:Z

    return v0
.end method

.method public getTransformation(Landroid/view/animation/Transformation;)V
    .registers 2
    .parameter "outTransform"

    .prologue
    .line 185
    return-void
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAnimatedListView$ItemAnimation;->mType:I

    return v0
.end method

.method public abstract isFinished()Z
.end method
