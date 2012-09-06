.class public LRT;
.super Ljava/lang/Object;
.source "ChangedMetadataSyncerImpl.java"

# interfaces
.implements LRR;


# instance fields
.field private final a:LRU;

.field private final a:Lmo;


# direct methods
.method public constructor <init>(Lmo;LRU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, LRT;->a:Lmo;

    .line 29
    iput-object p2, p0, LRT;->a:LRU;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lase;Ljava/lang/String;)LSs;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 44
    .line 46
    :try_start_2
    const-string v0, "ChangedMetadataSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start uploadEntryInfo for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lase;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, LRT;->a:LRU;

    invoke-interface {v0, p1, p2}, LRU;->a(Lase;Ljava/lang/String;)Lase;

    move-result-object v0

    .line 48
    instance-of v2, v0, LSs;

    if-nez v2, :cond_38

    .line 49
    const-string v0, "ChangedMetadataSyncer"

    const-string v2, "Returned type not of kind DocEntry"

    invoke-static {v0, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, LRT;->a:Lmo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lmo;->a(ILjava/lang/Throwable;)V

    move-object v0, v1

    .line 68
    :goto_37
    return-object v0

    .line 53
    :cond_38
    check-cast v0, LSs;
    :try_end_3a
    .catch LarL; {:try_start_2 .. :try_end_3a} :catch_57
    .catch Lasn; {:try_start_2 .. :try_end_3a} :catch_7b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_3a} :catch_9f

    .line 67
    const-string v1, "ChangedMetadataSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished uploadEntryInfo for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lase;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 54
    :catch_57
    move-exception v0

    .line 55
    const-string v2, "ChangedMetadataSyncer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication error while uploading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lase;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    iget-object v2, p0, LRT;->a:Lmo;

    invoke-interface {v2, v5, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    move-object v0, v1

    .line 57
    goto :goto_37

    .line 58
    :catch_7b
    move-exception v0

    .line 59
    const-string v2, "ChangedMetadataSyncer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Conflict error while uploading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lase;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    iget-object v2, p0, LRT;->a:Lmo;

    invoke-interface {v2, v5, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    move-object v0, v1

    .line 61
    goto :goto_37

    .line 62
    :catch_9f
    move-exception v0

    .line 63
    const-string v2, "ChangedMetadataSyncer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network error while uploading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lase;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iget-object v2, p0, LRT;->a:Lmo;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    move-object v0, v1

    .line 65
    goto/16 :goto_37
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LSs;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, LRT;->a:LRU;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://docs.google.com/feeds/default/private/full/document:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, LRU;->a(Ljava/lang/String;Ljava/lang/String;)LSs;
    :try_end_18
    .catch LarL; {:try_start_0 .. :try_end_18} :catch_1a
    .catch Lasn; {:try_start_0 .. :try_end_18} :catch_3f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_63

    move-result-object v0

    .line 90
    :goto_19
    return-object v0

    .line 80
    :catch_1a
    move-exception v0

    .line 81
    const-string v1, "ChangedMetadataSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authentication error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarL;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, LRT;->a:Lmo;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    .line 90
    :goto_3d
    const/4 v0, 0x0

    goto :goto_19

    .line 83
    :catch_3f
    move-exception v0

    .line 84
    const-string v1, "ChangedMetadataSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse document feed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasn;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v1, p0, LRT;->a:Lmo;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    goto :goto_3d

    .line 86
    :catch_63
    move-exception v0

    .line 87
    const-string v1, "ChangedMetadataSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, LRT;->a:Lmo;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    goto :goto_3d
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    :try_start_2
    const-string v2, "ChangedMetadataSyncer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start deletion for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, LRT;->a:LRU;

    invoke-interface {v2, p1, p2, p3}, LRU;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch LarL; {:try_start_2 .. :try_end_1f} :catch_38
    .catch Lasn; {:try_start_2 .. :try_end_1f} :catch_58
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1f} :catch_78

    .line 116
    const-string v1, "ChangedMetadataSyncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished deletion of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_37
    return v0

    .line 103
    :catch_38
    move-exception v2

    .line 104
    const-string v3, "ChangedMetadataSyncer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Authentication error while deleting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    iget-object v3, p0, LRT;->a:Lmo;

    invoke-interface {v3, v0, v2}, Lmo;->a(ILjava/lang/Throwable;)V

    move v0, v1

    .line 106
    goto :goto_37

    .line 107
    :catch_58
    move-exception v2

    .line 108
    const-string v3, "ChangedMetadataSyncer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflict error while deleting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    iget-object v3, p0, LRT;->a:Lmo;

    invoke-interface {v3, v0, v2}, Lmo;->a(ILjava/lang/Throwable;)V

    move v0, v1

    .line 110
    goto :goto_37

    .line 111
    :catch_78
    move-exception v0

    .line 112
    const-string v2, "ChangedMetadataSyncer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network error while deleting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    iget-object v2, p0, LRT;->a:Lmo;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v0}, Lmo;->a(ILjava/lang/Throwable;)V

    move v0, v1

    .line 114
    goto :goto_37
.end method
