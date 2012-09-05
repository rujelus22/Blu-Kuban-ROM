.class final Lcom/google/android/apps/plus/phone/GoogleFeedback$1;
.super Ljava/lang/Object;
.source "GoogleFeedback.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/GoogleFeedback;->launch(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;->val$parentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 13
    .parameter "name"
    .parameter "service"

    .prologue
    .line 41
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4c

    move-result-object v4

    .line 42
    .local v4, parcel:Landroid/os/Parcel;
    const/4 v1, 0x1

    .line 43
    .local v1, cacheEnabled:Z
    const/4 v0, 0x0

    .line 44
    .local v0, cacheChanged:Z
    const/4 v5, 0x0

    .line 46
    .local v5, rootView:Landroid/view/View;
    :try_start_7
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, decorView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v1

    .line 51
    if-nez v1, :cond_20

    .line 52
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 53
    const/4 v0, 0x1

    .line 57
    :cond_20
    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 60
    .local v6, screenBitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_2a

    .line 61
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_2a
    .catchall {:try_start_7 .. :try_end_2a} :catchall_40
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_2a} :catch_5a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_66

    .line 67
    :cond_2a
    if-eqz v0, :cond_34

    if-nez v1, :cond_34

    if-eqz v5, :cond_34

    .line 68
    const/4 v7, 0x0

    :try_start_31
    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 72
    .end local v2           #decorView:Landroid/view/View;
    .end local v6           #screenBitmap:Landroid/graphics/Bitmap;
    :cond_34
    :goto_34
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {p2, v7, v4, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3a} :catch_4c

    .line 77
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;->val$parentActivity:Landroid/app/Activity;

    .end local v0           #cacheChanged:Z
    .end local v1           #cacheEnabled:Z
    .end local v4           #parcel:Landroid/os/Parcel;
    .end local v5           #rootView:Landroid/view/View;
    :goto_3c
    invoke-virtual {v7, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 79
    return-void

    .line 67
    .restart local v0       #cacheChanged:Z
    .restart local v1       #cacheEnabled:Z
    .restart local v4       #parcel:Landroid/os/Parcel;
    .restart local v5       #rootView:Landroid/view/View;
    :catchall_40
    move-exception v7

    if-eqz v0, :cond_4b

    if-nez v1, :cond_4b

    if-eqz v5, :cond_4b

    .line 68
    const/4 v8, 0x0

    :try_start_48
    invoke-virtual {v5, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 67
    :cond_4b
    throw v7
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_4c} :catch_4c

    .line 73
    .end local v0           #cacheChanged:Z
    .end local v1           #cacheEnabled:Z
    .end local v4           #parcel:Landroid/os/Parcel;
    .end local v5           #rootView:Landroid/view/View;
    :catch_4c
    move-exception v3

    .line 74
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4d
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_53

    .line 77
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;->val$parentActivity:Landroid/app/Activity;

    goto :goto_3c

    .end local v3           #ex:Landroid/os/RemoteException;
    :catchall_53
    move-exception v7

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/GoogleFeedback$1;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v8, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    throw v7

    .line 63
    .restart local v0       #cacheChanged:Z
    .restart local v1       #cacheEnabled:Z
    .restart local v4       #parcel:Landroid/os/Parcel;
    .restart local v5       #rootView:Landroid/view/View;
    :catch_5a
    move-exception v7

    .line 67
    if-eqz v0, :cond_34

    if-nez v1, :cond_34

    if-eqz v5, :cond_34

    .line 68
    const/4 v7, 0x0

    :try_start_62
    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    goto :goto_34

    .line 64
    :catch_66
    move-exception v7

    .line 67
    if-eqz v0, :cond_34

    if-nez v1, :cond_34

    if-eqz v5, :cond_34

    .line 68
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_71} :catch_4c

    goto :goto_34
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 83
    return-void
.end method
