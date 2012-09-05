.class public Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;
.super Landroid/support/v4/app/Fragment;
.source "PeopleSearchListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResultsFragment"
.end annotation


# instance fields
.field private mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1378
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 1379
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;->setRetainInstance(Z)V

    .line 1380
    return-void
.end method


# virtual methods
.method public getPeopleSearchResults()Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    return-object v0
.end method

.method public setPeopleSearchResults(Lcom/google/android/apps/plus/fragments/PeopleSearchResults;)V
    .registers 2
    .parameter "results"

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$SearchResultsFragment;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 1384
    return-void
.end method
