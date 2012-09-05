.class Lcom/sec/android/app/myfiles/AllFileBrowserThumb$1;
.super Ljava/lang/Object;
.source "AllFileBrowserThumb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserThumb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V
    .registers 2
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/myfiles/AllFileBrowserThumb$1;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserThumb;

    #calls: Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->browseToFolder()V
    invoke-static {v0}, Lcom/sec/android/app/myfiles/AllFileBrowserThumb;->access$000(Lcom/sec/android/app/myfiles/AllFileBrowserThumb;)V

    .line 231
    return-void
.end method
