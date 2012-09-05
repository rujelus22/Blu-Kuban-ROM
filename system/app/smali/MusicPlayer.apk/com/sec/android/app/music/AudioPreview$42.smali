.class Lcom/sec/android/app/music/AudioPreview$42;
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
    .line 6145
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$42;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 6150
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$42;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->mSearchList:Ljava/util/List;
    invoke-static {v2}, Lcom/sec/android/app/music/AudioPreview;->access$3700(Lcom/sec/android/app/music/AudioPreview;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 6152
    .local v0, displayedInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6153
    .local v1, i:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6154
    const-string v2, "query"

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$42;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$3600(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6155
    const-string v2, "android.intent.extra.title"

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$42;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$3600(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6156
    const-string v2, "android.intent.extra.focus"

    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$42;->this$0:Lcom/sec/android/app/music/AudioPreview;

    #getter for: Lcom/sec/android/app/music/AudioPreview;->searchQueryItem:Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;
    invoke-static {v3}, Lcom/sec/android/app/music/AudioPreview;->access$3600(Lcom/sec/android/app/music/AudioPreview;)Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/music/AudioPreview$SearchItemQueryInfo;->getMime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6157
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6160
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$42;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/music/AudioPreview;->startActivity(Landroid/content/Intent;)V

    .line 6162
    iget-object v2, p0, Lcom/sec/android/app/music/AudioPreview$42;->this$0:Lcom/sec/android/app/music/AudioPreview;

    iget-object v2, v2, Lcom/sec/android/app/music/AudioPreview;->searchItemChooserMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 6163
    return-void
.end method
