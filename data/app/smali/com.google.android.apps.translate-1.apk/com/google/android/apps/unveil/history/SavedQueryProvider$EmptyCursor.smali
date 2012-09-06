.class final Lcom/google/android/apps/unveil/history/SavedQueryProvider$EmptyCursor;
.super Ljava/lang/Object;
.source "SavedQueryProvider.java"

# interfaces
.implements Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SavedQueryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCursor"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/history/SavedQueryProvider$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SavedQueryProvider$EmptyCursor;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 58
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public moveTo(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 77
    return-void
.end method

.method public next()Lcom/google/android/apps/unveil/history/SavedQuery;
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method
