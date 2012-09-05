.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showShareAppList(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

.field private final synthetic val$activities:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Ljava/util/List;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->val$activities:Ljava/util/List;

    .line 2190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2192
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$45(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17

    .line 2193
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const v3, 0x7f060045

    #calls: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->showToast(I)V
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$27(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2202
    :goto_16
    return-void

    .line 2196
    :cond_17
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mResolvedIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$46(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2197
    .local v1, resolvedIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->val$activities:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2198
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2199
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    invoke-virtual {v2, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->startActivity(Landroid/content/Intent;)V

    .line 2200
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v3, -0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentSubDialog:I
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$13(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 2201
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$12;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->m_dlg:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$12(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/app/Dialog;)V

    goto :goto_16
.end method
