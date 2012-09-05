.class Lcom/google/android/apps/books/service/SyncAdapter$2;
.super Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/service/SyncAdapter;->buildCoverEnsurer(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iput-object p4, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$volumeId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$account:Landroid/accounts/Account;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;-><init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V

    return-void
.end method


# virtual methods
.method public ensureLocked()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 801
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    #getter for: Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-static {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->access$000(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$volumeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$account:Landroid/accounts/Account;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeOverview(Ljava/lang/String;Landroid/accounts/Account;Z)V

    .line 802
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    #getter for: Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-static {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->access$000(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$volumeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$2;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/books/service/ContentFetchService;->ensureVolumeCover(Ljava/lang/String;Landroid/accounts/Account;)V

    .line 803
    return-void
.end method
