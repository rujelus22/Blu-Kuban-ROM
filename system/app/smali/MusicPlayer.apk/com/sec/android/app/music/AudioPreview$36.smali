.class Lcom/sec/android/app/music/AudioPreview$36;
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
    .line 4786
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4789
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "mPlayreadyPopupOkListener called!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4790
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4791
    .local v0, browserIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/sec/android/app/music/AudioPreview;->access$5100()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4792
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v2}, Lcom/sec/android/app/music/AudioPreview;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 4794
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "In Service specific error, launch Browser with url"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    :try_start_32
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 4797
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4800
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->mDrmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 4802
    :cond_4e
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$2300(Lcom/sec/android/app/music/AudioPreview;)V
    :try_end_53
    .catch Landroid/content/ActivityNotFoundException; {:try_start_32 .. :try_end_53} :catch_54

    .line 4809
    :goto_53
    return-void

    .line 4803
    :catch_54
    move-exception v1

    .line 4804
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->CLASSNAME:Ljava/lang/String;

    const-string v3, "could not find a suitable activity for launching error url"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 4807
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    :cond_5f
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$36;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #calls: Lcom/sec/android/app/music/AudioPreview;->finishMusicPlayer()V
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$2300(Lcom/sec/android/app/music/AudioPreview;)V

    goto :goto_53
.end method
