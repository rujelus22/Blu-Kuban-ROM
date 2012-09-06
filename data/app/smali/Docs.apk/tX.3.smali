.class LtX;
.super LcI;
.source "UploadQueueService.java"


# instance fields
.field final synthetic a:LtW;


# direct methods
.method constructor <init>(LtW;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, LtX;->a:LtW;

    invoke-direct {p0}, LcI;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, LtX;->a:LtW;

    iget-object v0, v0, LtW;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;->a()V

    .line 97
    return-void
.end method
