.class public final Lcom/google/android/youtube/core/transfer/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public d:I

.field public e:J

.field public f:J

.field public g:Lcom/google/android/youtube/core/transfer/b;

.field public h:Lcom/google/android/youtube/core/transfer/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 664
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const-string v0, "filePath may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    .line 666
    const-string v0, "networkUri may not be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/p;->b:Ljava/lang/String;

    .line 667
    const-string v0, "inputExtras may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/b;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/p;->g:Lcom/google/android/youtube/core/transfer/b;

    .line 668
    sget-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 669
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/p;->d:I

    .line 670
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/p;->e:J

    .line 671
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/p;->f:J

    .line 672
    new-instance v0, Lcom/google/android/youtube/core/transfer/b;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/p;->h:Lcom/google/android/youtube/core/transfer/b;

    .line 673
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/transfer/Transfer;
    .registers 12

    .prologue
    .line 686
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/p;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iget v4, p0, Lcom/google/android/youtube/core/transfer/p;->d:I

    iget-wide v5, p0, Lcom/google/android/youtube/core/transfer/p;->e:J

    iget-wide v7, p0, Lcom/google/android/youtube/core/transfer/p;->f:J

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/p;->g:Lcom/google/android/youtube/core/transfer/b;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/p;->h:Lcom/google/android/youtube/core/transfer/b;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/transfer/Transfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;IJJLcom/google/android/youtube/core/transfer/b;Lcom/google/android/youtube/core/transfer/b;)V

    return-object v0
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
