.class public Lcom/android/browser/PrintSec;
.super Ljava/lang/Object;
.source "PrintSec.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/PrintSec$SaveImageThread;
    }
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field private mActivity:Landroid/app/Activity;

.field private mImagePath:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;

.field private mTabControl:Lcom/android/browser/TabControl;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/TabControl;)V
    .registers 4
    .parameter "browser"
    .parameter "tabControl"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Lcom/android/browser/PrintSec$1;

    invoke-direct {v0, p0}, Lcom/android/browser/PrintSec$1;-><init>(Lcom/android/browser/PrintSec;)V

    iput-object v0, p0, Lcom/android/browser/PrintSec;->handler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    .line 68
    iput-object p2, p0, Lcom/android/browser/PrintSec;->mTabControl:Lcom/android/browser/TabControl;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PrintSec;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/PrintSec;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/PrintSec;)Lcom/android/browser/PrintSec$SaveImageThread;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/PrintSec;->mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/PrintSec;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/browser/PrintSec;->print()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/PrintSec;Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/browser/PrintSec;->savePrintFile(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private deletePrintFile(Ljava/io/File;)V
    .registers 7
    .parameter "deleteFile"

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_d

    .line 246
    :cond_c
    :goto_c
    return-void

    .line 233
    :cond_d
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 235
    .local v0, childFile:[Ljava/io/File;
    array-length v3, v0

    if-gez v3, :cond_1f

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 237
    const-string v3, "PrintSec"

    const-string v4, "Delete folder"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 239
    :cond_1f
    array-length v2, v0

    .line 241
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_21
    if-ge v1, v2, :cond_c

    .line 242
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 243
    const-string v3, "PrintSec"

    const-string v4, "Delete File"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method private print()V
    .registers 9

    .prologue
    .line 206
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/android/browser/PrintSec;->mImagePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, dirToPrint:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_22

    .line 208
    const-string v5, "PrintSec"

    const-string v6, "requestPrint : captureScreen() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v5, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0c0173

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 226
    :goto_21
    return-void

    .line 213
    :cond_22
    const-string v2, "com.sec.android.app.mobileprint.PRINT"

    .line 214
    .local v2, intentPrint:Ljava/lang/String;
    const-string v4, "Browser"

    .line 216
    .local v4, title:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v3, intentPrintImage:Landroid/content/Intent;
    const-string v5, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 218
    const-string v5, "android.intent.extra.TITLE"

    const-string v6, "Browser"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v5, "android.intent.extra.SUBJECT"

    iget-object v6, p0, Lcom/android/browser/PrintSec;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    :try_start_4c
    iget-object v5, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_51
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4c .. :try_end_51} :catch_52

    goto :goto_21

    .line 223
    :catch_52
    move-exception v1

    .line 224
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "PrintSec"

    const-string v6, "requestPrint : There is no Print Activity"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private printPage()V
    .registers 24

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/PrintSec;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v20

    .line 125
    .local v20, webView:Landroid/webkit/WebView;
    if-eqz v20, :cond_44

    .line 126
    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v3

    .line 128
    .local v3, picture:Landroid/graphics/Picture;
    invoke-virtual {v3}, Landroid/graphics/Picture;->getWidth()I

    move-result v16

    .line 129
    .local v16, origWebPageWidth:I
    invoke-virtual {v3}, Landroid/graphics/Picture;->getHeight()I

    move-result v15

    .line 131
    .local v15, origWebPageHeight:I
    if-lez v16, :cond_1a

    if-gtz v15, :cond_45

    .line 132
    :cond_1a
    const-string v2, "PrintSec"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "printPage : Width or Height is too small - "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .end local v3           #picture:Landroid/graphics/Picture;
    .end local v15           #origWebPageHeight:I
    .end local v16           #origWebPageWidth:I
    :cond_44
    :goto_44
    return-void

    .line 136
    .restart local v3       #picture:Landroid/graphics/Picture;
    .restart local v15       #origWebPageHeight:I
    .restart local v16       #origWebPageWidth:I
    :cond_45
    const/16 v8, 0x6a4

    .line 137
    .local v8, MAX_WIDTH:I
    const/4 v10, 0x1

    .line 138
    .local v10, PRINT_IMAGE_TYPE_SCALED:I
    const/4 v9, 0x2

    .line 139
    .local v9, PRINT_IMAGE_TYPE_DEFAULT:I
    const/16 v14, 0x2fa

    .line 140
    .local v14, nTargetImageWidth:I
    const/16 v13, 0x442

    .line 142
    .local v13, nTargetImageHeight:I
    const/4 v11, 0x2

    .line 143
    .local v11, captureType:I
    const/4 v5, 0x0

    .line 144
    .local v5, totalHeight:I
    const/16 v17, 0x0

    .line 145
    .local v17, printablePageWidth:I
    const/4 v6, 0x0

    .line 147
    .local v6, printablePageHeight:I
    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getScale()F

    move-result v7

    .line 148
    .local v7, viewScale:F
    const-string v2, "PrintSec"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "viewScale "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/high16 v2, 0x3f80

    cmpl-float v2, v7, v2

    if-lez v2, :cond_98

    .line 151
    move/from16 v0, v16

    int-to-float v2, v0

    mul-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v19, v0

    .line 152
    .local v19, scaledWebViewWidth:I
    int-to-float v2, v15

    mul-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v18, v0

    .line 154
    .local v18, scaledWebViewHeight:I
    const/16 v2, 0x6a4

    move/from16 v0, v19

    if-gt v0, v2, :cond_98

    .line 155
    move/from16 v17, v19

    .line 156
    move/from16 v5, v18

    .line 157
    const/4 v11, 0x1

    .line 158
    const-string v2, "PrintSec"

    const-string v21, "PRINT_IMAGE_TYPE_SCALED is set"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .end local v18           #scaledWebViewHeight:I
    .end local v19           #scaledWebViewWidth:I
    :cond_98
    const/4 v2, 0x1

    if-eq v2, v11, :cond_af

    .line 163
    const/16 v2, 0x6a4

    move/from16 v0, v16

    if-gt v0, v2, :cond_136

    .line 164
    move/from16 v17, v16

    .line 165
    move v5, v15

    .line 166
    const/high16 v7, 0x3f80

    .line 167
    const-string v2, "PrintSec"

    const-string v21, "PRINT_IMAGE_TYPE_DEFAULT is set"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_af
    const-string v2, "PrintSec"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "printPage : Print Image Type = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/16 v2, 0x2fa

    move/from16 v0, v16

    if-le v0, v2, :cond_16a

    .line 179
    const v2, 0x3fb718dc

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v2, v2, v21

    float-to-int v6, v2

    .line 187
    :cond_dc
    :goto_dc
    const-string v2, "PrintSec"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "printPage : page size - Width:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Height:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v4, 0x0

    .line 191
    .local v4, bitmap:Landroid/graphics/Bitmap;
    :try_start_107
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    invoke-static {v0, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_10e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_107 .. :try_end_10e} :catch_174

    move-result-object v4

    .line 197
    new-instance v2, Lcom/android/browser/PrintSec$SaveImageThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/PrintSec;->handler:Landroid/os/Handler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v2, v0, v1}, Lcom/android/browser/PrintSec$SaveImageThread;-><init>(Lcom/android/browser/PrintSec;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/browser/PrintSec;->mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/PrintSec;->mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;

    invoke-virtual/range {v2 .. v7}, Lcom/android/browser/PrintSec$SaveImageThread;->setData(Landroid/graphics/Picture;Landroid/graphics/Bitmap;IIF)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    const/16 v21, 0x65

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_44

    .line 169
    .end local v4           #bitmap:Landroid/graphics/Bitmap;
    :cond_136
    const-string v2, "PrintSec"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "printPage : Page is too big to print - page width : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    const v21, 0x7f0c0173

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_44

    .line 182
    :cond_16a
    const/16 v6, 0x442

    .line 183
    const/4 v2, 0x1

    if-ne v11, v2, :cond_dc

    .line 184
    int-to-float v2, v6

    mul-float/2addr v2, v7

    float-to-int v6, v2

    goto/16 :goto_dc

    .line 192
    .restart local v4       #bitmap:Landroid/graphics/Bitmap;
    :catch_174
    move-exception v12

    .line 193
    .local v12, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "PrintSec"

    const-string v21, "printPage : The page is too big to print - OOM occurred"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_44
.end method

.method private printScreen()V
    .registers 9

    .prologue
    .line 102
    iget-object v5, p0, Lcom/android/browser/PrintSec;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 104
    .local v4, webView:Landroid/webkit/WebView;
    if-eqz v4, :cond_36

    .line 105
    invoke-virtual {v4}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    .line 106
    .local v3, nWidth:I
    invoke-virtual {v4}, Landroid/webkit/WebView;->getHeight()I

    move-result v2

    .line 108
    .local v2, nHeight:I
    if-lez v3, :cond_14

    if-gtz v2, :cond_3a

    .line 109
    :cond_14
    const-string v5, "PrintSec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureScreen : Width or Height is too small -"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v2           #nHeight:I
    .end local v3           #nWidth:I
    :cond_36
    :goto_36
    invoke-direct {p0}, Lcom/android/browser/PrintSec;->print()V

    .line 120
    return-void

    .line 111
    .restart local v2       #nHeight:I
    .restart local v3       #nWidth:I
    :cond_3a
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 113
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 115
    invoke-virtual {v4, v1}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 116
    invoke-direct {p0, v0}, Lcom/android/browser/PrintSec;->savePrintFile(Landroid/graphics/Bitmap;)V

    goto :goto_36
.end method

.method private savePrintFile(Landroid/graphics/Bitmap;)V
    .registers 10
    .parameter "bitmap"

    .prologue
    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "page_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, strImgName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 376
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1e
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/browser/PrintSec;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v1, file:Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_2a} :catch_43

    .line 378
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_2a
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 379
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 380
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_3b} :catch_51

    move-object v2, v3

    .line 386
    .end local v1           #file:Ljava/io/File;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_3c
    if-eqz v2, :cond_42

    .line 387
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4c

    .line 388
    const/4 v2, 0x0

    .line 393
    :cond_42
    :goto_42
    return-void

    .line 381
    :catch_43
    move-exception v0

    .line 382
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_44
    const-string v5, "PrintSec"

    const-string v6, "captureScreen : FAILED to save bitmap"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 390
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_4c
    move-exception v0

    .line 391
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_42

    .line 381
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_51
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_44
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/browser/PrintSec;->mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/android/browser/PrintSec;->mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/PrintSec$SaveImageThread;->setState(I)V

    .line 268
    :cond_a
    iget-object v0, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c0174

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    iget-object v0, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 270
    return-void
