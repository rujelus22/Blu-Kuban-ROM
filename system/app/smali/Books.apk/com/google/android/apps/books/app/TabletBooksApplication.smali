.class public Lcom/google/android/apps/books/app/TabletBooksApplication;
.super Lcom/google/android/apps/books/app/BooksApplication;
.source "TabletBooksApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/TabletBooksApplication$1;,
        Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;
    }
.end annotation


# instance fields
.field private final mCarouselCoverCache:Lcom/google/android/apps/books/util/GenerationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/util/GenerationCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

.field private final mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksApplication;-><init>()V

    .line 40
    new-instance v0, Lcom/google/android/apps/books/util/GenerationCache;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/util/GenerationCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mCarouselCoverCache:Lcom/google/android/apps/books/util/GenerationCache;

    .line 76
    new-instance v0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;-><init>(Lcom/google/android/apps/books/app/TabletBooksApplication;Lcom/google/android/apps/books/app/TabletBooksApplication$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    .line 78
    return-void
.end method

.method public static getIcsApis(Landroid/content/Context;)Lcom/google/android/apps/books/app/IcsApis;
    .registers 2
    .parameter "context"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/TabletBooksApplication;

    iget-object v0, v0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

    return-object v0
.end method


# virtual methods
.method public getSyncUi()Lcom/google/android/apps/books/service/SyncService$SyncUi;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mSyncUi:Lcom/google/android/apps/books/service/SyncService$SyncUi;

    return-object v0
.end method

.method protected isAccessibilityEnabled_(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 54
    invoke-static {}, Lcom/google/android/apps/books/app/TabletBooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/IcsApis;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 57
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/apps/books/app/BooksApplication;->isAccessibilityEnabled_(Landroid/content/Context;)Z

    move-result v0

    goto :goto_c
.end method

.method protected isScreenReaderActive_(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 63
    invoke-static {}, Lcom/google/android/apps/books/app/TabletBooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/IcsApis;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    .line 66
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1}, Lcom/google/android/apps/books/app/BooksApplication;->isScreenReaderActive_(Landroid/content/Context;)Z

    move-result v0

    goto :goto_c
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/google/android/apps/books/app/BooksApplication;->onCreate()V

    .line 35
    invoke-static {}, Lcom/google/android/apps/books/app/TabletBooksApplication;->runningOnIcsOrLater()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 36
    new-instance v0, Lcom/google/android/apps/books/app/IcsApis;

    invoke-direct {v0}, Lcom/google/android/apps/books/app/IcsApis;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication;->mIcsApis:Lcom/google/android/apps/books/app/IcsApis;

    .line 38
    :cond_10
    return-void
.end method
