.class Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$4;
.super Ljava/lang/Object;
.source "SelectVideoFolderList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$4;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 320
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$4;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 321
    .local v0, toast:Landroid/widget/Toast;
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList$4;->this$0:Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/activity/SelectVideoFolderList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f08007a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    return-void
.end method
