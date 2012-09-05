.class public Lcom/sec/android/mimage/photoretouching/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# static fields
.field private static face:Landroid/graphics/Typeface;

.field private static stringKey:Ljava/lang/String;


# instance fields
.field private inst:Landroid/app/Instrumentation;

.field private mCaptureName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->face:Landroid/graphics/Typeface;

    .line 48
    const-string v0, "restoreKey"

    sput-object v0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->stringKey:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    new-instance v0, Landroid/app/Instrumentation;

    invoke-direct {v0}, Landroid/app/Instrumentation;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->inst:Landroid/app/Instrumentation;

    .line 45
    return-void
.end method


# virtual methods
.method Release()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 404
    const/high16 v4, 0x7f09

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 405
    .local v2, layout:Landroid/widget/LinearLayout;
    if-eqz v2, :cond_f

    .line 406
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    const/4 v2, 0x0

    .line 410
    :cond_f
    const v4, 0x7f090001

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 411
    .local v3, title:Landroid/widget/TextView;
    if-eqz v3, :cond_1e

    .line 412
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 413
    const/4 v3, 0x0

    .line 416
    :cond_1e
    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 417
    .local v1, bt_open_gallery:Landroid/widget/Button;
    if-eqz v1, :cond_2d

    .line 418
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    const/4 v1, 0x0

    .line 422
    :cond_2d
    const v4, 0x7f090003

    invoke-virtual {p0, v4}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 423
    .local v0, bt_open_camera:Landroid/widget/Button;
    if-eqz v0, :cond_3c

    .line 424
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    const/4 v0, 0x0

    .line 427
    :cond_3c
    return-void
.end method

.method public SetEnableBtn(Z)V
    .registers 5
    .parameter "benable"

    .prologue
    .line 152
    const v2, 0x7f090003

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    .local v0, bt_open_camera:Landroid/widget/Button;
    if-eqz v0, :cond_e

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    :cond_e
    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 157
    .local v1, bt_open_gallery:Landroid/widget/Button;
    if-eqz v1, :cond_1c

    .line 158
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    :cond_1c
    return-void
.end method

