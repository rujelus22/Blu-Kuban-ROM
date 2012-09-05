.class public Lcom/sec/android/socialhub/view/ListColorView;
.super Landroid/widget/ImageView;
.source "ListColorView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public setAccountColor(I)V
    .registers 3
    .parameter "id"

    .prologue
    .line 34
    if-lez p1, :cond_a

    .line 36
    invoke-static {p1}, Lcom/sec/android/socialhub/util/SocialHubEmailColor;->getAccountColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/ListColorView;->setImageResource(I)V

    .line 42
    :goto_9
    return-void

    .line 40
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/view/ListColorView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method
