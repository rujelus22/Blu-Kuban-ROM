.class public Lcom/google/userfeedback/android/api/UserFeedbackSpec;
.super Ljava/lang/Object;
.source "UserFeedbackSpec.java"


# instance fields
.field private mAlternateScreenshot:Landroid/graphics/Bitmap;

.field private mBucket:Ljava/lang/String;

.field private mCategoryTag:Ljava/lang/String;

.field private mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

.field private mCurrentView:Landroid/view/View;

.field private mLogFilter:Ljava/lang/String;

.field private mLogs:Ljava/lang/String;

.field private mParentActivity:Landroid/app/Activity;

.field private mProductBinaryData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotEnabled:Z

.field private mSelectedAccount:Ljava/lang/String;

.field private mShouldShowPopupOnAnonymousSubmission:Z

.field private mShouldShowPopupOnEmptyDescription:Z

.field private mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"

    .prologue
    .line 84
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"
    .parameter "bucket"

    .prologue
    .line 117
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"
    .parameter "bucket"
    .parameter "screenshotEnabled"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    .line 138
    if-eqz p2, :cond_15

    .line 139
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 142
    :cond_15
    iput-object p3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    .line 147
    iput-boolean p6, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 148
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 149
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 150
    iput-boolean v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 151
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 152
    iput-object p5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mBucket:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    .line 154
    iput-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "parentActivity"
    .parameter "logFilter"
    .parameter "categoryTag"

    .prologue
    const/4 v2, 0x0

    .line 99
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 100
    return-void
.end method

.method private getBytes(Ljava/lang/Object;)[B
    .registers 6
    .parameter "obj"

    .prologue
    .line 230
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 232
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 233
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 235
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 236
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 237
    .local v1, data:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 241
    .end local v1           #data:[B
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :goto_1a
    return-object v1

    .line 239
    :catch_1b
    move-exception v2

    .line 240
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 241
    const/4 v1, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 7
    .parameter "name"
    .parameter "mimeType"
    .parameter "data"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {p0, p3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getBytes(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-object p0
.end method

.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 6
    .parameter "name"
    .parameter "mimeType"
    .parameter "data"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getBucket()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mBucket:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    return-object v0
.end method

.method public getCurrentScreenshot()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 176
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    .line 177
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 187
    :cond_d
    :goto_d
    return-object v1

    .line 178
    :cond_e
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 180
    :try_start_12
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_d

    .line 181
    :catch_19
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GFEEDBACK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error generating screenshot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public getLogFilter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getLogs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    return-object v0
.end method

.method getProductSpecificBinaryData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getUiConfigurationOptions()Lcom/google/userfeedback/android/api/UiConfigurationOptions;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    return-object v0
.end method

.method public isScreenshotEnabled()Z
    .registers 2

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    return v0
.end method

.method public setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2
    .parameter "crashData"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCrashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 345
    return-object p0
.end method

.method public setLogs(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2
    .parameter "logs"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogs:Ljava/lang/String;

    .line 367
    return-object p0
.end method

.method public setScreenshot(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "screenshot"

    .prologue
    .line 275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 276
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 277
    return-void
.end method

.method public setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2
    .parameter "enabled"

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 258
    return-object p0
.end method

.method public setSelectedAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setUiConfigurationOptions(Lcom/google/userfeedback/android/api/UiConfigurationOptions;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2
    .parameter "config"

    .prologue
    .line 357
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mUiConfigurationOptions:Lcom/google/userfeedback/android/api/UiConfigurationOptions;

    .line 358
    return-object p0
.end method

.method shouldShowPopupForAnonymousSubmission()Z
    .registers 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    return v0
.end method

.method shouldShowPopupForEmptyDescription()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    return v0
.end method

.method public showPopupOnAnonymousSubmission()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 309
    return-object p0
.end method

.method public showPopupOnEmptyDescription()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 325
    return-object p0
.end method
