.class interface abstract Lcom/google/android/apps/books/app/ReaderFragment$VolumesQuery;
.super Ljava/lang/Object;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "VolumesQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 3799
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "segment_fraction"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "resource_fraction"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "page_fraction"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/app/ReaderFragment$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
