.class Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$2;
.super Ljava/lang/Object;
.source "VideoClipViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bitmapCreated(Landroid/view/View;Landroid/graphics/Bitmap;F)V
    .registers 8
    .parameter "targetView"
    .parameter "bitmap"
    .parameter "time"

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$2;->isTargetViewExist(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 282
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    .line 284
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->access$1()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 289
    .end local v0           #msg:Landroid/os/Message;
    :goto_27
    return-void

    .line 287
    :cond_28
    const-string v1, "bitmap created but target is not there"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_27
.end method

.method public isTargetViewExist(Landroid/view/View;)Z
    .registers 7
    .parameter "targetView"

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 271
    .local v2, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_c
    if-gez v0, :cond_15

    .line 276
    const-string v3, "Target view is not there"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 277
    const/4 v3, 0x0

    :goto_14
    return v3

    .line 272
    :cond_15
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 273
    .local v1, v:Landroid/view/View;
    if-ne p1, v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_27

    .line 274
    const/4 v3, 0x1

    goto :goto_14

    .line 271
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_c
.end method
