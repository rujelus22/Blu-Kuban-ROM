.class Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "CradleWallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 235
    invoke-virtual {p2}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 236
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 247
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 253
    if-nez p2, :cond_38

    .line 254
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030031

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 260
    .local v0, image:Landroid/widget/ImageView;
    :goto_f
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mThumbs:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 262
    .local v2, thumbRes:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mCustomer:Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser$ImageAdapter;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->mTwWallPaperResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleWallpaperChooser;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v0, v2, p1, v4}, Lcom/sec/android/app/clockpackage/deskclock/LauncherCustomer;->setThumbCustomerWallpaper(Landroid/widget/ImageView;IILandroid/content/res/Resources;)V

    .line 264
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 265
    .local v1, thumbDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3c

    .line 266
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 272
    :goto_37
    return-object v0

    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumbRes:I
    :cond_38
    move-object v0, p2

    .line 257
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0       #image:Landroid/widget/ImageView;
    goto :goto_f

    .line 268
    .restart local v1       #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #thumbRes:I
    :cond_3c
    const-string v3, "CradleTwWallpaperChooser"

    const-string v4, "Error decoding thumbnail resId=%d for wallpaper #%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method
