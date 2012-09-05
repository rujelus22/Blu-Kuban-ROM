.class public Lcom/google/android/finsky/layout/PlaylistControlButtons;
.super Landroid/widget/TextView;
.source "PlaylistControlButtons.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mConnection:Lcom/google/android/finsky/previews/PreviewController;

.field private mDocs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private mIsPlaying:Z

.field private final mStatusListener:Lcom/google/android/finsky/previews/StatusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    .line 92
    new-instance v0, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/layout/PlaylistControlButtons$1;-><init>(Lcom/google/android/finsky/layout/PlaylistControlButtons;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    .line 44
    new-instance v0, Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mStatusListener:Lcom/google/android/finsky/previews/StatusListener;

    invoke-direct {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;-><init>(Lcom/google/android/finsky/previews/StatusListener;)V

    iput-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/PlaylistControlButtons;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    return-void
.end method

.method private setIsPlaying(Z)V
    .registers 2
    .parameter "isPlaying"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    .line 74
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->updateState()V

    .line 75
    return-void
.end method

.method private updateState()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 79
    iget-boolean v2, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    if-nez v2, :cond_2a

    .line 80
    const v2, 0x7f0700fe

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setText(I)V

    .line 81
    const v1, 0x7f020017

    .line 87
    .local v1, drawableId:I
    :goto_f
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 89
    invoke-virtual {p0, v4, v4, v0, v4}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void

    .line 83
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableId:I
    :cond_2a
    const v2, 0x7f0700ff

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setText(I)V

    .line 85
    const v1, 0x7f020018

    .restart local v1       #drawableId:I
    goto :goto_f
.end method


# virtual methods
.method public onAttachedToWindow()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mIsPlaying:Z

    if-nez v0, :cond_10

    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/previews/PreviewController;->play(Ljava/util/Collection;)V

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/PlaylistControlButtons;->setIsPlaying(Z)V

    .line 70
    :goto_f
    return-void

    .line 68
    :cond_10
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->skip()V

    goto :goto_f
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mConnection:Lcom/google/android/finsky/previews/PreviewController;

    invoke-virtual {v0}, Lcom/google/android/finsky/previews/PreviewController;->unbind()V

    .line 59
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 60
    return-void
.end method

.method public setDocuments(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, docs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/finsky/api/model/Document;>;"
    iput-object p1, p0, Lcom/google/android/finsky/layout/PlaylistControlButtons;->mDocs:Ljava/util/Collection;

    .line 49
    return-void
.end method
