.class public Lcom/google/android/apps/plus/views/ProfileImageView;
.super Lcom/google/android/apps/plus/views/EsImageView;
.source "ProfileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ProfileImageView$1;,
        Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;
    }
.end annotation


# instance fields
.field private mDelayRequest:Z

.field private mSizePolicy:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v0, Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;->NORMAL:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mSizePolicy:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget-object v0, Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;->NORMAL:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mSizePolicy:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EsImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget-object v0, Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;->NORMAL:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mSizePolicy:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    .line 50
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 19
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 72
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/plus/views/EsImageView;->onLayout(ZIIII)V

    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mDelayRequest:Z

    if-eqz v0, :cond_40

    .line 78
    sget-object v0, Lcom/google/android/apps/plus/views/ProfileImageView$1;->$SwitchMap$com$google$android$apps$plus$views$ProfileImageView$SizePolicy:[I

    iget-object v1, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mSizePolicy:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_64

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileImageView;->getWidth()I

    move-result v9

    .line 86
    .local v9, width:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileImageView;->getHeight()I

    move-result v10

    .line 92
    .local v10, height:I
    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 94
    .local v5, photoUri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 95
    new-instance v12, Lcom/google/android/apps/plus/content/LocalImageRequest;

    new-instance v0, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    sget-object v6, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    invoke-direct {v12, v0, v9, v10}, Lcom/google/android/apps/plus/content/LocalImageRequest;-><init>(Lcom/google/android/apps/plus/api/MediaRef;II)V

    .local v12, newRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    move-object v6, v12

    .line 104
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v12           #newRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .local v6, newRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :goto_3d
    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/views/ProfileImageView;->setRequest(Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 106
    .end local v6           #newRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    .end local v9           #width:I
    .end local v10           #height:I
    :cond_40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mDelayRequest:Z

    .line 107
    return-void

    .line 80
    :pswitch_44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileImageView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ProfileImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .restart local v10       #height:I
    move v9, v10

    .line 81
    .restart local v9       #width:I
    goto :goto_1c

    .line 98
    .restart local v5       #photoUri:Landroid/net/Uri;
    :cond_52
    new-instance v6, Lcom/google/android/apps/plus/content/MediaImageRequest;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mUrl:Ljava/lang/String;

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .restart local v6       #newRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    goto :goto_3d

    .line 102
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v6           #newRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    :cond_61
    const/4 v6, 0x0

    .restart local v6       #newRequest:Lcom/google/android/apps/plus/content/ImageRequest;
    goto :goto_3d

    .line 78
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_44
    .end packed-switch
.end method

.method public onRecycle()V
    .registers 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/google/android/apps/plus/views/EsImageView;->onRecycle()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mUrl:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setSizePolicy(Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;)V
    .registers 2
    .parameter "policy"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mSizePolicy:Lcom/google/android/apps/plus/views/ProfileImageView$SizePolicy;

    .line 57
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 3
    .parameter "url"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mDelayRequest:Z

    .line 67
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ProfileImageView;->mUrl:Ljava/lang/String;

    .line 68
    return-void

    .line 66
    :cond_12
    const/4 v0, 0x0

    goto :goto_d
.end method
