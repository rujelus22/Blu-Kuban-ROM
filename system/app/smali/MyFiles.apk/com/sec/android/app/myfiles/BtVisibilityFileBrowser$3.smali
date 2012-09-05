.class Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$3;
.super Ljava/lang/Object;
.source "BtVisibilityFileBrowser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->browseToSameFolder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->access$100()Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$3;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    #getter for: Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->currentPreudoFolder:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->access$000(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->browseTo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->access$200(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    return-object v0
.end method
