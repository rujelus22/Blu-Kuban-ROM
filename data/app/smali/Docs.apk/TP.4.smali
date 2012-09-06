.class public LTP;
.super Ljava/lang/Object;
.source "FeedProcessorDriverHelperImpl.java"

# interfaces
.implements LTS;


# instance fields
.field public a:LZw;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SyncResult;LUa;LTN;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 40
    invoke-virtual {p2}, LUa;->a()Lasf;

    move-result-object v0

    check-cast v0, LSr;

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-interface {p3, v0}, LTN;->a(LSr;)V

    move-object v2, v1

    .line 44
    :goto_f
    invoke-virtual {p2}, LUa;->a()Lasm;

    move-result-object v1

    invoke-interface {v1}, Lasm;->a()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 45
    invoke-static {}, Lcg;->b()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 68
    :goto_1f
    return-void

    .line 50
    :cond_20
    :try_start_20
    iget-object v1, p0, LTP;->a:LZw;

    invoke-virtual {v1}, LZw;->b()V

    .line 51
    invoke-virtual {p2}, LUa;->a()Lasm;

    move-result-object v1

    invoke-interface {v1, v2}, Lasm;->a(Lase;)Lase;

    move-result-object v1

    check-cast v1, LSs;
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_6f
    .catch Ljava/text/ParseException; {:try_start_20 .. :try_end_2f} :catch_39
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_2f} :catch_64

    .line 53
    :try_start_2f
    invoke-interface {p3, v0, v1}, LTN;->a(LSr;LSs;)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_6f
    .catch Ljava/text/ParseException; {:try_start_2f .. :try_end_32} :catch_a5
    .catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_32} :catch_64

    .line 60
    iget-object v2, p0, LTP;->a:LZw;

    invoke-virtual {v2}, LZw;->c()V

    :goto_37
    move-object v2, v1

    goto :goto_f

    .line 54
    :catch_39
    move-exception v1

    move-object v10, v1

    move-object v1, v2

    move-object v2, v10

    .line 55
    :goto_3d
    :try_start_3d
    iget-object v5, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numParseExceptions:J

    .line 56
    const-string v5, "FeedProcessorDriverHelperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing entry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_3d .. :try_end_5e} :catchall_6f

    .line 60
    iget-object v2, p0, LTP;->a:LZw;

    invoke-virtual {v2}, LZw;->c()V

    goto :goto_37

    .line 57
    :catch_64
    move-exception v0

    .line 58
    :try_start_65
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6f
    .catchall {:try_start_65 .. :try_end_6f} :catchall_6f

    .line 60
    :catchall_6f
    move-exception v0

    iget-object v1, p0, LTP;->a:LZw;

    invoke-virtual {v1}, LZw;->c()V

    throw v0

    .line 64
    :cond_76
    invoke-interface {p3, v0}, LTN;->b(LSr;)V

    .line 66
    const-string v0, "FeedProcessorDriverHelperImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncResult in feed so far "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time taken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 54
    :catch_a5
    move-exception v2

    goto :goto_3d
.end method
