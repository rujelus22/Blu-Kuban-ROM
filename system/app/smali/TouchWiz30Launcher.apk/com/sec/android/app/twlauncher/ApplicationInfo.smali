.class Lcom/sec/android/app/twlauncher/ApplicationInfo;
.super Lcom/sec/android/app/twlauncher/ItemInfo;
.source "ApplicationInfo.java"


# instance fields
.field private badgeCount:I

.field bg:Landroid/graphics/drawable/Drawable;

.field private cellNum:I

.field private componentName:Ljava/lang/String;

.field private customIcon:Z

.field private editCellNum:I

.field private editPageNum:I

.field private filtered:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field private intent:Landroid/content/Intent;

.field protected isDirty:Z

.field private mCreateTime:J

.field private mDefaultSort:I

.field private mEditParentId:J

.field mIsAppStoredInExternalStorage:Z

.field mIsAppStoredInExternalStorageWhileUnmounted:Z

.field private mParentId:J

.field private pageNum:I

.field private systemApp:Z

.field private title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 276
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 115
    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    .line 130
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 145
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 160
    iput-wide v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mEditParentId:J

    .line 175
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 190
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 215
    iput v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    .line 246
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 272
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 274
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    .line 277
    iput v3, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 7
    .parameter "info"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 308
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;-><init>()V

    .line 115
    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    .line 130
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 145
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 160
    iput-wide v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mEditParentId:J

    .line 175
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 190
    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 215
    iput v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    .line 223
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 272
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 274
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    .line 309
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 310
    return-void
.end method


# virtual methods
.method public assignEditToNormal()V
    .registers 2

    .prologue
    .line 375
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 376
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 379
    return-void
.end method

.method public assignFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;ZZ)V
    .registers 6
    .parameter "aInfo"
    .parameter "aNormal"
    .parameter "aEdit"

    .prologue
    .line 233
    if-eqz p2, :cond_d

    .line 234
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getPageNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getCellNum()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setNormalModeInfo(II)V

    .line 236
    :cond_d
    if-eqz p3, :cond_1a

    .line 237
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditPageNum()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getEditCellNum()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditModeInfo(II)V

    .line 239
    :cond_1a
    return-void
.end method

.method public assignNormalToEdit()V
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 364
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 365
    return-void
.end method

.method public copyFrom(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->copyFrom(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 282
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 283
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_18

    .line 284
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 286
    :cond_18
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_33

    .line 287
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 291
    :cond_33
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 292
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    .line 293
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    .line 294
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    .line 295
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 296
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 297
    iget-object v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->bg:Landroid/graphics/drawable/Drawable;

    .line 298
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 299
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 300
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    .line 301
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    iput-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    .line 302
    iget v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 303
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorage:Z

    .line 304
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mIsAppStoredInExternalStorageWhileUnmounted:Z

    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 306
    return-void
.end method

.method public getBadgeCount()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    return v0
.end method

.method public getCellNum()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    return v0
.end method

.method public getComponentName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .registers 3

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    return-wide v0
.end method

.method public getDefaultSort()I
    .registers 2

    .prologue
    .line 217
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    return v0
.end method

.method public getEditCellNum()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    return v0
.end method

.method public getEditPageNum()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    return v0
.end method

.method public getEditParentId()J
    .registers 3

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mEditParentId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPageNum()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    return v0
.end method

.method public getParentId()J
    .registers 3

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isClean()Z
    .registers 2

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    return v0
.end method

.method public isFiltered()Z
    .registers 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    return v0
.end method

.method public isSystemApp()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    return v0
.end method

.method public markAsClean()V
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 250
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 8
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 337
    invoke-super {p0, p1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 339
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, titleStr:Ljava/lang/String;
    :goto_f
    const-string v4, "title"

    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_3f

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, uri:Ljava/lang/String;
    :goto_1e
    const-string v3, "intent"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    if-eqz v3, :cond_41

    .line 346
    const-string v3, "iconType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 349
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 360
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_3c
    :goto_3c
    return-void

    .end local v1           #titleStr:Ljava/lang/String;
    .end local v2           #uri:Ljava/lang/String;
    :cond_3d
    move-object v1, v3

    .line 339
    goto :goto_f

    .restart local v1       #titleStr:Ljava/lang/String;
    :cond_3f
    move-object v2, v3

    .line 342
    goto :goto_1e

    .line 351
    .restart local v2       #uri:Ljava/lang/String;
    :cond_41
    const-string v3, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v3, :cond_3c

    .line 354
    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method final setActivity(Landroid/content/ComponentName;I)V
    .registers 5
    .parameter "className"
    .parameter "launchFlags"

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Ljava/lang/String;

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 329
    return-void
.end method

.method public setBadgeCount(I)V
    .registers 2
    .parameter "aBadgeCount"

    .prologue
    .line 263
    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 264
    return-void
.end method

.method public setCellNum(I)V
    .registers 2
    .parameter "aCellNum"

    .prologue
    .line 157
    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 158
    return-void
.end method

.method public setCreateTime(J)V
    .registers 7
    .parameter "createTime"

    .prologue
    .line 228
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 229
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mCreateTime:J

    .line 230
    return-void

    .line 228
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setDefaultSort(I)V
    .registers 2
    .parameter "defaultSort"

    .prologue
    .line 220
    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mDefaultSort:I

    .line 221
    return-void
.end method

.method public setEditCellNum(I)V
    .registers 4
    .parameter "aEditCellNum"

    .prologue
    .line 199
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    if-eq v0, p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 202
    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 203
    return-void

    .line 199
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setEditModeInfo(II)V
    .registers 3
    .parameter "aPageNum"
    .parameter "aCellNum"

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditPageNum(I)V

    .line 207
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setEditCellNum(I)V

    .line 208
    return-void
.end method

.method public setEditPageNum(I)V
    .registers 4
    .parameter "aEditPageNum"

    .prologue
    .line 184
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    iget v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    if-eq v0, p1, :cond_d

    const/4 v0, 0x1

    :goto_7
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 187
    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 188
    return-void

    .line 184
    :cond_d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setFiltered(Z)V
    .registers 2
    .parameter "aFiltered"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->filtered:Z

    .line 80
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "aIntent"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public setIsCustomIcon(Z)V
    .registers 2
    .parameter "aIsCustIcon"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->customIcon:Z

    .line 90
    return-void
.end method

.method public setNormalModeInfo(II)V
    .registers 3
    .parameter "aPageNum"
    .parameter "aCellNum"

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setPageNum(I)V

    .line 212
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setCellNum(I)V

    .line 213
    return-void
.end method

.method public setPageNum(I)V
    .registers 2
    .parameter "aPageNum"

    .prologue
    .line 142
    iput p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 143
    return-void
.end method

.method public setParentId(J)V
    .registers 3
    .parameter "parentId"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mParentId:J

    .line 128
    return-void
.end method

.method public setSystemApp(Z)V
    .registers 2
    .parameter "aSystemApp"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->systemApp:Z

    .line 113
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "aTitle"

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isDirty:Z

    .line 43
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 44
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 394
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, titleStr:Ljava/lang/String;
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->mEditParentId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/sec/android/app/twlauncher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 394
    .end local v0           #titleStr:Ljava/lang/String;
    :cond_5c
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public updateBadgeCount()I
    .registers 4

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 383
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getModel()Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getApplicationInfo(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 385
    .local v0, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    if-eqz v0, :cond_29

    .line 386
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->setBadgeCount(I)V

    .line 389
    .end local v0           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->getBadgeCount()I

    move-result v1

    return v1
.end method
