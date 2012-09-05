.class Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThemeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/activity/ThemeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemePreviewAdapter"
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private themeDescriptions:[Ljava/lang/String;

.field private themeTitle:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/ve/activity/ThemeView;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "c"

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    .line 226
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 222
    invoke-virtual {p1}, Lcom/sec/android/app/ve/activity/ThemeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->themeDescriptions:[Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Lcom/sec/android/app/ve/activity/ThemeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->themeTitle:[Ljava/lang/String;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 227
    iput-object p2, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->mContext:Landroid/content/Context;

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getThemeImage(I)I
    .registers 3
    .parameter "pos"

    .prologue
    .line 294
    packed-switch p1, :pswitch_data_22

    .line 320
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 297
    :pswitch_5
    const v0, 0x7f0200e9

    goto :goto_4

    .line 300
    :pswitch_9
    const v0, 0x7f02003e

    goto :goto_4

    .line 303
    :pswitch_d
    const v0, 0x7f02008b

    goto :goto_4

    .line 306
    :pswitch_11
    const v0, 0x7f0200ce

    goto :goto_4

    .line 309
    :pswitch_15
    const v0, 0x7f0200ef

    goto :goto_4

    .line 312
    :pswitch_19
    const v0, 0x7f02013c

    goto :goto_4

    .line 315
    :pswitch_1d
    const v0, 0x7f02018d

    goto :goto_4

    .line 294
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
        :pswitch_15
        :pswitch_19
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->themeTitle:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 243
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 249
    if-nez p2, :cond_c

    .line 250
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030037

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 255
    :cond_c
    :try_start_c
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->themeTitle:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 256
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->themeDescriptions:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {p2, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 258
    const v6, 0x7f0b00f4

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 259
    .local v3, themeName:Landroid/widget/TextView;
    const v6, 0x7f0b00f2

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 260
    .local v5, themeView:Landroid/widget/ImageView;
    const v6, 0x7f0b00f3

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 262
    .local v4, themeReflView:Landroid/widget/ImageView;
    if-eqz v3, :cond_3e

    .line 263
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->themeTitle:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_3e
    iget-object v6, p0, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/activity/ThemeView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/ThemeView$ThemePreviewAdapter;->getThemeImage(I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4f} :catch_7c

    move-result-object v2

    .line 267
    .local v2, themeBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_63

    .line 268
    if-eqz v5, :cond_57

    .line 270
    :try_start_54
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_57
    .catch Ljava/lang/OutOfMemoryError; {:try_start_54 .. :try_end_57} :catch_64
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_7c

    .line 276
    :cond_57
    :goto_57
    if-eqz v4, :cond_63

    .line 278
    const/16 v6, 0x40

    const/4 v7, 0x0

    :try_start_5c
    invoke-static {v2, v6, v7}, Lcom/sec/android/app/ve/util/Utils;->getReflectionImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_63
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5c .. :try_end_63} :catch_83
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_63} :catch_7c

    .line 288
    .end local v2           #themeBitmap:Landroid/graphics/Bitmap;
    .end local v3           #themeName:Landroid/widget/TextView;
    .end local v4           #themeReflView:Landroid/widget/ImageView;
    .end local v5           #themeView:Landroid/widget/ImageView;
    :cond_63
    :goto_63
    return-object p2

    .line 271
    .restart local v2       #themeBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #themeName:Landroid/widget/TextView;
    .restart local v4       #themeReflView:Landroid/widget/ImageView;
    .restart local v5       #themeView:Landroid/widget/ImageView;
    :catch_64
    move-exception v1

    .line 272
    .local v1, err:Ljava/lang/OutOfMemoryError;
    :try_start_65
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignore --> ThemePreviewAdapter OutOfMemoryError:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_7b} :catch_7c

    goto :goto_57

    .line 285
    .end local v1           #err:Ljava/lang/OutOfMemoryError;
    .end local v2           #themeBitmap:Landroid/graphics/Bitmap;
    .end local v3           #themeName:Landroid/widget/TextView;
    .end local v4           #themeReflView:Landroid/widget/ImageView;
    .end local v5           #themeView:Landroid/widget/ImageView;
    :catch_7c
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Exception in ThemePreviewAdapter getView"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_63

    .line 279
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #themeBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #themeName:Landroid/widget/TextView;
    .restart local v4       #themeReflView:Landroid/widget/ImageView;
    .restart local v5       #themeView:Landroid/widget/ImageView;
    :catch_83
    move-exception v1

    .line 280
    .restart local v1       #err:Ljava/lang/OutOfMemoryError;
    :try_start_84
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ignore --> ThemePreviewAdapter OutOfMemoryError:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9a} :catch_7c

    goto :goto_63
.end method
