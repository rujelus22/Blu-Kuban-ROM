.class public final Lcom/cooliris/media/PathBarLayer;
.super Lcom/cooliris/media/Layer;
.source "PathBarLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/PathBarLayer$Component;
    }
.end annotation


# static fields
.field private static final JOIN:I

.field private static final sPathFormat:Lcom/cooliris/media/StringTexture$Config;


# instance fields
.field private final ICON_OFFSET_X:F

.field private final TEXT_OFFSET_Y:F

.field private final mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/PathBarLayer$Component;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mTouchItem:Lcom/cooliris/media/PathBarLayer$Component;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 35
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/PathBarLayer;->sPathFormat:Lcom/cooliris/media/StringTexture$Config;

    .line 40
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f02006a

    sput v0, Lcom/cooliris/media/PathBarLayer;->JOIN:I

    .line 50
    sget-object v0, Lcom/cooliris/media/PathBarLayer;->sPathFormat:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v1, 0x4190

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/PathBarLayer;->mTouchItem:Lcom/cooliris/media/PathBarLayer$Component;

    .line 55
    iput-object p1, p0, Lcom/cooliris/media/PathBarLayer;->mContext:Landroid/content/Context;

    .line 56
    const/high16 v0, 0x3f80

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/PathBarLayer;->ICON_OFFSET_X:F

    .line 57
    const/high16 v0, 0x40c0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/cooliris/media/PathBarLayer;->TEXT_OFFSET_Y:F

    .line 58
    return-void
.end method

.method static synthetic access$000()Lcom/cooliris/media/StringTexture$Config;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/cooliris/media/PathBarLayer;->sPathFormat:Lcom/cooliris/media/StringTexture$Config;

    return-object v0
.end method

.method private getComponentException(I)Lcom/cooliris/media/PathBarLayer$Component;
    .registers 5
    .parameter "slotIndex"

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/PathBarLayer$Component;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_8} :catch_9

    .line 217
    :goto_8
    return-object v1

    .line 215
    :catch_9
    move-exception v0

    .line 216
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "PathBarLayer"

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private hitTestItems(FF)Lcom/cooliris/media/PathBarLayer$Component;
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 288
    iget-object v5, p0, Lcom/cooliris/media/PathBarLayer;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_56

    .line 289
    iget-object v5, p0, Lcom/cooliris/media/PathBarLayer;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/cooliris/media/Gallery;

    invoke-virtual {v5}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v3

    .line 290
    .local v3, layer:Lcom/cooliris/media/GridLayer;
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->isFullImageLoaded()Z

    move-result v5

    if-nez v5, :cond_22

    invoke-virtual {v3}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cooliris/media/HudLayer;->getAlpha()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-nez v5, :cond_56

    .line 291
    :cond_22
    iget v5, p0, Lcom/cooliris/media/Layer;->mY:F

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_56

    iget v5, p0, Lcom/cooliris/media/Layer;->mY:F

    iget v6, p0, Lcom/cooliris/media/Layer;->mHeight:F

    add-float/2addr v5, v6

    cmpg-float v5, p2, v5

    if-gez v5, :cond_56

    .line 292
    iget-object v6, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v6

    .line 293
    :try_start_34
    iget-object v5, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 294
    .local v4, numComponents:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3b
    if-ge v2, v4, :cond_55

    .line 295
    invoke-direct {p0, v2}, Lcom/cooliris/media/PathBarLayer;->getComponentException(I)Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v0

    .line 296
    .local v0, component:Lcom/cooliris/media/PathBarLayer$Component;
    if-eqz v0, :cond_52

    .line 297
    iget v1, v0, Lcom/cooliris/media/PathBarLayer$Component;->x:F

    .line 298
    .local v1, componentx:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_52

    iget v5, v0, Lcom/cooliris/media/PathBarLayer$Component;->width:F

    add-float/2addr v5, v1

    cmpg-float v5, p1, v5

    if-gez v5, :cond_52

    .line 299
    monitor-exit v6

    .line 307
    .end local v0           #component:Lcom/cooliris/media/PathBarLayer$Component;
    .end local v1           #componentx:F
    .end local v2           #i:I
    .end local v3           #layer:Lcom/cooliris/media/GridLayer;
    .end local v4           #numComponents:I
    :goto_51
    return-object v0

    .line 294
    .restart local v0       #component:Lcom/cooliris/media/PathBarLayer$Component;
    .restart local v2       #i:I
    .restart local v3       #layer:Lcom/cooliris/media/GridLayer;
    .restart local v4       #numComponents:I
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 303
    .end local v0           #component:Lcom/cooliris/media/PathBarLayer$Component;
    :cond_55
    monitor-exit v6

    .line 307
    .end local v2           #i:I
    .end local v3           #layer:Lcom/cooliris/media/GridLayer;
    .end local v4           #numComponents:I
    :cond_56
    const/4 v0, 0x0

    goto :goto_51

    .line 303
    .restart local v3       #layer:Lcom/cooliris/media/GridLayer;
    :catchall_58
    move-exception v5

    monitor-exit v6
    :try_end_5a
    .catchall {:try_start_34 .. :try_end_5a} :catchall_58

    throw v5
