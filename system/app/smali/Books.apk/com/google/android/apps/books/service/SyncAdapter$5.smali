.class Lcom/google/android/apps/books/service/SyncAdapter$5;
.super Lcom/google/android/apps/books/service/SyncAdapter$Ensurer;
.source "SyncService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/service/SyncAdapter;->enqueuePage(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;ILcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/service/SyncAdapter;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/service/SyncAdapter;Lcom/google/android/apps/books/service/SyncAdapter$SyncContext;Landroid/content/SyncResult;Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V
    .registers 7
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1226
    iput-object p1, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    iput-object p4, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->val$volumeId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->val$pageId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->val$account:Landroid/accounts/Account;

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
    .line 1229
    iget-object v0, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->this$0:Lcom/google/android/apps/books/service/SyncAdapter;

    #getter for: Lcom/google/android/apps/books/service/SyncAdapter;->mFetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    invoke-static {v0}, Lcom/google/android/apps/books/service/SyncAdapter;->access$000(Lcom/google/android/apps/books/service/SyncAdapter;)Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->val$volumeId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->val$pageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/service/SyncAdapter$5;->val$account:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/service/ContentFetchService;->ensurePageContent(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 1230
    return-void
.end method
