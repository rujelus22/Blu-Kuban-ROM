.class public Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;
.super Landroid/support/v4/app/Fragment;
.source "PeopleSearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter;
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
    .line 1332
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 1333
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;->setRetainInstance(Z)V

    .line 1334
    return-void
.end method


# virtual methods
.method public getPeopleSearchResults()Lcom/google/android/apps/plus/fragments/PeopleSearchResults;
    .registers 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    return-object v0
.end method

.method public setPeopleSearchResults(Lcom/google/android/apps/plus/fragments/PeopleSearchResults;)V
    .registers 2
    .parameter "results"

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchAdapter$SearchResultsFragment;->mResults:Lcom/google/android/apps/plus/fragments/PeopleSearchResults;

    .line 1338
    return-void
.end method
