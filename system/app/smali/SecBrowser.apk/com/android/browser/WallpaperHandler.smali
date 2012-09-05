.class public Lcom/android/browser/WallpaperHandler;
.super Ljava/lang/Thread;
.source "WallpaperHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mUrl:Ljava/lang/String;

.field private mWallpaperProgress:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 57
    iput-object p1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private openStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, inputStream:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/browser/DataUri;->isDataUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 189
    new-instance v0, Lcom/android/browser/DataUri;

    iget-object v3, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/browser/DataUri;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, dataUri:Lcom/android/browser/DataUri;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1           #inputStream:Ljava/io/InputStream;
    invoke-virtual {v0}, Lcom/android/browser/DataUri;->getData()[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 195
    .end local v0           #dataUri:Lcom/android/browser/DataUri;
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :goto_19
    return-object v1

    .line 192
    :cond_1a
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 193
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_19
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 64
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 68
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/browser/WallpaperHandler;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_3f

    .line 73
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 74
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    iget-object v0, p0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 80
    invoke-virtual {p0}, Lcom/android/browser/WallpaperHandler;->start()V

    .line 82
    :cond_3f
    return v3
.end method

.method public run()V
    .registers 24

    .prologue
    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v18

    .line 88
    .local v18, wm:Landroid/app/WallpaperManager;
    invoke-virtual/range {v18 .. v18}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 89
    .local v13, oldWallpaper:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 97
    .local v9, inputstream:Ljava/io/InputStream;
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/WallpaperHandler;->openStream()Ljava/io/InputStream;

    move-result-object v9

    .line 98
    if-eqz v9, :cond_8f

    .line 99
    invoke-virtual {v9}, Ljava/io/InputStream;->markSupported()Z

    move-result v19

    if-nez v19, :cond_25

    .line 100
    new-instance v10, Ljava/io/BufferedInputStream;

    const/high16 v19, 0x2

    move/from16 v0, v19

    invoke-direct {v10, v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local v9           #inputstream:Ljava/io/InputStream;
    .local v10, inputstream:Ljava/io/InputStream;
    move-object v9, v10

    .line 102
    .end local v10           #inputstream:Ljava/io/InputStream;
    .restart local v9       #inputstream:Ljava/io/InputStream;
    :cond_25
    const/high16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->mark(I)V

    .line 103
    new-instance v14, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v14}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 104
    .local v14, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 107
    new-instance v19, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 109
    invoke-virtual/range {v18 .. v18}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v12

    .line 110
    .local v12, maxWidth:I
    invoke-virtual/range {v18 .. v18}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v11

    .line 112
    .local v11, maxHeight:I
    int-to-double v0, v12

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff4

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v12, v0

    .line 113
    int-to-double v0, v11

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x3ff4

    mul-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-int v11, v0

    .line 114
    iget v5, v14, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 115
    .local v5, bmWidth:I
    iget v4, v14, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 117
    .local v4, bmHeight:I
    const/4 v15, 0x1

    .line 118
    .local v15, scale:I
    :goto_68
    if-gt v5, v12, :cond_6c

    if-le v4, v11, :cond_73

    .line 119
    :cond_6c
    shl-int/lit8 v15, v15, 0x1

    .line 120
    shr-int/lit8 v5, v5, 0x1

    .line 121
    shr-int/lit8 v4, v4, 0x1

    goto :goto_68

    .line 123
    :cond_73
    const/16 v19, 0x0

    move/from16 v0, v19

    iput-boolean v0, v14, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 124
    iput v15, v14, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_7b
    .catchall {:try_start_f .. :try_end_7b} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_7b} :catch_f6

    .line 126
    :try_start_7b
    invoke-virtual {v9}, Ljava/io/InputStream;->reset()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_ed

    .line 133
    :goto_7e
    const/16 v19, 0x0

    :try_start_80
    move-object/from16 v0, v19

    invoke-static {v9, v0, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 135
    .local v16, scaledWallpaper:Landroid/graphics/Bitmap;
    if-eqz v16, :cond_8f

    .line 136
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_8f
    .catchall {:try_start_80 .. :try_end_8f} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_8f} :catch_f6

    .line 145
    .end local v4           #bmHeight:I
    .end local v5           #bmWidth:I
    .end local v11           #maxHeight:I
    .end local v12           #maxWidth:I
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #scale:I
    .end local v16           #scaledWallpaper:Landroid/graphics/Bitmap;
    :cond_8f
    if-eqz v9, :cond_94

    .line 147
    :try_start_91
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_11e

    .line 154
    :cond_94
    :goto_94
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d7

    .line 158
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    .line 159
    .local v17, width:I
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 160
    .local v8, height:I
    sget-object v19, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v8, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    .local v3, bm:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v6, canvas:Landroid/graphics/Canvas;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v13, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    invoke-virtual {v13, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    :try_start_ca
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cf} :catch_115

    .line 170
    :goto_cf
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/WallpaperHandler;->mCanceled:Z

    .line 173
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v8           #height:I
    .end local v17           #width:I
    :cond_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v19

    if-eqz v19, :cond_ec

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/WallpaperHandler;->mWallpaperProgress:Landroid/app/ProgressDialog;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/ProgressDialog;->dismiss()V

    .line 176
    :cond_ec
    return-void

    .line 127
    .restart local v4       #bmHeight:I
    .restart local v5       #bmWidth:I
    .restart local v11       #maxHeight:I
    .restart local v12       #maxWidth:I
    .restart local v14       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v15       #scale:I
    :catch_ed
    move-exception v7

    .line 130
    .local v7, e:Ljava/io/IOException;
    :try_start_ee
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/WallpaperHandler;->openStream()Ljava/io/InputStream;
    :try_end_f4
    .catchall {:try_start_ee .. :try_end_f4} :catchall_10e
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f4} :catch_f6

    move-result-object v9

    goto :goto_7e

    .line 139
    .end local v4           #bmHeight:I
    .end local v5           #bmWidth:I
    .end local v7           #e:Ljava/io/IOException;
    .end local v11           #maxHeight:I
    .end local v12           #maxWidth:I
    .end local v14           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v15           #scale:I
    :catch_f6
    move-exception v7

    .line 140
    .restart local v7       #e:Ljava/io/IOException;
    :try_start_f7
    const-string v19, "WallpaperHandler"

    const-string v20, "Unable to set new wallpaper"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/WallpaperHandler;->mCanceled:Z
    :try_end_106
    .catchall {:try_start_f7 .. :try_end_106} :catchall_10e

    .line 145
    if-eqz v9, :cond_94

    .line 147
    :try_start_108
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_10c

    goto :goto_94

    .line 148
    :catch_10c
    move-exception v19

    goto :goto_94

    .line 145
    .end local v7           #e:Ljava/io/IOException;
    :catchall_10e
    move-exception v19

    if-eqz v9, :cond_114

    .line 147
    :try_start_111
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_121

    .line 150
    :cond_114
    :goto_114
    throw v19

    .line 167
    .restart local v3       #bm:Landroid/graphics/Bitmap;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #height:I
    .restart local v17       #width:I
    :catch_115
    move-exception v7

    .line 168
    .restart local v7       #e:Ljava/io/IOException;
    const-string v19, "WallpaperHandler"

    const-string v20, "Unable to restore old wallpaper."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 148
    .end local v3           #bm:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #height:I
    .end local v17           #width:I
    :catch_11e
    move-exception v19

    goto/16 :goto_94

    :catch_121
    move-exception v20

    goto :goto_114
.end method