.end method

.method onCreateDialog()Landroid/app/ProgressDialog;
    .registers 5

    .prologue
    .line 249
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 250
    const-string v1, "PrintSec"

    const-string v2, "onCreateDialog : Called."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_10
    iget-object v1, p0, Lcom/android/browser/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 254
    iget-object v1, p0, Lcom/android/browser/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0c0175

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/android/browser/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/browser/PrintSec;->mSaveImageThread:Lcom/android/browser/PrintSec$SaveImageThread;

    invoke-virtual {v1}, Lcom/android/browser/PrintSec$SaveImageThread;->start()V
    :try_end_2e
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_2e} :catch_31

    .line 260
    :goto_2e
    iget-object v1, p0, Lcom/android/browser/PrintSec;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1

    .line 257
    :catch_31
    move-exception v0

    .line 258
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "PrintSec"

    const-string v2, "onCreateDialog : NullPointerException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method requestPrint()V
    .registers 3

    .prologue
    .line 72
    const-string v0, "PrintSec"

    const-string v1, "requestPrint : enter~!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/PrintSec;->requestPrint(I)V

    .line 74
    return-void
.end method

.method requestPrint(I)V
    .registers 6
    .parameter "nType"

    .prologue
    .line 77
    const-string v1, "PrintSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPrint : called with type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/android/browser/PrintSec;->mActivity:Landroid/app/Activity;

    const-string v2, "Print"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 81
    .local v0, dirToSave:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 82
    const-string v1, "PrintSec"

    const-string v2, "Failed to create print directory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_2e
    return-void

    .line 85
    :cond_2f
    invoke-direct {p0, v0}, Lcom/android/browser/PrintSec;->deletePrintFile(Ljava/io/File;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/PrintSec;->mImagePath:Ljava/lang/String;

    .line 88
    packed-switch p1, :pswitch_data_5c

    .line 96
    const-string v1, "PrintSec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNEXPECTED type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 90
    :pswitch_54
    invoke-direct {p0}, Lcom/android/browser/PrintSec;->printScreen()V

    goto :goto_2e

    .line 93
    :pswitch_58
    invoke-direct {p0}, Lcom/android/browser/PrintSec;->printPage()V

    goto :goto_2e

    .line 88
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_54
        :pswitch_58
    .end packed-switch
.end method
