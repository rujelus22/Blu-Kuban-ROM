.class public Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;
.super Landroid/widget/ToggleButton;
.source "CenterToggleButton.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mButtonDrawableRef:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14
    .parameter "canvas"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->mButtonDrawableRef:Landroid/graphics/drawable/Drawable;

    .line 43
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_50

    .line 45
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 47
    .local v4, width:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 49
    .local v2, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v3, v7, v8

    .line 51
    .local v3, w:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v1, v7, v8

    .line 53
    .local v1, h:I
    sub-int v7, v3, v4

    div-int/lit8 v5, v7, 0x2

    .line 55
    .local v5, x:I
    sub-int v7, v1, v2

    div-int/lit8 v6, v7, 0x2

    .line 57
    .local v6, y:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingTop()I

    move-result v8

    add-int/2addr v8, v6

    add-int v9, v5, v4

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    add-int v10, v6, v2

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    .end local v1           #h:I
    .end local v2           #height:I
    .end local v3           #w:I
    .end local v4           #width:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_50
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/CenterToggleButton;->mButtonDrawableRef:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ToggleButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method