.end method

.method private layout()V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 194
    iget-object v7, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v7

    .line 195
    :try_start_4
    iget-object v8, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 196
    .local v3, numComponents:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    if-ge v1, v3, :cond_46

    .line 197
    invoke-direct {p0, v1}, Lcom/cooliris/media/PathBarLayer;->getComponentException(I)Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v0

    .line 198
    .local v0, component:Lcom/cooliris/media/PathBarLayer$Component;
    if-eqz v0, :cond_34

    iget-object v8, v0, Lcom/cooliris/media/PathBarLayer$Component;->texture:Lcom/cooliris/media/StringTexture;

    if-eqz v8, :cond_34

    .line 199
    iget v8, v0, Lcom/cooliris/media/PathBarLayer$Component;->icon:I

    if-nez v8, :cond_37

    move v2, v6

    .line 200
    .local v2, iconWidth:F
    :goto_1c
    cmpl-float v8, v2, v6

    if-nez v8, :cond_26

    .line 201
    const/high16 v8, 0x4100

    sget v9, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v2, v8, v9

    .line 203
    :cond_26
    const/high16 v8, 0x40a0

    sget v9, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v4, v8, v9

    .line 204
    .local v4, offset:F
    add-int/lit8 v8, v3, -0x1

    if-eq v1, v8, :cond_3c

    add-float v5, v2, v4

    .line 206
    .local v5, thisComponentWidth:F
    :goto_32
    iput v5, v0, Lcom/cooliris/media/PathBarLayer$Component;->width:F

    .line 196
    .end local v2           #iconWidth:F
    .end local v4           #offset:F
    .end local v5           #thisComponentWidth:F
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 199
    :cond_37
    invoke-virtual {v0}, Lcom/cooliris/media/PathBarLayer$Component;->getIconWidth()F

    move-result v2

    goto :goto_1c

    .line 204
    .restart local v2       #iconWidth:F
    .restart local v4       #offset:F
    :cond_3c
    iget-object v8, v0, Lcom/cooliris/media/PathBarLayer$Component;->texture:Lcom/cooliris/media/StringTexture;

    invoke-virtual {v8}, Lcom/cooliris/media/StringTexture;->computeTextWidth()F

    move-result v8

    add-float/2addr v8, v2

    add-float v5, v8, v4

    goto :goto_32

    .line 209
    .end local v0           #component:Lcom/cooliris/media/PathBarLayer$Component;
    .end local v2           #iconWidth:F
    .end local v4           #offset:F
    :cond_46
    monitor-exit v7

    .line 210
    return-void

    .line 209
    .end local v1           #i:I
    .end local v3           #numComponents:I
    :catchall_48
    move-exception v6

    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_48

    throw v6
.end method


