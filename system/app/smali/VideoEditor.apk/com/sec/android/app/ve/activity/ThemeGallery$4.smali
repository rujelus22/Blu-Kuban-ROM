.class Lcom/sec/android/app/ve/activity/ThemeGallery$4;
.super Ljava/lang/Object;
.source "ThemeGallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/ve/activity/ThemeGallery;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;


# direct methods
.method constructor <init>(Lcom/sec/android/app/ve/activity/ThemeGallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$4;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$4;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$4;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v2, v2, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/ve/thread/ThemeCacheUtils;->resetThemeToBasic(Lcom/samsung/app/video/editor/external/TranscodeElement;)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$4;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    const v2, 0x7f0b0108

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/activity/ThemeGallery;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;

    .line 327
    .local v0, musicBarGroup:Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;
    if-eqz v0, :cond_2e

    .line 329
    const-string v1, "Resettign Music in case of basic"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0, v3, v3}, Lcom/sec/android/app/ve/view/timeline/MusicBarViewGroup;->setMusic(Ljava/lang/String;Lcom/samsung/app/video/editor/external/Element;)V

    .line 333
    :cond_2e
    return-void
.end method
