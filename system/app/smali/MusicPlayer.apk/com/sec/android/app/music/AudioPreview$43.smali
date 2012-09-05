.class Lcom/sec/android/app/music/AudioPreview$43;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 6185
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6190
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mShareList:Ljava/util/List;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$5700(Lcom/sec/android/app/music/AudioPreview;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 6193
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    :try_start_c
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6194
    .local v2, i:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 6195
    const-string v3, "android.intent.extra.STREAM"

    iget-object v4, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v4, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6196
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6198
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6200
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v4, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v5, "MENU_SHARE_TRACK_VIA:ACTION_SEND,%d,%s,%s"

    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget v7, v7, Lcom/sec/android/app/music/AudioPreview;->mLaunchMode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v7, v7, Lcom/sec/android/app/music/AudioPreview;->intentStreamMimeType:Ljava/lang/String;

    aput-object v7, v6, v3

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    if-eqz v3, :cond_78

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_62
    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6204
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/music/AudioPreview;->startActivity(Landroid/content/Intent;)V
    :try_end_70
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_70} :catch_7a

    .line 6209
    .end local v2           #i:Landroid/content/Intent;
    :goto_70
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->shareMusicMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 6210
    return-void

    .line 6200
    .restart local v2       #i:Landroid/content/Intent;
    :cond_78
    const/4 v3, 0x0

    goto :goto_62

    .line 6205
    .end local v2           #i:Landroid/content/Intent;
    :catch_7a
    move-exception v1

    .line 6206
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$43;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v3, v3, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v4, "MENU_SHARE_TRACK_VIA, ActivityNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method
