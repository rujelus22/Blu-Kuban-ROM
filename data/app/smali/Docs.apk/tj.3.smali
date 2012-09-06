.class Ltj;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "Lcom/google/android/apps/docs/docsuploader/UploadQueueService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltf;


# direct methods
.method constructor <init>(Ltf;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Ltj;->a:Ltf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    invoke-static {p1}, Ltu;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V

    .line 404
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 399
    check-cast p1, Lcom/google/android/apps/docs/docsuploader/UploadQueueService;

    invoke-virtual {p0, p1}, Ltj;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueService;)V

    return-void
.end method
