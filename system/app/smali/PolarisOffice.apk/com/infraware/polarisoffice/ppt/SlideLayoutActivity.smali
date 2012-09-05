.class public Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;
.super Lcom/infraware/common/baseactivity/BaseActivity;
.source "SlideLayoutActivity.java"

# interfaces
.implements Lcom/infraware/office/evengine/EvListener$PptEditorListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;,
        Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$ThumbnailHolder;
    }
.end annotation


# instance fields
.field private mBgImage:Landroid/graphics/drawable/Drawable;

.field private mDouble_text:Landroid/widget/ImageButton;

.field private mEmpty_slide:Landroid/widget/ImageButton;

.field private mEvInterface:Lcom/infraware/office/evengine/EvInterface;

.field private mOnly_title:Landroid/widget/ImageButton;

.field private mTitle_double_text:Landroid/widget/ImageButton;

.field private mTitle_subtitle_slide:Landroid/widget/ImageButton;

.field private mTitle_text:Landroid/widget/ImageButton;

.field private mbNew:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/infraware/common/baseactivity/BaseActivity;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mEmpty_slide:Landroid/widget/ImageButton;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_subtitle_slide:Landroid/widget/ImageButton;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mOnly_title:Landroid/widget/ImageButton;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_text:Landroid/widget/ImageButton;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_double_text:Landroid/widget/ImageButton;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mDouble_text:Landroid/widget/ImageButton;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mbNew:Z

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mBgImage:Landroid/graphics/drawable/Drawable;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mBgImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->makeSlide(I)V

    return-void
.end method

.method private layoutSetting()V
    .registers 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_74

    .line 100
    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->setContentView(I)V

    .line 104
    :goto_13
    const v0, 0x7f0c01e0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mEmpty_slide:Landroid/widget/ImageButton;

    .line 105
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mEmpty_slide:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0c01e3

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_subtitle_slide:Landroid/widget/ImageButton;

    .line 107
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_subtitle_slide:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0c01e1

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mOnly_title:Landroid/widget/ImageButton;

    .line 109
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mOnly_title:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0c01e4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_text:Landroid/widget/ImageButton;

    .line 111
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_text:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0c01e2

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_double_text:Landroid/widget/ImageButton;

    .line 113
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mTitle_double_text:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0c01e5

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mDouble_text:Landroid/widget/ImageButton;

    .line 115
    iget-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mDouble_text:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void

    .line 102
    :cond_74
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->setContentView(I)V

    goto :goto_13
.end method

.method private makeSlide(I)V
    .registers 7
    .parameter "slideType"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 66
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mbNew:Z

    if-eqz v1, :cond_3a

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/polarisoffice/ppt/PPTMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    const-string v1, "INTCMD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    const-string v1, "key_filename"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "key_filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "new_ppt_template"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {p0, v4, v4}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->overridePendingTransition(II)V

    .line 81
    :goto_36
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->finish()V

    .line 82
    return-void

    .line 77
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3a
    iget-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    invoke-virtual {v1, v2, v4, p1}, Lcom/infraware/office/evengine/EvInterface;->ISlideAddMove(III)V

    .line 78
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 79
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_36
.end method


# virtual methods
.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnDrawBitmap()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    return-void
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "w"
    .parameter "h"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "bBitmapImage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 224
    if-eqz p3, :cond_4

    if-nez p4, :cond_6

    .line 225
    :cond_4
    const/4 v0, 0x0

    .line 229
    :goto_5
    return-object v0

    .line 226
    :cond_6
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 227
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mBgImage:Landroid/graphics/drawable/Drawable;

    goto :goto_5
.end method

.method public OnPptOnDrawSlidenote(I)V
    .registers 2
    .parameter "pageNum"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 245
    return-void
.end method

.method public OnPptSlideDelete()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 233
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 237
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    return-void
.end method

.method public OnPptSlideexInsert()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, tempType:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_1a

    .line 158
    const/4 v0, 0x1

    .line 161
    :goto_9
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->makeSlide(I)V

    .line 162
    return-void

    .line 140
    :pswitch_d
    const/4 v0, 0x1

    .line 141
    goto :goto_9

    .line 143
    :pswitch_f
    const/4 v0, 0x2

    .line 144
    goto :goto_9

    .line 146
    :pswitch_11
    const/4 v0, 0x3

    .line 147
    goto :goto_9

    .line 149
    :pswitch_13
    const/4 v0, 0x4

    .line 150
    goto :goto_9

    .line 152
    :pswitch_15
    const/4 v0, 0x5

    .line 153
    goto :goto_9

    .line 155
    :pswitch_17
    const/4 v0, 0x6

    .line 156
    goto :goto_9

    .line 137
    nop

    :pswitch_data_1a
    .packed-switch 0x7f0c01e0
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->layoutSetting()V

    .line 133
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/infraware/common/baseactivity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-static {}, Lcom/infraware/office/evengine/EvInterface;->getInterface()Lcom/infraware/office/evengine/EvInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mEvInterface:Lcom/infraware/office/evengine/EvInterface;

    .line 45
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "INTCMD"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_19

    .line 46
    iput-boolean v3, p0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->mbNew:Z

    .line 62
    :cond_19
    invoke-direct {p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;->layoutSetting()V

    .line 63
    return-void
.end method

.method public onLocaleChange(I)V
    .registers 2
    .parameter "nLocale"

    .prologue
    .line 252
    return-void
.end method

.method public settingLayout(Landroid/widget/GridView;Landroid/widget/GridView;)V
    .registers 4
    .parameter "visibleView"
    .parameter "hideView"

    .prologue
    .line 85
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 86
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    .line 89
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;

    invoke-direct {v0, p0, p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$MasterThumbnailAdapter;-><init>(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance v0, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity$1;-><init>(Lcom/infraware/polarisoffice/ppt/SlideLayoutActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    return-void
.end method
