.class Lcom/estrongs/android/pop/netfs/utils/HttpUploader$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/estrongs/android/pop/netfs/utils/HttpUploader;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/netfs/utils/HttpUploader;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$1;->this$0:Lcom/estrongs/android/pop/netfs/utils/HttpUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/netfs/utils/HttpUploader$1;->this$0:Lcom/estrongs/android/pop/netfs/utils/HttpUploader;

    #calls: Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->upload()V
    invoke-static {v0}, Lcom/estrongs/android/pop/netfs/utils/HttpUploader;->access$0(Lcom/estrongs/android/pop/netfs/utils/HttpUploader;)V

    return-void
.end method