# virtual methods
.method public changeLabel(Ljava/lang/String;)V
    .registers 5
    .parameter "label"

    .prologue
    .line 89
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 97
    :cond_8
    :goto_8
    return-void

    .line 91
    :cond_9
    invoke-virtual {p0}, Lcom/cooliris/media/PathBarLayer;->getCurrentLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 93
    invoke-virtual {p0}, Lcom/cooliris/media/PathBarLayer;->popLabel()Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v0

    .line 94
    .local v0, component:Lcom/cooliris/media/PathBarLayer$Component;
    if-eqz v0, :cond_8

    .line 95
    iget v1, v0, Lcom/cooliris/media/PathBarLayer$Component;->icon:I

    iget-object v2, v0, Lcom/cooliris/media/PathBarLayer$Component;->action:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, p1, v2}, Lcom/cooliris/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 362
    :try_start_3
    iget-object v0, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 188
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public getCurrentLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    .line 101
    .local v0, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/PathBarLayer$Component;>;"
    monitor-enter v0

    .line 102
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 103
    .local v1, lastIndex:I
    if-gez v1, :cond_f

    .line 104
    const-string v2, ""

    monitor-exit v0

    .line 106
    :goto_e
    return-object v2

    :cond_f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/PathBarLayer$Component;

    iget-object v2, v2, Lcom/cooliris/media/PathBarLayer$Component;->origString:Ljava/lang/String;

    monitor-exit v0

    goto :goto_e

    .line 107
    .end local v1           #lastIndex:I
    :catchall_19
    move-exception v2

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public getNumLevels()I
    .registers 3

    .prologue
    .line 355
    iget-object v1, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 356
    :try_start_3
    iget-object v0, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 357
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 313
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 314
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_28

    .line 330
    :goto_f
    :pswitch_f
    const/4 v2, 0x1

    return v2

    .line 316
    :pswitch_11
    invoke-direct {p0, v0, v1}, Lcom/cooliris/media/PathBarLayer;->hitTestItems(FF)Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v2

    iput-object v2, p0, Lcom/cooliris/media/PathBarLayer;->mTouchItem:Lcom/cooliris/media/PathBarLayer$Component;

    goto :goto_f

    .line 321
    :pswitch_18
    iget-object v2, p0, Lcom/cooliris/media/PathBarLayer;->mTouchItem:Lcom/cooliris/media/PathBarLayer$Component;

    if-eqz v2, :cond_23

    .line 322
    iget-object v2, p0, Lcom/cooliris/media/PathBarLayer;->mTouchItem:Lcom/cooliris/media/PathBarLayer$Component;

    iget-object v2, v2, Lcom/cooliris/media/PathBarLayer$Component;->action:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 325
    :cond_23
    :pswitch_23
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/cooliris/media/PathBarLayer;->mTouchItem:Lcom/cooliris/media/PathBarLayer$Component;

    goto :goto_f

    .line 314
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_11
        :pswitch_18
        :pswitch_f
        :pswitch_23
    .end packed-switch
.end method

.method public popLabel()Lcom/cooliris/media/PathBarLayer$Component;
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    .line 112
    .local v0, components:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/PathBarLayer$Component;>;"
    monitor-enter v0

    .line 113
    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 114
    .local v1, lastIndex:I
    if-gez v1, :cond_e

    .line 115
    const/4 v2, 0x0

    monitor-exit v0

    .line 119
    :goto_d
    return-object v2

    .line 117
    :cond_e
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cooliris/media/PathBarLayer$Component;

    .line 118
    .local v2, retVal:Lcom/cooliris/media/PathBarLayer$Component;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 119
    monitor-exit v0

    goto :goto_d

    .line 120
    .end local v1           #lastIndex:I
    .end local v2           #retVal:Lcom/cooliris/media/PathBarLayer$Component;
    :catchall_19
    move-exception v3

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v3
.end method

