.class Lcom/sec/android/app/myfiles/AllFileBrowser$1;
.super Ljava/lang/Object;
.source "AllFileBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/AllFileBrowser;
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
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowser;->browseToFolder()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowser;->access$000(Lcom/sec/android/app/myfiles/AllFileBrowser;)V

    .line 122
    return-void
.end method
