.class public Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoreListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field public imgIconList:[I

.field public imgTextList:[I

.field private mInflater:Landroid/view/LayoutInflater;

.field public mbIsImage:Z

.field public videoIconList:[I

.field public videoTextList:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "bIsImage"

    .prologue
    const/4 v1, 0x2

    .line 324
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 317
    new-array v0, v1, [I

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->imgIconList:[I

    .line 318
    new-array v0, v1, [I

    fill-array-data v0, :array_32

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->videoIconList:[I

    .line 319
    new-array v0, v1, [I

    fill-array-data v0, :array_3a

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->imgTextList:[I

    .line 320
    new-array v0, v1, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->videoTextList:[I

    .line 325
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 326
    iput-boolean p2, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->mbIsImage:Z

    .line 327
    return-void

    .line 317
    nop

    :array_2a
    .array-data 0x4
        0x3t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 318
    :array_32
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
    .end array-data

    .line 319
    :array_3a
    .array-data 0x4
        0x3t 0x0t 0x4t 0x7ft
        0x19t 0x0t 0x4t 0x7ft
    .end array-data

    .line 320
    :array_42
    .array-data 0x4
        0x4t 0x0t 0x4t 0x7ft
        0x19t 0x0t 0x4t 0x7ft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->mbIsImage:Z

    if-eqz v0, :cond_8

    .line 332
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->imgTextList:[I

    array-length v0, v0

    .line 334
    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->videoTextList:[I

    array-length v0, v0

    goto :goto_7
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "arg0"

    .prologue
    .line 344
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 351
    if-nez p2, :cond_73

    .line 352
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, currentLanguage:Ljava/lang/String;
    const-string v2, "iw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "he"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "ar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 354
    :cond_23
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030007

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 356
    :goto_2c
    new-instance v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;-><init>()V

    .line 357
    .local v1, holder:Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;
    const v2, 0x7f060019

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 358
    const v2, 0x7f060018

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 359
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 363
    .end local v0           #currentLanguage:Ljava/lang/String;
    :goto_4a
    iget-boolean v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->mbIsImage:Z

    if-eqz v2, :cond_7a

    .line 364
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    if-eqz v2, :cond_5b

    .line 365
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->imgTextList:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 366
    :cond_5b
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_68

    .line 367
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->imgIconList:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    :cond_68
    :goto_68
    return-object p2

    .line 355
    .end local v1           #holder:Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;
    .restart local v0       #currentLanguage:Ljava/lang/String;
    :cond_69
    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_2c

    .line 361
    .end local v0           #currentLanguage:Ljava/lang/String;
    :cond_73
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;
    goto :goto_4a

    .line 369
    :cond_7a
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    if-eqz v2, :cond_87

    .line 370
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->videoTextList:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 371
    :cond_87
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_68

    .line 372
    iget-object v2, v1, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/arcsoft/quickview/QuickViewActivity$MoreListAdapter;->videoIconList:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_68
.end method
