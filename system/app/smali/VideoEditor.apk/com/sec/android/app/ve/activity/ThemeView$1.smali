.class Lcom/sec/android/app/ve/activity/ThemeView$1;
.super Ljava/lang/Object;
.source "ThemeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ThemeView;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    #getter for: Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ThemeView;->access$0(Lcom/sec/android/app/ve/activity/ThemeView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    .line 77
    .local v0, lTrans:Lcom/samsung/app/video/editor/external/TranscodeElement;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v2

    if-lez v2, :cond_21

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ThemeView;->showDialog(I)V

    .line 99
    :goto_20
    return-void

    .line 81
    :cond_21
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    #getter for: Lcom/sec/android/app/ve/activity/ThemeView;->themeGallery:Landroid/widget/Gallery;
    invoke-static {v2}, Lcom/sec/android/app/ve/activity/ThemeView;->access$1(Lcom/sec/android/app/ve/activity/ThemeView;)Landroid/widget/Gallery;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Gallery;->getSelectedItemPosition()I

    move-result v2

    sput v2, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Selected theme:::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 84
    sget v2, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->mSelectedTheme:I

    if-nez v2, :cond_79

    .line 85
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    #getter for: Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ThemeView;->access$0(Lcom/sec/android/app/ve/activity/ThemeView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->resetThemeToBasic(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 86
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    const v3, 0x7f0b0108

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ThemeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 87
    .local v1, musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    if-eqz v1, :cond_6d

    .line 89
    const-string v2, "Resetting Music in case of basic"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->setMusic(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 95
    .end local v1           #musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    :cond_6d
    :goto_6d
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/activity/ThemeView;->setResult(I)V

    .line 96
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ThemeView;->finish()V

    goto :goto_20

    .line 93
    :cond_79
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeView$1;->this$0:Lcom/sec/android/app/ve/activity/ThemeView;

    #getter for: Lcom/sec/android/app/ve/activity/ThemeView;->filename:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/ve/activity/ThemeView;->access$0(Lcom/sec/android/app/ve/activity/ThemeView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->applyThemeToTransCodeElem(Lcom/samsung/app/video/editor/external/TranscodeElement;Z)V

    goto :goto_6d
.end method
