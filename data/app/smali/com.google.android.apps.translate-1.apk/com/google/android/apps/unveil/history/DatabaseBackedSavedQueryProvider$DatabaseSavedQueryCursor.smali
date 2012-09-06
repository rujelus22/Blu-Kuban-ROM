.class Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;
.super Ljava/lang/Object;
.source "DatabaseBackedSavedQueryProvider.java"

# interfaces
.implements Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseSavedQueryCursor"
.end annotation


# instance fields
.field private final databaseCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;->databaseCursor:Landroid/database/Cursor;

    .line 136
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;->databaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 158
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;->databaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;->databaseCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public moveTo(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;->databaseCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 163
    return-void
.end method

.method public next()Lcom/google/android/apps/unveil/history/SavedQuery;
    .registers 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;->databaseCursor:Landroid/database/Cursor;

    #calls: Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->getQueryFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/history/SavedQuery;
    invoke-static {v1}, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider;->access$000(Landroid/database/Cursor;)Lcom/google/android/apps/unveil/history/SavedQuery;

    move-result-object v0

    .line 151
    .local v0, s:Lcom/google/android/apps/unveil/history/SavedQuery;
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/DatabaseBackedSavedQueryProvider$DatabaseSavedQueryCursor;->databaseCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 152
    return-object v0
.end method
