.class Lcom/sec/android/app/myfiles/AllFileBrowser$2;
.super Ljava/lang/Object;
.source "AllFileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowser;->setToolbarClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 180
    const-string v0, "MyFiles"

    const-string v1, "AllFile : Home pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$2;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowser;->goToHomeDirectory()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$100(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    .line 183
    return-void
.end method
