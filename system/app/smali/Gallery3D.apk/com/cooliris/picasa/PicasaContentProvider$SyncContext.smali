.class final Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;
.super Ljava/lang/Object;
.source "PicasaContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/picasa/PicasaContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SyncContext"
.end annotation


# instance fields
.field public accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

.field public final albumsAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public albumsChanged:Z

.field public api:Lcom/cooliris/picasa/PicasaApi;

.field public db:Landroid/database/sqlite/SQLiteDatabase;

.field public photosChanged:Z

.field final synthetic this$0:Lcom/cooliris/picasa/PicasaContentProvider;


# direct methods
.method public constructor <init>(Lcom/cooliris/picasa/PicasaContentProvider;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 638
    iput-object p1, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/cooliris/picasa/PicasaContentProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 624
    new-instance v0, Lcom/cooliris/picasa/PicasaApi;

    iget-object v1, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/cooliris/picasa/PicasaContentProvider;

    invoke-virtual {v1}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cooliris/picasa/PicasaApi;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->api:Lcom/cooliris/picasa/PicasaApi;

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->albumsAdded:Ljava/util/ArrayList;

    .line 633
    iput-boolean v2, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    .line 636
    iput-boolean v2, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    .line 639
    iget-object v0, p1, Lcom/cooliris/picasa/TableContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 640
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 648
    iget-object v1, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/cooliris/picasa/PicasaContentProvider;

    invoke-virtual {v1}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 649
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v1, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    if-eqz v1, :cond_15

    .line 650
    sget-object v1, Lcom/cooliris/picasa/PicasaContentProvider;->ALBUMS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 652
    :cond_15
    iget-boolean v1, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    if-eqz v1, :cond_1e

    .line 653
    sget-object v1, Lcom/cooliris/picasa/PicasaContentProvider;->PHOTOS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 655
    :cond_1e
    iput-boolean v2, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->albumsChanged:Z

    .line 656
    iput-boolean v2, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->photosChanged:Z

    .line 657
    return-void
.end method

.method public login(Ljava/lang/String;)Z
    .registers 8
    .parameter "user"

    .prologue
    .line 660
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    if-nez v5, :cond_7

    .line 661
    invoke-virtual {p0}, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->reloadAccounts()V

    .line 663
    :cond_7
    iget-object v2, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    .line 664
    .local v2, authAccounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    move-object v0, v2

    .local v0, arr$:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v4, :cond_22

    aget-object v1, v0, v3

    .line 665
    .local v1, auth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    iget-object v5, v1, Lcom/cooliris/picasa/PicasaApi$AuthAccount;->user:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 666
    iget-object v5, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->api:Lcom/cooliris/picasa/PicasaApi;

    invoke-virtual {v5, v1}, Lcom/cooliris/picasa/PicasaApi;->setAuth(Lcom/cooliris/picasa/PicasaApi$AuthAccount;)V

    .line 667
    const/4 v5, 0x1

    .line 670
    .end local v1           #auth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    :goto_1e
    return v5

    .line 664
    .restart local v1       #auth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 670
    .end local v1           #auth:Lcom/cooliris/picasa/PicasaApi$AuthAccount;
    :cond_22
    const/4 v5, 0x0

    goto :goto_1e
.end method

.method public reloadAccounts()V
    .registers 2

    .prologue
    .line 643
    iget-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->this$0:Lcom/cooliris/picasa/PicasaContentProvider;

    invoke-virtual {v0}, Lcom/cooliris/picasa/PicasaContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/cooliris/picasa/PicasaApi;->getAuthenticatedAccounts(Landroid/content/Context;)[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/cooliris/picasa/PicasaContentProvider$SyncContext;->accounts:[Lcom/cooliris/picasa/PicasaApi$AuthAccount;

    .line 644
    return-void
.end method
