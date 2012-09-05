.class Lcom/sec/android/app/myfiles/AllFileBrowserDetail$1;
.super Ljava/lang/Object;
.source "AllFileBrowserDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$1;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$1;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->browseToFolder()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->access$000(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V

    .line 122
    return-void
.end method
