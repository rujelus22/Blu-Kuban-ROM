.class Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "BundleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/app/BundleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BulkInsertTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 3
    .parameter "contentResolver"
    .parameter "uri"

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;->mContentResolver:Landroid/content/ContentResolver;

    .line 210
    iput-object p2, p0, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;->mUri:Landroid/net/Uri;

    .line 211
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/ContentValues;)Ljava/lang/Integer;
    .registers 4
    .parameter "values"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 203
    check-cast p1, [Landroid/content/ContentValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/app/BundleActivity$BulkInsertTask;->doInBackground([Landroid/content/ContentValues;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
