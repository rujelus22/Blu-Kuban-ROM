.class Ltg;
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
        "Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;",
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
    .line 391
    iput-object p1, p0, Ltg;->a:Ltf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 394
    invoke-static {p1}, Ltt;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V

    .line 396
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    check-cast p1, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-virtual {p0, p1}, Ltg;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)V

    return-void
.end method
