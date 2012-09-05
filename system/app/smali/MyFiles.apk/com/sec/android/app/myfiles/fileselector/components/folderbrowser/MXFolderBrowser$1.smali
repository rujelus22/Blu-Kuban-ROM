.class Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$1;
.super Ljava/lang/Object;
.source "MXFolderBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->listUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->mLister:Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;->access$000(Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/MXFolderBrowser;)Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/myfiles/fileselector/components/folderbrowser/Lister;->listUpWithFilter()V

    .line 209
    return-void
.end method
