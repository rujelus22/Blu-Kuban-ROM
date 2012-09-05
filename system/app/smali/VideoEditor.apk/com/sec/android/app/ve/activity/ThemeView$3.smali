.class Lcom/sec/android/app/ve/activity/ThemeView$3;
.super Ljava/lang/Object;
.source "ThemeView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ThemeView;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ThemeView;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    #getter for: Lcom/sec/android/app/ve/activity/ThemeView;->themeGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/sec/android/app/ve/activity/ThemeView;->access$1(Lcom/sec/android/app/ve/activity/ThemeView;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v1

    sput v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Selected Theme is -->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 171
    sget v1, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    if-nez v1, :cond_7a

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    #getter for: Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ThemeView;->access$0(Lcom/sec/android/app/ve/activity/ThemeView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->resetThemeToBasic(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    const v2, 0x7f0b0108

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ThemeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 174
    .local v0, musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    if-eqz v0, :cond_54

    .line 176
    const-string v1, "Resetting Music in case of basic"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->setMusic(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 183
    .end local v0           #musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    :cond_54
    :goto_54
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    if-eqz v1, :cond_61

    .line 184
    invoke-static {}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->getInstance()Lcom/sec/android/app/ve/thread/PreviewFrameThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/thread/PreviewFrameThread;->refersh()V

    .line 186
    :cond_61
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    if-eqz v1, :cond_6e

    .line 187
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->refresh()V

    .line 188
    :cond_6e
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ThemeView;->setResult(I)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ThemeView;->finish()V

    .line 191
    return-void

    .line 180
    :cond_7a
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$3;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    #getter for: Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ThemeView;->access$0(Lcom/sec/android/app/ve/activity/ThemeView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    goto :goto_54
.end method
