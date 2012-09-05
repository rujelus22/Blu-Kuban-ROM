.class Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageManager$Ensurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailEnsurer"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mVolumeId:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 4137
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4138
    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;->mAccount:Landroid/accounts/Account;

    .line 4139
    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;->mVolumeId:Ljava/lang/String;

    .line 4140
    return-void
.end method


# virtual methods
.method public ensure()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4143
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 4145
    .local v0, account:Landroid/accounts/Account;
    :try_start_a
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getFetchService()Ljava/util/concurrent/Future;
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$3000(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/books/service/ContentFetchService;

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment$ThumbnailEnsurer;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_1b} :catch_1c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_1b} :catch_23

    .line 4151
    return-void

    .line 4146
    :catch_1c
    move-exception v1

    .line 4147
    .local v1, e:Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4148
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_23
    move-exception v1

    .line 4149
    .local v1, e:Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
