.class public Lcom/google/android/apps/plus/views/DummyCardView;
.super Lcom/google/android/apps/plus/views/StreamCardView;
.source "DummyCardView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/DummyCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/StreamCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;IIII)I
    .registers 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/DummyCardView;->drawAuthorImage(Landroid/graphics/Canvas;II)V

    .line 38
    sget v1, Lcom/google/android/apps/plus/views/DummyCardView;->sAvatarSize:I

    add-int v0, p3, v1

    .line 39
    .local v0, avatarY:I
    sget v1, Lcom/google/android/apps/plus/views/DummyCardView;->sAvatarSize:I

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, v1, p3}, Lcom/google/android/apps/plus/views/DummyCardView;->drawAuthorName(Landroid/graphics/Canvas;II)I

    move-result p3

    .line 41
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method protected layoutElements(IIII)I
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/views/DummyCardView;->setAuthorImagePosition(II)V

    .line 32
    sget v0, Lcom/google/android/apps/plus/views/DummyCardView;->sAvatarSize:I

    add-int/2addr v0, p1

    sget v1, Lcom/google/android/apps/plus/views/DummyCardView;->sAvatarSize:I

    sub-int v1, p3, v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/android/apps/plus/views/DummyCardView;->createNameLayout(III)I

    move-result v0

    return v0
.end method
