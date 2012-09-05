.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndViewWrapper"
.end annotation


# instance fields
.field private mEndView:Landroid/view/View;

.field private mEndViewDescription:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .registers 12
    .parameter

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    :try_start_5
    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mDataLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2200(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_4e

    .line 1063
    :try_start_a
    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v7

    if-eqz v7, :cond_16

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2300(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/ViewGroup;

    move-result-object v7

    if-nez v7, :cond_18

    .line 1064
    :cond_16
    monitor-exit v8

    .line 1167
    :goto_17
    return-void

    .line 1067
    :cond_18
    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/apps/books/model/VolumeMetadata;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 1068
    .local v0, account:Landroid/accounts/Account;
    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1069
    .local v2, coverUri:Landroid/net/Uri;
    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2400(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 1070
    .local v5, is:Ljava/io/InputStream;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1071
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1072
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1073
    .local v1, cover:Landroid/graphics/Bitmap;
    monitor-exit v8
    :try_end_41
    .catchall {:try_start_a .. :try_end_41} :catchall_4b

    .line 1081
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #coverUri:Landroid/net/Uri;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_41
    :goto_41
    move-object v4, v1

    .line 1083
    .local v4, finalCover:Landroid/graphics/Bitmap;
    new-instance v7, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    invoke-direct {v7, p0, p1, v4}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/app/ReaderFragment;Landroid/graphics/Bitmap;)V

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->runOnUiThreadAndBlock(Ljava/lang/Runnable;)V
    invoke-static {v7}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 1073
    .end local v1           #cover:Landroid/graphics/Bitmap;
    .end local v4           #finalCover:Landroid/graphics/Bitmap;
    :catchall_4b
    move-exception v7

    :try_start_4c
    monitor-exit v8
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v7
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 1074
    :catch_4e
    move-exception v3

    .line 1075
    .local v3, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    .line 1076
    .restart local v1       #cover:Landroid/graphics/Bitmap;
    const-string v7, "ReaderFragment"

    const/4 v8, 0x6

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 1077
    const-string v7, "ReaderFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cover image not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method static synthetic access$2500(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndViewDescription:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1171
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->make(Ljava/lang/Object;)Lcom/google/android/apps/books/util/ConcurrentMutable;

    move-result-object v0

    .line 1172
    .local v0, result:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Landroid/view/MotionEvent;Lcom/google/android/apps/books/util/ConcurrentMutable;)V

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->runOnUiThreadAndBlock(Ljava/lang/Runnable;)V
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Ljava/lang/Runnable;)V

    .line 1180
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/ConcurrentMutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "reuseBitmap"

    .prologue
    .line 1185
    invoke-static {p1}, Lcom/google/android/apps/books/util/ConcurrentMutable;->make(Ljava/lang/Object;)Lcom/google/android/apps/books/util/ConcurrentMutable;

    move-result-object v0

    .line 1186
    .local v0, result:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->runOnUiThreadAndBlock(Ljava/lang/Runnable;)V
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$2100(Ljava/lang/Runnable;)V

    .line 1198
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/ConcurrentMutable;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndViewDescription:Ljava/lang/String;

    return-object v0
.end method

.method public isLastPage()Z
    .registers 2

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
