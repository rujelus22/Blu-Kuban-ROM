.class public Lcom/arcsoft/widget/ArcImageButton;
.super Landroid/widget/ImageButton;
.source "ArcImageButton.java"


# static fields
.field private static left:I

.field private static set:Z

.field private static top:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/widget/ArcImageButton;->set:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public static setRelativePosition(II)V
    .registers 3
    .parameter "srcLeft"
    .parameter "srcTop"

    .prologue
    .line 26
    sput p0, Lcom/arcsoft/widget/ArcImageButton;->left:I

    .line 27
    sput p1, Lcom/arcsoft/widget/ArcImageButton;->top:I

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/arcsoft/widget/ArcImageButton;->set:Z

    .line 29
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .parameter "canvas"

    .prologue
    .line 32
    sget-boolean v3, Lcom/arcsoft/widget/ArcImageButton;->set:Z

    if-nez v3, :cond_8

    .line 33
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    :goto_7
    return-void

    .line 35
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 36
    invoke-virtual {p0}, Lcom/arcsoft/widget/ArcImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 37
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 38
    .local v2, width:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 40
    .local v1, height:I
    sget v3, Lcom/arcsoft/widget/ArcImageButton;->left:I

    sget v4, Lcom/arcsoft/widget/ArcImageButton;->top:I

    sget v5, Lcom/arcsoft/widget/ArcImageButton;->left:I

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x14

    sget v6, Lcom/arcsoft/widget/ArcImageButton;->top:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x14

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_7
.end method
