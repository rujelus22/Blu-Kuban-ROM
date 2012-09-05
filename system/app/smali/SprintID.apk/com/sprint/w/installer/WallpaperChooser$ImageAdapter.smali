.class Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/WallpaperChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/sprint/w/installer/WallpaperChooser;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/WallpaperChooser;Lcom/sprint/w/installer/WallpaperChooser;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 164
    invoke-virtual {p2}, Lcom/sprint/w/installer/WallpaperChooser;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 165
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sprint/w/installer/WallpaperChooser;->access$000(Lcom/sprint/w/installer/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 176
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

    .line 182
    if-nez p2, :cond_30

    .line 183
    iget-object v3, p0, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030033

    invoke-virtual {v3, v4, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 190
    .local v1, image:Landroid/widget/ImageView;
    :goto_f
    iget-object v3, p0, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sprint/w/installer/WallpaperChooser;->access$000(Lcom/sprint/w/installer/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 194
    .local v2, thumbDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_34

    .line 195
    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 199
    :goto_2f
    return-object v1

    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #image:Landroid/widget/ImageView;
    .end local v2           #thumbDrawable:Landroid/graphics/drawable/Drawable;
    :cond_30
    move-object v1, p2

    .line 185
    check-cast v1, Landroid/widget/ImageView;

    .restart local v1       #image:Landroid/widget/ImageView;
    goto :goto_f

    .line 197
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v2       #thumbDrawable:Landroid/graphics/drawable/Drawable;
    :cond_34
    iget-object v3, p0, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->log:Lcom/sprint/id/logger/Logger;
    invoke-static {v3}, Lcom/sprint/w/installer/WallpaperChooser;->access$100(Lcom/sprint/w/installer/WallpaperChooser;)Lcom/sprint/id/logger/Logger;

    move-result-object v3

    const-string v4, "Error decoding thumbnail uri=%s for wallpaper #%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sprint/w/installer/WallpaperChooser$ImageAdapter;->this$0:Lcom/sprint/w/installer/WallpaperChooser;

    #getter for: Lcom/sprint/w/installer/WallpaperChooser;->mThumbUris:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/sprint/w/installer/WallpaperChooser;->access$000(Lcom/sprint/w/installer/WallpaperChooser;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/id/logger/Logger;->e(Ljava/lang/String;)V

    goto :goto_2f
.end method
