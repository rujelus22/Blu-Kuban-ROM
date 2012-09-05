.class Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;
.super Ljava/lang/Object;
.source "EditorialBucketListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/EditorialBucketListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EditorialDocumentViewHolder"
.end annotation


# instance fields
.field public editorialContent:Lcom/google/android/finsky/layout/EditorialBucketContent;

.field public editorialEntry:Lcom/google/android/finsky/layout/EditorialBucketEntry;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/EditorialBucketListAdapter$EditorialDocumentViewHolder;-><init>()V

    return-void
.end method
