.class public Lcom/sec/android/socialhub/view/HubFrameLayout;
.super Landroid/widget/FrameLayout;
.source "HubFrameLayout.java"


# instance fields
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
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubFrameLayout;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubFrameLayout;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubFrameLayout;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 26
    return-void
.end method


# virtual methods
.method public getTag(I)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HubFrameLayout;->mTagEx:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 44
    iget-object v0, p0, Lcom/sec/android/socialhub/view/HubFrameLayout;->mTagEx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 46
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setTag(ILjava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "tag"

    .prologue
    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/view/HubFrameLayout;->mTagEx:Ljava/lang/ref/WeakReference;

    .line 38
    return-void
.end method
