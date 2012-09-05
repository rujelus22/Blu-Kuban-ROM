.class Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/tasks/AbstractSyncableContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/tasks/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    .line 162
    const/4 v0, 0x0

    #getter for: Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mDatabaseVersion:I
    invoke-static {p1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->access$000(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 163
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 167
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "DatabaseHelper onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 170
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    invoke-virtual {v0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_27

    .line 171
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    #getter for: Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->access$100(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 174
    :cond_27
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 188
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "DatabaseHelper onOpen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 190
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    #getter for: Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;
    invoke-static {v0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->access$200(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 191
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v0, "AbstractSyncableContentProvider"

    const-string v1, "DatabaseHelper onUpgrade()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 180
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    #getter for: Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mSyncState:Lcom/android/providers/tasks/SyncStateContentProviderHelper;
    invoke-static {v0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->access$200(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)Lcom/android/providers/tasks/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V

    .line 181
    iget-object v0, p0, Lcom/android/providers/tasks/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/android/providers/tasks/AbstractSyncableContentProvider;

    #getter for: Lcom/android/providers/tasks/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/providers/tasks/AbstractSyncableContentProvider;->access$100(Lcom/android/providers/tasks/AbstractSyncableContentProvider;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    :cond_2b
    return-void
.end method
