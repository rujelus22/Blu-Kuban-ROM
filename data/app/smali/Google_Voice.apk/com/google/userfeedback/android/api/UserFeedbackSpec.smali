.class public Lcom/google/userfeedback/android/api/UserFeedbackSpec;
.super Ljava/lang/Object;
.source "UserFeedbackSpec.java"


# instance fields
.field private crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

.field private mAlternateScreenshot:Landroid/graphics/Bitmap;

.field private mCategoryTag:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mLogFilter:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"

    .prologue
    .line 81
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter "parentActivity"
    .parameter "currentView"
    .parameter "logFilter"
    .parameter "categoryTag"
    .parameter "screenshotEnabled"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    .line 117
    if-eqz p2, :cond_15

    .line 118
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 121
    :cond_15
    iput-object p3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    .line 126
    iput-boolean p5, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 127
    iput-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 128
    iput-boolean v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 129
    iput-boolean v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 130
    iput-object v3, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "parentActivity"
    .parameter "logFilter"
    .parameter "categoryTag"

    .prologue
    .line 96
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 97
    return-void
.end method

.method private getBytes(Ljava/lang/Object;)[B
    .registers 6
    .parameter "obj"

    .prologue
    .line 206
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 208
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 209
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 211
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 212
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 213
    .local v1, data:[B
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 217
    .end local v1           #data:[B
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :goto_1a
    return-object v1

    .line 215
    :catch_1b
    move-exception v2

    .line 216
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 217
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
    .line 182
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {p0, p3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getBytes(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    return-object p0
.end method

.method public addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;[B)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 6
    .parameter "name"
    .parameter "mimeType"
    .parameter "data"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    new-instance v1, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/userfeedback/android/api/ProductSpecificBinaryDataHolder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    return-object p0
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCategoryTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCategoryTag:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCrashData()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    return-object v0
.end method

.method public getCurrentScreenshot()Landroid/graphics/Bitmap;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->isScreenshotEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 152
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_e

    .line 153
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 163
    :cond_d
    :goto_d
    return-object v1

    .line 154
    :cond_e
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 156
    :try_start_12
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_d

    .line 157
    :catch_19
    move-exception v0

    .line 158
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
    .line 167
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mLogFilter:Ljava/lang/String;

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
    .line 223
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mProductBinaryData:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    return-object v0
.end method

.method public isScreenshotEnabled()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    return v0
.end method

.method public setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2
    .parameter "crashData"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->crashData:Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    .line 321
    return-object p0
.end method

.method public setScreenshot(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter "screenshot"

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 252
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mAlternateScreenshot:Landroid/graphics/Bitmap;

    .line 253
    return-void
.end method

.method public setScreenshotEnabled(Z)Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2
    .parameter "enabled"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mScreenshotEnabled:Z

    .line 234
    return-object p0
.end method

.method public setSelectedAccount(Ljava/lang/String;)V
    .registers 2
    .parameter "email"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mSelectedAccount:Ljava/lang/String;

    .line 262
    return-void
.end method

.method shouldShowPopupForAnonymousSubmission()Z
    .registers 2

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    return v0
.end method

.method shouldShowPopupForEmptyDescription()Z
    .registers 2

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    return v0
.end method

.method public showPopupOnAnonymousSubmission()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnAnonymousSubmission:Z

    .line 285
    return-object p0
.end method

.method public showPopupOnEmptyDescription()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->mShouldShowPopupOnEmptyDescription:Z

    .line 301
    return-object p0
.end method
