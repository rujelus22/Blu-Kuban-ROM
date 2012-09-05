.class public Lcom/google/ads/DoubleClickSpec;
.super Ljava/lang/Object;
.source "DoubleClickSpec.java"

# interfaces
.implements Lcom/google/ads/AdSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/DoubleClickSpec$SizeProfile;
    }
.end annotation


# instance fields
.field private mColorBackground:Ljava/lang/String;

.field private mCustomSizeDefined:Z

.field private mHeight:I

.field private mKeyname:Ljava/lang/String;

.field private mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "keyname"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/google/ads/DoubleClickSpec;->mCustomSizeDefined:Z

    .line 39
    iput v0, p0, Lcom/google/ads/DoubleClickSpec;->mWidth:I

    .line 40
    iput v0, p0, Lcom/google/ads/DoubleClickSpec;->mHeight:I

    .line 43
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public generateParameters(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/ads/AdSpec$Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/ads/AdSpec$Parameter;>;"
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "k"

    iget-object v3, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 55
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "color_bg"

    iget-object v3, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_21
    iget-object v1, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    if-eqz v1, :cond_39

    .line 58
    new-instance v1, Lcom/google/ads/AdSpec$Parameter;

    const-string v2, "sp"

    iget-object v3, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v3}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/ads/AdSpec$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_39
    return-object v0
.end method

.method public getAdUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    const-string v0, "http://pagead2.googlesyndication.com/pagead/afma_load_ads.js"

    return-object v0
.end method

.method public getColorBackground()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    return-object v0
.end method

.method public getDebugMode()Z
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/ads/DoubleClickSpec;->mCustomSizeDefined:Z

    if-eqz v0, :cond_7

    .line 81
    iget v0, p0, Lcom/google/ads/DoubleClickSpec;->mHeight:I

    .line 86
    :goto_6
    return v0

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    if-eqz v0, :cond_12

    .line 84
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v0}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->getHeight()I

    move-result v0

    goto :goto_6

    .line 86
    :cond_12
    sget-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->XL:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v0}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->getHeight()I

    move-result v0

    goto :goto_6
.end method

.method public getKeyname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeProfile()Lcom/google/ads/DoubleClickSpec$SizeProfile;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/ads/DoubleClickSpec;->mCustomSizeDefined:Z

    if-eqz v0, :cond_7

    .line 71
    iget v0, p0, Lcom/google/ads/DoubleClickSpec;->mWidth:I

    .line 76
    :goto_6
    return v0

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    if-eqz v0, :cond_12

    .line 74
    iget-object v0, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v0}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->getWidth()I

    move-result v0

    goto :goto_6

    .line 76
    :cond_12
    sget-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->XL:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v0}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->getWidth()I

    move-result v0

    goto :goto_6
.end method

.method public setColorBackground(Ljava/lang/String;)Lcom/google/ads/DoubleClickSpec;
    .registers 2
    .parameter "colorBackground"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mColorBackground:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setCustomSize(II)Lcom/google/ads/DoubleClickSpec;
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 145
    sget-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->S:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v0}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->getWidth()I

    move-result v0

    if-ge p1, v0, :cond_21

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_21
    sget-object v0, Lcom/google/ads/DoubleClickSpec$SizeProfile;->S:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    invoke-virtual {v0}, Lcom/google/ads/DoubleClickSpec$SizeProfile;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_42

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/DoubleClickSpec;->mCustomSizeDefined:Z

    .line 152
    iput p1, p0, Lcom/google/ads/DoubleClickSpec;->mWidth:I

    .line 153
    iput p2, p0, Lcom/google/ads/DoubleClickSpec;->mHeight:I

    .line 154
    return-object p0
.end method

.method public setKeyname(Ljava/lang/String;)Lcom/google/ads/DoubleClickSpec;
    .registers 2
    .parameter "keyname"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mKeyname:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setSizeProfile(Lcom/google/ads/DoubleClickSpec$SizeProfile;)Lcom/google/ads/DoubleClickSpec;
    .registers 2
    .parameter "sizeProfile"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/ads/DoubleClickSpec;->mSizeProfile:Lcom/google/ads/DoubleClickSpec$SizeProfile;

    .line 134
    return-object p0
.end method