.method protected getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 9
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 362
    if-eqz p1, :cond_2c

    .line 364
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 365
    .local v1, cur:Landroid/database/Cursor;
    if-nez v1, :cond_10

    move-object v3, v4

    .line 384
    .end local v1           #cur:Landroid/database/Cursor;
    :goto_f
    return-object v3

    .line 368
    .restart local v1       #cur:Landroid/database/Cursor;
    :cond_10
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 369
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->finish()V

    move-object v3, v4

    .line 370
    goto :goto_f

    .line 373
    :cond_1b
    const-string v5, "_data"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 374
    .local v0, columnIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, path:Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_29

    goto :goto_f

    .line 382
    .end local v0           #columnIndex:I
    .end local v1           #cur:Landroid/database/Cursor;
    .end local v3           #path:Ljava/lang/String;
    :catch_29
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    move-object v3, v4

    .line 384
    goto :goto_f

    .end local v2           #e:Ljava/lang/Exception;
    :cond_2c
    move-object v3, v4

    .line 380
    goto :goto_f
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const v3, 0x7f06002b

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    const/4 v0, -0x1

    if-ne p2, v0, :cond_ae

    .line 290
    const v0, 0xb000

    if-ne p1, v0, :cond_4c

    .line 292
    if-eqz p3, :cond_41

    .line 293
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 294
    .local v9, str:Ljava/lang/String;
    if-eqz v9, :cond_39

    .line 296
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .local v8, lfile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_35

    .line 298
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 299
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->SetEnableBtn(Z)V

    .line 306
    .end local v8           #lfile:Ljava/io/File;
    :goto_31
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->SetEnableBtn(Z)V

    .line 340
    .end local v9           #str:Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 301
    .restart local v8       #lfile:Ljava/io/File;
    .restart local v9       #str:Ljava/lang/String;
    :cond_35
    invoke-virtual {p0, v9}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startMainActivity(Ljava/lang/String;)V

    goto :goto_31

    .line 305
    .end local v8           #lfile:Ljava/io/File;
    :cond_39
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_31

    .line 309
    .end local v9           #str:Ljava/lang/String;
    :cond_41
    invoke-static {p0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 310
    invoke-virtual {p0, v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->SetEnableBtn(Z)V

    goto :goto_34

    .line 313
    :cond_4c
    const v0, 0xb001

    if-ne p1, v0, :cond_34

    .line 315
    const/4 v4, 0x0

    .line 317
    .local v4, location:Landroid/location/Location;
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/common/Image;->getRotateDegree(Ljava/lang/String;)I

    move-result v5

    .line 318
    .local v5, orientation:I
    const/4 v10, 0x0

    .line 321
    .local v10, uri:Landroid/net/Uri;
    :try_start_72
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v6, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/common/Image;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;ILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 323
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_8e} :catch_b9

    .line 329
    :goto_8e
    const/4 v10, 0x0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startMainActivity(Ljava/lang/String;)V

    goto :goto_34

    .line 336
    .end local v4           #location:Landroid/location/Location;
    .end local v5           #orientation:I
    .end local v10           #uri:Landroid/net/Uri;
    :cond_ae
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->Release()V

    .line 337
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startView()V

    goto/16 :goto_34

    .line 325
    .restart local v4       #location:Landroid/location/Location;
    .restart local v5       #orientation:I
    .restart local v10       #uri:Landroid/net/Uri;
    :catch_b9
    move-exception v0

    goto :goto_8e
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->finish()V

    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 392
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f060002

    const v9, 0x7f060001

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-string v7, "[PhotoEditor_U1ICS_120206]"

    const-string v8, "Start Launcher"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->inst:Landroid/app/Instrumentation;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 63
    const v7, 0xa000

    sput v7, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->statusMain:I

    .line 65
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/sec/android/mimage/photoretouching/common/Constants;->DB_DIR:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v6, saveFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 68
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 69
    .local v4, list:[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2d
    array-length v7, v4

    if-lt v3, v7, :cond_72

    .line 74
    .end local v3           #i:I
    .end local v4           #list:[Ljava/io/File;
    :cond_30
    if-eqz p1, :cond_42

    .line 75
    sget-object v7, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->stringKey:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 76
    .local v5, map:Landroid/os/Bundle;
    if-eqz v5, :cond_42

    .line 77
    const-string v7, "filename"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    .line 81
    .end local v5           #map:Landroid/os/Bundle;
    :cond_42
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startView()V

    .line 83
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->GetExternalStorageMount()Z

    move-result v7

    if-eqz v7, :cond_7a

    .line 84
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 86
    const v8, 0x7f060036

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 87
    new-instance v8, Lcom/sec/android/mimage/photoretouching/LauncherActivity$1;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity$1;-><init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 93
    new-instance v8, Lcom/sec/android/mimage/photoretouching/LauncherActivity$2;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity$2;-><init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 102
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 137
    :cond_71
    :goto_71
    return-void

    .line 70
    .restart local v3       #i:I
    .restart local v4       #list:[Ljava/io/File;
    :cond_72
    aget-object v7, v4, v3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 109
    .end local v3           #i:I
    .end local v4           #list:[Ljava/io/File;
    :cond_7a
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MemoryStatus;->getAvailableExternalMemorySize()J

    move-result-wide v1

    .line 110
    .local v1, available_memsize:J
    const-wide/32 v7, 0xa00000

    cmp-long v7, v1, v7

    if-gez v7, :cond_71

    .line 111
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 113
    const v8, 0x7f060038

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 114
    new-instance v8, Lcom/sec/android/mimage/photoretouching/LauncherActivity$3;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity$3;-><init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 120
    new-instance v8, Lcom/sec/android/mimage/photoretouching/LauncherActivity$4;

    invoke-direct {v8, p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity$4;-><init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 129
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 135
    .local v0, alert:Landroid/app/AlertDialog;
    goto :goto_71
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->Release()V

    .line 398
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 399
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 400
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x13

    .line 431
    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 432
    .local v1, bt_open_gallery:Landroid/widget/Button;
    const v5, 0x7f090003

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 434
    .local v0, bt_open_camera:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 435
    .local v3, wm:Landroid/view/WindowManager;
    if-nez v3, :cond_1c

    .line 484
    :cond_1b
    :goto_1b
    return v4

    .line 436
    :cond_1c
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 437
    .local v2, orientation:I
    if-eq p1, v6, :cond_2c

    if-eq p1, v6, :cond_2c

    if-eq p1, v6, :cond_2c

    if-ne p1, v6, :cond_1b

    .line 438
    :cond_2c
    const/4 v4, 0x3

    if-ne v2, v4, :cond_58

    .line 439
    invoke-virtual {v1}, Landroid/widget/Button;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 440
    packed-switch p1, :pswitch_data_80

    .line 481
    :goto_38
    :pswitch_38
    const/4 v4, 0x1

    goto :goto_1b

    .line 441
    :pswitch_3a
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 444
    :pswitch_3e
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 447
    :cond_42
    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 448
    packed-switch p1, :pswitch_data_8c

    goto :goto_38

    .line 450
    :pswitch_4c
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 451
    :pswitch_50
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 456
    :cond_54
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 460
    :cond_58
    invoke-virtual {v1}, Landroid/widget/Button;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 461
    packed-switch p1, :pswitch_data_96

    goto :goto_38

    .line 463
    :pswitch_62
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 465
    :pswitch_66
    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 468
    :cond_6a
    invoke-virtual {v0}, Landroid/widget/Button;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 469
    packed-switch p1, :pswitch_data_a2

    goto :goto_38

    .line 470
    :pswitch_74
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 472
    :pswitch_78
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 477
    :cond_7c
    invoke-virtual {v1}, Landroid/widget/Button;->requestFocus()Z

    goto :goto_38

    .line 440
    :pswitch_data_80
    .packed-switch 0x13
        :pswitch_3a
        :pswitch_38
        :pswitch_38
        :pswitch_3e
    .end packed-switch

    .line 448
    :pswitch_data_8c
    .packed-switch 0x13
        :pswitch_38
        :pswitch_4c
        :pswitch_50
    .end packed-switch

    .line 461
    :pswitch_data_96
    .packed-switch 0x13
        :pswitch_38
        :pswitch_62
        :pswitch_38
        :pswitch_66
    .end packed-switch

    .line 469
    :pswitch_data_a2
    .packed-switch 0x13
        :pswitch_74
        :pswitch_38
        :pswitch_78
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 490
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 491
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->onBackPressed()V

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, map:Landroid/os/Bundle;
    const-string v1, "filename"

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->stringKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 146
    return-void
.end method

.method protected openFromCamera()V
    .registers 6

    .prologue
    .line 268
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/common/Image;->getSaveFileName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    .line 269
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->mCaptureName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v2, out:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/sec/android/mimage/photoretouching/common/Constants;->SAVE_DIR:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 272
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 274
    :cond_1f
    const-string v3, "[PhotoEditor_U1ICS_120206]"

    const-string v4, "load uri"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v3, "output"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    const-string v3, "android.intent.extra.videoQuality"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 279
    const v3, 0xb001

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 280
    return-void
.end method

.method protected openFromGallery()V
    .registers 4

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0xb000

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 262
    const/4 v0, 0x0

    .line 263
    return-void
.end method

.method protected startMainActivity(Ljava/lang/String;)V
    .registers 5
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    .line 344
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    const-string v1, "first_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->finish()V

    .line 354
    return-void
.end method

.method protected startView()V
    .registers 13

    .prologue
    const/16 v11, 0xf

    const/high16 v10, 0x4188

    const/high16 v9, 0x4170

    const/16 v8, 0x14

    .line 164
    const/high16 v6, 0x7f03

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->setContentView(I)V

    .line 166
    const v6, 0x7f090001

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 167
    .local v5, title:Landroid/widget/TextView;
    sget-object v6, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->face:Landroid/graphics/Typeface;

    if-nez v6, :cond_26

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/HelveticaNeueUltraLight_v1.20.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    sput-object v6, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->face:Landroid/graphics/Typeface;

    .line 169
    :cond_26
    sget-object v6, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->face:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    const/high16 v6, 0x7f06

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    .line 172
    .local v2, leng:I
    if-lt v2, v8, :cond_40

    .line 173
    const/16 v6, 0x19

    if-ge v2, v6, :cond_88

    .line 174
    const/high16 v6, 0x41c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 180
    :cond_40
    :goto_40
    const/4 v5, 0x0

    .line 182
    const v6, 0x7f090002

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 183
    .local v1, bt_open_gallery:Landroid/widget/Button;
    new-instance v6, Lcom/sec/android/mimage/photoretouching/LauncherActivity$5;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity$5;-><init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v6, 0x7f090003

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 210
    .local v0, bt_open_camera:Landroid/widget/Button;
    new-instance v6, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;

    invoke-direct {v6, p0}, Lcom/sec/android/mimage/photoretouching/LauncherActivity$6;-><init>(Lcom/sec/android/mimage/photoretouching/LauncherActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 238
    .local v3, leng1:I
    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 240
    .local v4, leng2:I
    if-gt v3, v11, :cond_77

    if-le v4, v11, :cond_81

    .line 241
    :cond_77
    if-gt v3, v8, :cond_98

    if-gt v4, v8, :cond_98

    .line 242
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 243
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 249
    :cond_81
    :goto_81
    const/4 v1, 0x0

    .line 250
    const/4 v0, 0x0

    .line 252
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/LauncherActivity;->SetEnableBtn(Z)V

    .line 253
    return-void

    .line 175
    .end local v0           #bt_open_camera:Landroid/widget/Button;
    .end local v1           #bt_open_gallery:Landroid/widget/Button;
    .end local v3           #leng1:I
    .end local v4           #leng2:I
    :cond_88
    const/16 v6, 0x1e

    if-ge v2, v6, :cond_92

    .line 176
    const/high16 v6, 0x41b8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_40

    .line 178
    :cond_92
    const/high16 v6, 0x41a0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_40

    .line 245
    .restart local v0       #bt_open_camera:Landroid/widget/Button;
    .restart local v1       #bt_open_gallery:Landroid/widget/Button;
    .restart local v3       #leng1:I
    .restart local v4       #leng2:I
    :cond_98
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 246
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setTextSize(F)V

    goto :goto_81
.end method
