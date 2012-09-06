.class public Lcom/google/android/apps/unveil/history/SavedQuery;
.super Lcom/google/android/apps/unveil/history/ItemModel;
.source "SavedQuery.java"


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final id:J

.field private final queryParameters:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

.field private final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/history/SavedQuery;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryBuilder;JJ)V
    .registers 6
    .parameter "queryParameters"
    .parameter "id"
    .parameter "timestamp"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/ItemModel;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SavedQuery;->queryParameters:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    .line 22
    iput-wide p2, p0, Lcom/google/android/apps/unveil/history/SavedQuery;->id:J

    .line 23
    iput-wide p4, p0, Lcom/google/android/apps/unveil/history/SavedQuery;->timestamp:J

    .line 24
    return-void
.end method


# virtual methods
.method public getCachedQueryImage()Lcom/google/android/apps/unveil/env/Picture;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SavedQuery;->queryParameters:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryBuilder;->toPicture()Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/apps/unveil/history/SavedQuery;->id:J

    return-wide v0
.end method

.method public getQueryParameters()Lcom/google/android/apps/unveil/protocol/QueryBuilder;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SavedQuery;->queryParameters:Lcom/google/android/apps/unveil/protocol/QueryBuilder;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/google/android/apps/unveil/history/SavedQuery;->timestamp:J

    return-wide v0
.end method
