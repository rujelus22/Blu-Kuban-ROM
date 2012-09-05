.class Lcom/google/android/music/EmptyViewController$2;
.super Landroid/content/BroadcastReceiver;
.source "EmptyViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/EmptyViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/EmptyViewController;


# direct methods
.method constructor <init>(Lcom/google/android/music/EmptyViewController;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x1

    .line 219
    .local v1, importActive:Z
    const-string v2, "com.google.android.music.IMPORT_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 220
    const/4 v1, 0x0

    .line 222
    :cond_e
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mImportActive:Z
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$100(Lcom/google/android/music/EmptyViewController;)Z

    move-result v2

    if-eq v1, v2, :cond_20

    .line 223
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #setter for: Lcom/google/android/music/EmptyViewController;->mImportActive:Z
    invoke-static {v2, v1}, Lcom/google/android/music/EmptyViewController;->access$102(Lcom/google/android/music/EmptyViewController;Z)Z

    .line 224
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #calls: Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$200(Lcom/google/android/music/EmptyViewController;)V

    .line 226
    :cond_20
    return-void
.end method
