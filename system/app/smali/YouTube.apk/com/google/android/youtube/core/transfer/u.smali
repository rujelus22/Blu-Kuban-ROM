.class public final Lcom/google/android/youtube/core/transfer/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public d:I

.field public e:J

.field public f:J

.field public g:Lcom/google/android/youtube/core/transfer/d;

.field public h:Lcom/google/android/youtube/core/transfer/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    const-string v0, "filePath may not be empty"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    .line 692
    const-string v0, "networkUri may not be empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->b:Ljava/lang/String;

    .line 693
    const-string v0, "inputExtras may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/d;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->g:Lcom/google/android/youtube/core/transfer/d;

    .line 694
    sget-object v0, Lcom/google/android/youtube/core/transfer/Transfer$Status;->PENDING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 695
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/transfer/u;->d:I

    .line 696
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/u;->e:J

    .line 697
    iput-wide v1, p0, Lcom/google/android/youtube/core/transfer/u;->f:J

    .line 698
    new-instance v0, Lcom/google/android/youtube/core/transfer/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/transfer/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->h:Lcom/google/android/youtube/core/transfer/d;

    .line 699
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/transfer/Transfer;
    .registers 12

    .prologue
    .line 712
    new-instance v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/u;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/u;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    iget v4, p0, Lcom/google/android/youtube/core/transfer/u;->d:I

    iget-wide v5, p0, Lcom/google/android/youtube/core/transfer/u;->e:J

    iget-wide v7, p0, Lcom/google/android/youtube/core/transfer/u;->f:J

    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/u;->g:Lcom/google/android/youtube/core/transfer/d;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/u;->h:Lcom/google/android/youtube/core/transfer/d;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/core/transfer/Transfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;IJJLcom/google/android/youtube/core/transfer/d;Lcom/google/android/youtube/core/transfer/d;)V

    return-object v0
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 717
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v1, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
