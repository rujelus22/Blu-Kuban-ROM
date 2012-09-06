.class Lcom/estrongs/android/pop/netfs/utils/Statistics$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/netfs/utils/HttpUploader$HttpUploadListener;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uploadCompleted(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public uploadError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 5

    check-cast p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->u_num:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addUploadCount(II)V

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->d_num:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addDownloadCount(II)V

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->b_num:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addBowseCount(II)V

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->l_num:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addUseCount(II)V

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->n_num:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addNewCount(II)V

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->nb_num:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addNewBaiduCount(II)V

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->cb_num:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->addCancelBaiduCount(II)V

    iget v0, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->type:I

    iget v1, p1, Lcom/estrongs/android/pop/netfs/utils/Statistics$StatInfo;->time:I

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/netfs/utils/Statistics;->setSendTime(II)Z

    return-void
.end method
