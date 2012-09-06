.class public LtQ;
.super Ljava/lang/Object;
.source "UploadQueueActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, LtQ;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, LtQ;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a:LtS;

    invoke-virtual {v0}, LtS;->notifyDataSetChanged()V

    .line 168
    return-void
.end method
