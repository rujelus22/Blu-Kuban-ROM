.class public Lcom/google/android/apps/plus/views/EsImageView;
.super Landroid/widget/ImageView;
.source "EsImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/EsImageView$1;,
        Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mUrl:Ljava/lang/String;

.field private serviceListener:Lcom/google/android/apps/plus/service/EsServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/views/EsImageView$ServiceListener;-><init>(Lcom/google/android/apps/plus/views/EsImageView;Lcom/google/android/apps/plus/views/EsImageView$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->serviceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/EsImageView;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->mUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->serviceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->registerListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 88
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 96
    iget-object v0, p0, Lcom/google/android/apps/plus/views/EsImageView;->serviceListener:Lcom/google/android/apps/plus/service/EsServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/EsService;->unregisterListener(Lcom/google/android/apps/plus/service/EsServiceListener;)V

    .line 97
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 7
    .parameter "url"

    .prologue
    .line 60
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 61
    :cond_c
    iput-object p1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mUrl:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 64
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz p1, :cond_33

    .line 65
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/EsImageView;->mUrl:Ljava/lang/String;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/apps/plus/service/EsService;->getImage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 68
    :cond_33
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EsImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EsImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_38
    return-void
.end method
