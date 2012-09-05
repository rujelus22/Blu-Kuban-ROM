.class Lcom/swype/android/widget/NavigationBar$GlowCanvas;
.super Landroid/view/View;
.source "NavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/widget/NavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlowCanvas"
.end annotation


# static fields
.field private static final BUTTON_HIGHLIGHT:Ljava/lang/String; = "glow"


# instance fields
.field glow:Landroid/graphics/drawable/Drawable;

.field queuedGlows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/swype/android/widget/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/swype/android/widget/NavigationBar;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->this$0:Lcom/swype/android/widget/NavigationBar;

    .line 175
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->queuedGlows:Ljava/util/List;

    .line 176
    invoke-direct {p0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->init()V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/swype/android/widget/NavigationBar;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 169
    iput-object p1, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->this$0:Lcom/swype/android/widget/NavigationBar;

    .line 170
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->queuedGlows:Ljava/util/List;

    .line 171
    invoke-direct {p0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->init()V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/swype/android/widget/NavigationBar;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->this$0:Lcom/swype/android/widget/NavigationBar;

    .line 165
    invoke-direct {p0, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->queuedGlows:Ljava/util/List;

    .line 166
    invoke-direct {p0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->init()V

    .line 167
    return-void
.end method

.method private convertGlow(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .parameter "rect"
    .parameter "outRect"

    .prologue
    const-wide/high16 v3, 0x3fe8

    .line 198
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 200
    .local v0, adj:I
    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 201
    iget v1, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 203
    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 204
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v0

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 205
    return-void
.end method

.method private init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->this$0:Lcom/swype/android/widget/NavigationBar;

    const-string v2, "glow"

    #calls: Lcom/swype/android/widget/NavigationBar;->completeAssetName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/swype/android/widget/NavigationBar;->access$000(Lcom/swype/android/widget/NavigationBar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v3}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->glow:Landroid/graphics/drawable/Drawable;

    .line 181
    return-void
.end method


# virtual methods
.method public addGlow(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 184
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 185
    invoke-direct {p0, p1, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->convertGlow(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 186
    iget-object v1, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->queuedGlows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->invalidate(Landroid/graphics/Rect;)V

    .line 188
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 211
    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->queuedGlows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 212
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->glow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 213
    iget-object v2, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->glow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_9

    .line 215
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_20
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 220
    invoke-virtual {p0, v0, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->setMeasuredDimension(II)V

    .line 221
    return-void
.end method

.method public removeGlow(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 191
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 192
    invoke-direct {p0, p1, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->convertGlow(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 193
    iget-object v1, p0, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->queuedGlows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/NavigationBar$GlowCanvas;->invalidate(Landroid/graphics/Rect;)V

    .line 195
    return-void
.end method
