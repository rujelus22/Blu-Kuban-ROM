.class Lcom/sec/android/app/myfiles/RenameFileBrowser$1;
.super Ljava/lang/Object;
.source "RenameFileBrowser.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/RenameFileBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/RenameFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/RenameFileBrowser;->directoryEntries:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$000(Lcom/sec/android/app/myfiles/RenameFileBrowser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/myfiles/SimpleItem;

    .line 133
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    const-class v3, Lcom/sec/android/app/myfiles/activity/RenameActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    const-string v2, "uri"

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/SimpleItem;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/myfiles/RenameFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/RenameFileBrowser;

    invoke-static {}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->access$100()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/RenameFileBrowser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    return-void
.end method
