.class Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$1;
.super Ljava/lang/Object;
.source "AddImagePickerView.java"

# interfaces
.implements Lcom/sec/android/app/ve/activity/ProjectEditActivity$ActivityEventsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView$1;->this$0:Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .registers 1

    .prologue
    .line 153
    return-void
.end method

.method public onActivityResumed()V
    .registers 2

    .prologue
    .line 142
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->access$0()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/addmedia/AddImagePickerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1f

    .line 143
    sget-object v0, Lcom/sec/android/app/ve/thread/ThumbnailCacheUtils;->mImageFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1f

    .line 146
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->makeNoImageVisible()V

    .line 149
    :cond_1f
    return-void
.end method
