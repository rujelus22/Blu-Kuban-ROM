.class public Lcom/sec/android/socialhub/view/HubImageButton;
.super Landroid/widget/ImageButton;
.source "HubImageButton.java"


# instance fields
.field private isClicked:Z

.field protected mTagEx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->isClicked:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->isClicked:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->isClicked:Z

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/view/HubImageButton;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/sec/android/socialhub/view/HubImageButton;->isClicked:Z

    return p1
.end method


# virtual methods
.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->mTagEx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 70
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->mTagEx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 72
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 8
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageButton;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/HubImageButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_44

    .line 63
    :goto_a
    const-string v0, "HubImageButton"

    const-string v1, "onFocusChanged()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/view/HubImageButton;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gainFocus - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", direction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 60
    :pswitch_3d
    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/HubImageButton;->setNextFocusRightId(I)V

    goto :goto_a

    .line 57
    :pswitch_data_44
    .packed-switch 0x7f0b00ad
        :pswitch_3d
    .end packed-switch
.end method

.method public performClick()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 78
    const-string v1, "HubImageButton"

    const-string v2, "performClick()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClicked - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/socialhub/view/HubImageButton;->isClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-boolean v1, p0, Lcom/sec/android/socialhub/view/HubImageButton;->isClicked:Z

    if-nez v1, :cond_31

    .line 82
    iput-boolean v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->isClicked:Z

    .line 83
    new-instance v0, Lcom/sec/android/socialhub/view/HubImageButton$1;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/view/HubImageButton$1;-><init>(Lcom/sec/android/socialhub/view/HubImageButton;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/socialhub/view/HubImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    .line 96
    :cond_31
    return v0
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubImageButton;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method
