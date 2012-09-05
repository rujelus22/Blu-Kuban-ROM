.class Lcom/sec/android/app/myfiles/AllFileBrowser$3;
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
    .line 187
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 190
    const-string v0, "MyFiles"

    const-string v1, "AllFile : Up pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowser;->upOneLevel()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$200(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    .line 193
    return-void
.end method