.method public pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V
    .registers 8
    .parameter "icon"
    .parameter "label"
    .parameter "action"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v1

    .line 62
    :try_start_3
    iget-object v0, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    new-instance v2, Lcom/cooliris/media/PathBarLayer$Component;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p3, v3}, Lcom/cooliris/media/PathBarLayer$Component;-><init>(ILjava/lang/String;Ljava/lang/Runnable;F)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 64
    invoke-virtual {p0}, Lcom/cooliris/media/PathBarLayer;->recomputeComponents()V

    .line 65
    return-void

    .line 63
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public recomputeComponents()V
    .registers 8

    .prologue
    .line 334
    iget v2, p0, Lcom/cooliris/media/Layer;->mWidth:F

    .line 335
    .local v2, width:F
    const/high16 v3, 0x41a0

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    .line 336
    iget-object v4, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v4

    .line 337
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    :try_start_c
    iget-object v3, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 338
    invoke-direct {p0, v1}, Lcom/cooliris/media/PathBarLayer;->getComponentException(I)Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v0

    .line 339
    .local v0, component:Lcom/cooliris/media/PathBarLayer$Component;
    if-eqz v0, :cond_2e

    .line 341
    invoke-virtual {v0}, Lcom/cooliris/media/PathBarLayer$Component;->getIconWidth()F

    move-result v3

    const/high16 v5, 0x40c0

    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    sub-float/2addr v2, v3

    .line 343
    const/4 v3, 0x1

    if-lt v1, v3, :cond_2b

    .line 344
    const/high16 v3, 0x41c0

    sub-float/2addr v2, v3

    .line 348
    :cond_2b
    invoke-virtual {v0, v2}, Lcom/cooliris/media/PathBarLayer$Component;->computeLabel(F)V

    .line 337
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 351
    .end local v0           #component:Lcom/cooliris/media/PathBarLayer$Component;
    :cond_31
    monitor-exit v4

    .line 352
    return-void

    .line 351
    :catchall_33
    move-exception v3

    monitor-exit v4
    :try_end_35
    .catchall {:try_start_c .. :try_end_35} :catchall_33

    throw v3
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 24
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 239
    sget v17, Lcom/cooliris/media/PathBarLayer;->JOIN:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v11

    .line 240
    .local v11, join:Lcom/cooliris/media/Texture;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/Layer;->mY:F

    move/from16 v17, v0

    const/high16 v18, 0x4040

    add-float v16, v17, v18

    .line 241
    .local v16, y:F
    const/high16 v17, 0x4040

    sget v18, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 242
    .local v15, x:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/cooliris/media/Layer;->mHeight:F

    .line 243
    .local v5, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 244
    const/4 v6, 0x0

    .local v6, i:I
    :goto_29
    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_133

    .line 245
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/cooliris/media/PathBarLayer;->getComponentException(I)Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v3

    .line 246
    .local v3, component:Lcom/cooliris/media/PathBarLayer$Component;
    if-nez v3, :cond_42

    .line 244
    :goto_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 249
    :cond_42
    int-to-float v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v3, Lcom/cooliris/media/PathBarLayer$Component;->x:F

    .line 252
    iget v0, v3, Lcom/cooliris/media/PathBarLayer$Component;->animWidth:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v14, v0

    .line 253
    .local v14, width:I
    if-eqz v6, :cond_66

    .line 254
    invoke-virtual {v11}, Lcom/cooliris/media/ResourceTexture;->getWidth()I

    move-result v17

    sub-int v17, v15, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v11, v1, v2}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 258
    :cond_66
    iget-object v10, v3, Lcom/cooliris/media/PathBarLayer$Component;->animatedIcons:[I

    .line 261
    .local v10, icons:[I
    if-eqz v10, :cond_10a

    array-length v0, v10

    move/from16 v17, v0

    if-lez v17, :cond_10a

    iget v0, v3, Lcom/cooliris/media/PathBarLayer$Component;->timeElapsed:F

    move/from16 v17, v0

    const/high16 v19, 0x41a0

    mul-float v17, v17, v19

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    array-length v0, v10

    move/from16 v19, v0

    rem-int v17, v17, v19

    aget v8, v10, v17

    .line 264
    .local v8, iconId:I
    :goto_83
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v7

    .line 265
    .local v7, icon:Lcom/cooliris/media/Texture;
    if-eqz v7, :cond_a8

    .line 266
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 267
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/PathBarLayer;->ICON_OFFSET_X:F

    move/from16 v19, v0

    add-float v17, v17, v19

    sget v19, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    sub-float v19, v16, v19

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 269
    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I
    :try_end_b1
    .catchall {:try_start_29 .. :try_end_b1} :catchall_130

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_f2

    .line 271
    :try_start_b8
    iget-object v13, v3, Lcom/cooliris/media/PathBarLayer$Component;->texture:Lcom/cooliris/media/StringTexture;

    .line 272
    .local v13, texture:Lcom/cooliris/media/StringTexture;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 273
    invoke-virtual {v3}, Lcom/cooliris/media/PathBarLayer$Component;->getIconWidth()F

    move-result v9

    .line 274
    .local v9, iconWidth:F
    invoke-virtual {v13}, Lcom/cooliris/media/StringTexture;->computeTextWidth()F

    move-result v17

    int-to-float v0, v14

    move/from16 v19, v0

    sub-float v19, v19, v9

    cmpg-float v17, v17, v19

    if-gtz v17, :cond_f2

    .line 275
    const/16 v17, 0x0

    cmpl-float v17, v9, v17

    if-nez v17, :cond_10e

    const/high16 v17, 0x4100

    sget v19, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v12, v17, v19

    .line 276
    .local v12, textOffset:F
    :goto_dc
    int-to-float v0, v15

    move/from16 v17, v0

    add-float v17, v17, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/PathBarLayer;->TEXT_OFFSET_Y:F

    move/from16 v19, v0

    add-float v19, v19, v16

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v13, v1, v2}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V
    :try_end_f2
    .catchall {:try_start_b8 .. :try_end_f2} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_f2} :catch_110

    .line 282
    .end local v9           #iconWidth:F
    .end local v12           #textOffset:F
    .end local v13           #texture:Lcom/cooliris/media/StringTexture;
    :cond_f2
    :goto_f2
    int-to-float v0, v14

    move/from16 v17, v0

    const/high16 v19, 0x41a8

    :try_start_f7
    sget v20, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v19, v19, v20

    const/high16 v20, 0x3f00

    add-float v19, v19, v20

    add-float v17, v17, v19

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v15, v15, v17

    goto/16 :goto_3f

    .line 261
    .end local v7           #icon:Lcom/cooliris/media/Texture;
    .end local v8           #iconId:I
    :cond_10a
    iget v8, v3, Lcom/cooliris/media/PathBarLayer$Component;->icon:I

    goto/16 :goto_83

    .restart local v7       #icon:Lcom/cooliris/media/Texture;
    .restart local v8       #iconId:I
    .restart local v9       #iconWidth:F
    .restart local v13       #texture:Lcom/cooliris/media/StringTexture;
    :cond_10e
    move v12, v9

    .line 275
    goto :goto_dc

    .line 278
    .end local v9           #iconWidth:F
    .end local v13           #texture:Lcom/cooliris/media/StringTexture;
    :catch_110
    move-exception v4

    .line 279
    .local v4, e:Ljava/lang/Exception;
    const-string v17, "PathBarLayer"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "PathBarLayer.java renderBlended:: Exception....: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 284
    .end local v3           #component:Lcom/cooliris/media/PathBarLayer$Component;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #icon:Lcom/cooliris/media/Texture;
    .end local v8           #iconId:I
    .end local v10           #icons:[I
    .end local v14           #width:I
    :catchall_130
    move-exception v17

    monitor-exit v18
    :try_end_132
    .catchall {:try_start_f7 .. :try_end_132} :catchall_130

    throw v17

    :cond_133
    :try_start_133
    monitor-exit v18
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_130

    .line 285
    return-void
