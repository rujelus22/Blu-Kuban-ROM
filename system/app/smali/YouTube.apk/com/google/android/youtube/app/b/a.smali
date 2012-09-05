.class public final Lcom/google/android/youtube/app/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J

.field public final e:Lcom/google/android/youtube/app/b/b;

.field public final f:Lcom/google/android/youtube/core/transfer/Transfer$Status;

.field public final g:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/app/b/b;Lcom/google/android/youtube/core/transfer/Transfer$Status;J)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "filePath can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    .line 42
    const-string v0, "networkUri can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a;->b:Ljava/lang/String;

    .line 43
    const-string v0, "source can\'t be null"

    invoke-static {p7, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/b/b;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/a;->e:Lcom/google/android/youtube/app/b/b;

    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_42

    const/4 v0, 0x1

    :goto_28
    const-string v1, "sizeInBytes can\'t be <= 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 46
    iput-wide p3, p0, Lcom/google/android/youtube/app/b/a;->c:J

    .line 48
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_44

    const/4 v0, 0x1

    :goto_36
    const-string v1, "published date can\'t be <= 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 49
    iput-wide p5, p0, Lcom/google/android/youtube/app/b/a;->d:J

    .line 51
    iput-object p8, p0, Lcom/google/android/youtube/app/b/a;->f:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 52
    iput-wide p9, p0, Lcom/google/android/youtube/app/b/a;->g:J

    .line 53
    return-void

    .line 45
    :cond_42
    const/4 v0, 0x0

    goto :goto_28

    .line 48
    :cond_44
    const/4 v0, 0x0

    goto :goto_36
.end method

.method public static a(Lcom/google/android/youtube/core/transfer/Transfer;)Lcom/google/android/youtube/app/b/a;
    .registers 12
    .parameter

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    new-instance v0, Lcom/google/android/youtube/app/b/a;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v4, "size"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v6, "published_date"

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v8, "source"

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/app/b/b;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/b/b;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/app/b/b;Lcom/google/android/youtube/core/transfer/Transfer$Status;J)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/app/b/b;)Lcom/google/android/youtube/app/b/a;
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v0, Lcom/google/android/youtube/app/b/a;

    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/youtube/app/b/b;Lcom/google/android/youtube/core/transfer/Transfer$Status;J)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 6
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/google/android/youtube/app/b/a;

    iget-wide v0, p0, Lcom/google/android/youtube/app/b/a;->d:J

    iget-wide v2, p1, Lcom/google/android/youtube/app/b/a;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 82
    instance-of v0, p1, Lcom/google/android/youtube/app/b/a;

    if-nez v0, :cond_6

    .line 83
    const/4 v0, 0x0

    .line 86
    :goto_5
    return v0

    .line 85
    :cond_6
    check-cast p1, Lcom/google/android/youtube/app/b/a;

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
