.class Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;
.super Landroid/os/AsyncTask;
.source "PhotoViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 7
    .parameter "params"

    .prologue
    .line 1170
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v3, v3, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v3, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPhotoImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1171
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_24

    .line 1172
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 1174
    .local v2, manager:Landroid/app/WallpaperManager;
    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1176
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 1181
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #manager:Landroid/app/WallpaperManager;
    :goto_1b
    return-object v3

    .line 1178
    :catch_1c
    move-exception v1

    .line 1179
    .local v1, e:Ljava/io/IOException;
    const-string v3, "PhotoViewFragment"

    const-string v4, "Exception setting wallpaper"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    .end local v1           #e:Ljava/io/IOException;
    :cond_24
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1b
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1147
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .parameter "result"

    .prologue
    .line 1150
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1153
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 1154
    const v3, 0x7f070117

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1158
    .local v2, toastText:Ljava/lang/String;
    :goto_13
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->val$activity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1160
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "req_pending"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 1162
    .local v0, frag:Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_30

    .line 1163
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    .line 1165
    :cond_30
    return-void

    .line 1156
    .end local v0           #frag:Landroid/support/v4/app/DialogFragment;
    .end local v2           #toastText:Ljava/lang/String;
    :cond_31
    const v3, 0x7f070116

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #toastText:Ljava/lang/String;
    goto :goto_13
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1147
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