.end method

.method public setAnimatedIcons([I)V
    .registers 7
    .parameter "icons"

    .prologue
    .line 68
    iget-object v4, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v4

    .line 69
    :try_start_3
    iget-object v3, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 70
    .local v2, numComponents:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v2, :cond_31

    .line 71
    invoke-direct {p0, v1}, Lcom/cooliris/media/PathBarLayer;->getComponentException(I)Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v0

    .line 72
    .local v0, component:Lcom/cooliris/media/PathBarLayer$Component;
    if-eqz v0, :cond_27

    .line 73
    iget-object v3, v0, Lcom/cooliris/media/PathBarLayer$Component;->animatedIcons:[I

    if-eqz v3, :cond_19

    .line 74
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/cooliris/media/PathBarLayer$Component;->animatedIcons:[I

    .line 76
    :cond_19
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_27

    .line 77
    if-eqz p1, :cond_2a

    .line 78
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    iput-object v3, v0, Lcom/cooliris/media/PathBarLayer$Component;->animatedIcons:[I

    .line 70
    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 80
    :cond_2a
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/cooliris/media/PathBarLayer$Component;->animatedIcons:[I

    goto :goto_27

    .line 85
    .end local v0           #component:Lcom/cooliris/media/PathBarLayer$Component;
    .end local v1           #i:I
    .end local v2           #numComponents:I
    :catchall_2e
    move-exception v3

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v3

    .restart local v1       #i:I
    .restart local v2       #numComponents:I
    :cond_31
    :try_start_31
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 86
    return-void
.end method

.method public update(Lcom/cooliris/media/RenderView;F)Z
    .registers 8
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/cooliris/media/PathBarLayer;->layout()V

    .line 224
    const/4 v2, 0x0

    .line 225
    .local v2, retVal:Z
    iget-object v4, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    monitor-enter v4

    .line 226
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/cooliris/media/PathBarLayer;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1e

    .line 227
    invoke-direct {p0, v1}, Lcom/cooliris/media/PathBarLayer;->getComponentException(I)Lcom/cooliris/media/PathBarLayer$Component;

    move-result-object v0

    .line 228
    .local v0, component:Lcom/cooliris/media/PathBarLayer$Component;
    if-eqz v0, :cond_1b

    .line 229
    invoke-virtual {v0, p2}, Lcom/cooliris/media/PathBarLayer$Component;->update(F)Z

    move-result v3

    or-int/2addr v2, v3

    .line 226
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 232
    .end local v0           #component:Lcom/cooliris/media/PathBarLayer$Component;
    :cond_1e
    monitor-exit v4

    .line 233
    return v2

    .line 232
    :catchall_20
    move-exception v3

    monitor-exit v4
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_20

    throw v3
.end method
