.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$15;
.super Ljava/lang/Object;
.source "MediaInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$15;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 549
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$15;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 551
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_6
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.music"

    const-string v4, "com.samsung.music.Main"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_13} :catch_2b

    .line 556
    :goto_13
    sget-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasMusicHub:Z

    if-eqz v2, :cond_25

    sget-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasShop:Z

    if-nez v2, :cond_25

    .line 559
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$15;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$1000(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 562
    :cond_25
    iget-object v2, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$15;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->parsingRichInfoData()V
    invoke-static {v2}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$800(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    .line 565
    return-void

    .line 553
    :catch_2b
    move-exception v0

    .line 554
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/music/common/richinfo/RichInfoUtils;->sHasMusicHub:Z

    goto :goto_13
.end method
