.class Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;
.super Landroid/os/AsyncTask;
.source "LiveWallpaperListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LiveWallpaperEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;",
        "Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWallpaperPosition:I

.field final synthetic this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "context"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    .line 175
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    .line 177
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    .line 178
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, [Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->doInBackground([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Void;
    .registers 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, params:[Ljava/util/List;,"[Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 184
    .local v9, packageManager:Landroid/content/pm/PackageManager;
    const/16 v20, 0x0

    aget-object v8, p1, v20

    .line 186
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 187
    .local v12, res:Landroid/content/res/Resources;
    const v20, 0x7f020001

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 189
    .local v5, galleryIcon:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v11, Landroid/graphics/Paint;

    const/16 v20, 0x5

    move/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 190
    .local v11, paint:Landroid/graphics/Paint;
    sget-object v20, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 191
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 193
    .local v3, canvas:Landroid/graphics/Canvas;
    new-instance v20, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator$1;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;Landroid/content/pm/PackageManager;)V

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 206
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_4a
    :goto_4a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1a7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 207
    .local v13, resolveInfo:Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    .line 209
    .local v7, info:Landroid/app/WallpaperInfo;
    :try_start_57
    new-instance v7, Landroid/app/WallpaperInfo;

    .end local v7           #info:Landroid/app/WallpaperInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v7, v0, v13}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_64
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_57 .. :try_end_64} :catch_161
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_64} :catch_184

    .line 220
    .restart local v7       #info:Landroid/app/WallpaperInfo;
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 221
    .local v10, packageName:Ljava/lang/String;
    const-string v20, "com.google.android.apps.maps"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4a

    .line 225
    new-instance v19, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;-><init>(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)V

    .line 226
    .local v19, wallpaper:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.service.wallpaper.WallpaperService"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    .line 227
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    move-object/from16 v0, v19

    iput-object v7, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    .line 230
    invoke-virtual {v7, v9}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 231
    .local v14, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v14, :cond_148

    .line 232
    const v20, 0x7f060002

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 234
    .local v16, thumbWidth:I
    const v20, 0x7f060003

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 237
    .local v15, thumbHeight:I
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 240
    .local v17, thumbnail:Landroid/graphics/Bitmap;
    const/high16 v20, 0x7f05

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 242
    invoke-virtual {v3, v11}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 244
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-virtual {v5, v0, v1, v2, v15}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 245
    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 246
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 248
    invoke-virtual {v7, v9}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 250
    .local v18, title:Ljava/lang/String;
    const v20, 0x7f050001

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    const/high16 v20, 0x7f06

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x3fe0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x7f060001

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    sub-int v21, v15, v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v3, v0, v1, v2, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    .end local v14           #thumb:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    invoke-direct {v14, v12, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 260
    .end local v15           #thumbHeight:I
    .end local v16           #thumbWidth:I
    .end local v17           #thumbnail:Landroid/graphics/Bitmap;
    .end local v18           #title:Ljava/lang/String;
    .restart local v14       #thumb:Landroid/graphics/drawable/Drawable;
    :cond_148
    move-object/from16 v0, v19

    iput-object v14, v0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    .line 261
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v19, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_4a

    .line 210
    .end local v7           #info:Landroid/app/WallpaperInfo;
    .end local v10           #packageName:Ljava/lang/String;
    .end local v14           #thumb:Landroid/graphics/drawable/Drawable;
    .end local v19           #wallpaper:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :catch_161
    move-exception v4

    .line 211
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v20, "LiveWallpaperListAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Skipping wallpaper "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 213
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_184
    move-exception v4

    .line 214
    .local v4, e:Ljava/io/IOException;
    const-string v20, "LiveWallpaperListAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Skipping wallpaper "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4a

    .line 264
    .end local v4           #e:Ljava/io/IOException;
    .end local v13           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1a7
    const/16 v20, 0x0

    return-object v20
.end method

.method protected varargs onProgressUpdate([Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;)V
    .registers 8
    .parameter "infos"

    .prologue
    .line 269
    move-object v0, p1

    .local v0, arr$:[Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_3e

    aget-object v2, v0, v1

    .line 270
    .local v2, info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    iget-object v4, v2, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 271
    iget v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    iget-object v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;
    invoke-static {v5}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_34

    .line 272
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    invoke-interface {v4, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    :goto_26
    iget v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->mWallpaperPosition:I

    .line 277
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    invoke-virtual {v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->notifyDataSetChanged()V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 274
    :cond_34
    iget-object v4, p0, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->this$0:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;

    #getter for: Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->mWallpapers:Ljava/util/List;
    invoke-static {v4}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;->access$100(Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 279
    .end local v2           #info:Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;
    :cond_3e
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 169
    check-cast p1, [Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperEnumerator;->onProgressUpdate([Lcom/android/wallpaper/livepicker/LiveWallpaperListAdapter$LiveWallpaperInfo;)V

    return-void
.end method
