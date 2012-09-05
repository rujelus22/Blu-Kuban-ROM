.class Lcom/sec/android/app/music/TrackBrowserActivity$16;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 998
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCamera()V
    .registers 9

    .prologue
    const/16 v7, 0xa0

    const/4 v6, 0x1

    .line 1015
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1016
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v5, 0x7f0c0022

    invoke-virtual {v4, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1019
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1021
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1022
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.sec.android.app.camera"

    const-string v5, "com.sec.android.app.camera.Camera"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string v4, "add"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1024
    const-string v4, "noFaceDetection"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1025
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1026
    const-string v4, "aspectX"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1027
    const-string v4, "aspectY"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1028
    const-string v4, "outputX"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1029
    const-string v4, "outputY"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v4, "return-data"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1032
    :try_start_58
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/16 v5, 0x19

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_58 .. :try_end_5f} :catch_60

    .line 1037
    :goto_5f
    return-void

    .line 1033
    :catch_60
    move-exception v0

    .line 1034
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1035
    const-string v4, "CreatePlayList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick Error 1 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method public OnDelete()V
    .registers 4

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v2, 0x7f0c001b

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1041
    .local v0, imageView:Landroid/widget/ImageView;
    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1042
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #calls: Lcom/sec/android/app/music/TrackBrowserActivity;->clearPlayListBitmap()V
    invoke-static {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$900(Lcom/sec/android/app/music/TrackBrowserActivity;)V

    .line 1043
    return-void
.end method

.method public OnMyFiles()V
    .registers 6

    .prologue
    const/16 v4, 0xa0

    const/4 v3, 0x1

    .line 1000
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1001
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    const-string v1, "fromMusicPlayer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1004
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1005
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1006
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1009
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/16 v2, 0x19

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1010
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    const v11, 0x7f09010d

    const v10, 0x7f09010b

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1047
    const/4 v4, 0x0

    .line 1048
    .local v4, itemPhoto:I
    const/4 v3, 0x1

    .line 1049
    .local v3, itemImage:I
    const/4 v2, 0x2

    .line 1052
    .local v2, itemDelete:I
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mPlayListAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v6}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1000(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4f

    .line 1053
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/CharSequence;

    .line 1054
    .local v5, items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6, v10}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1055
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1056
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v7, 0x7f090041

    invoke-virtual {v6, v7}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 1063
    :goto_32
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1064
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f09010e

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1065
    new-instance v6, Lcom/sec/android/app/music/TrackBrowserActivity$16$1;

    invoke-direct {v6, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$16$1;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity$16;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1083
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1084
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1085
    return-void

    .line 1058
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #items:[Ljava/lang/CharSequence;
    :cond_4f
    new-array v5, v9, [Ljava/lang/CharSequence;

    .line 1059
    .restart local v5       #items:[Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6, v10}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    .line 1060
    iget-object v6, p0, Lcom/sec/android/app/music/TrackBrowserActivity$16;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/music/TrackBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    goto :goto_32
.end method
