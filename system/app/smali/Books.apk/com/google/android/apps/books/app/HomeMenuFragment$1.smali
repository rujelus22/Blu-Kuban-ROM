.class Lcom/google/android/apps/books/app/HomeMenuFragment$1;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment;->configureSearchView(Landroid/content/Context;Landroid/widget/SearchView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HomeMenuFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$1;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 8
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    :goto_7
    return-object v3

    .line 102
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$1;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    #getter for: Lcom/google/android/apps/books/app/HomeMenuFragment;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$000(Lcom/google/android/apps/books/app/HomeMenuFragment;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->searchUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 103
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/apps/books/app/HomeMenuFragment$CollectionVolumesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v5, "title COLLATE NOCASE ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_7
.end method
