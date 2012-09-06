.class public abstract Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;
.super Ljava/lang/Object;
.source "SearchHistoryQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "QuerySpec"
.end annotation


# instance fields
.field private final prefersHttps:Z


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;-><init>(Z)V

    .line 21
    return-void
.end method

.method protected constructor <init>(Z)V
    .registers 2
    .parameter "prefersHttps"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;->prefersHttps:Z

    .line 25
    return-void
.end method


# virtual methods
.method public abstract isQueryForAllItems()Z
.end method

.method public final prefersHttps()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;->prefersHttps:Z

    return v0
.end method

.method public abstract queryString()Ljava/lang/String;
.end method

.method public abstract toPresentationString()Ljava/lang/String;
.end method
