.class public LtV;
.super Landroid/os/Binder;
.source "UploadQueueService.java"


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V
    .registers 2
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, LtV;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/apps/docs/docsuploader/UploadQueueService;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, LtV;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    return-object v0
.end method
