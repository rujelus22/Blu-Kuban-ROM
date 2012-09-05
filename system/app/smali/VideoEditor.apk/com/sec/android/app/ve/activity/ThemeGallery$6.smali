.class Lcom/sec/android/app/ve/activity/ThemeGallery$6;
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
    iput-object p1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$6;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$6;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v1}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$6;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-static {v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/pm/ProjectManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$6;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    iget-object v3, v3, Lcom/sec/android/app/ve/activity/ThemeGallery;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/pm/ProjectManager;->getTranscodeElement(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    .line 357
    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/pm/ProjectManager;->saveProject(Lcom/samsung/app/video/editor/external/TranscodeElement;)Z

    .line 361
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/ThemeGallery$6;->this$0:Lcom/sec/android/app/ve/activity/ThemeGallery;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/ThemeGallery;->finish()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 365
    :goto_1c
    return-void

    .line 362
    :catch_1d
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method
