.class public abstract Lte;
.super Ljava/lang/Object;
.source "DownsampleImageUploadFilter.java"

# interfaces
.implements LtI;


# instance fields
.field a:LXt;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/InputStream;II)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-static {p2, p4}, LXs;->a(Ljava/io/InputStream;I)LXs;

    move-result-object v0

    invoke-virtual {v0, p3}, LXs;->a(I)LXs;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-virtual {v0, p1, v1}, LXs;->a(Ljava/io/OutputStream;I)LXs;

    move-result-object v0

    invoke-virtual {v0}, LXs;->a()V

    .line 128
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 137
    const/high16 v0, 0x20

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 34
    check-cast p1, LtB;

    invoke-virtual {p0, p1}, Lte;->a(LtB;)LtB;

    move-result-object v0

    return-object v0
.end method

.method public a(LtB;)LtB;
    .registers 10
    .parameter

    .prologue
    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lte;->a(LtB;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 63
    const-string v0, "DownsampleImageUploadFilter"

    const-string v1, "Ignoring image filter for non-image item"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :goto_d
    return-object p1

    .line 68
    :cond_e
    iget-object v0, p0, Lte;->a:LXt;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, LtB;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-interface {v0, v1}, LXt;->a(Ljava/io/InputStream;)LXu;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, LXu;->a()I

    move-result v1

    invoke-virtual {v0}, LXu;->b()I

    move-result v0

    mul-int/2addr v0, v1

    .line 72
    mul-int/lit8 v0, v0, 0x3

    int-to-double v0, v0

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_32} :catch_99

    move-result-wide v0

    long-to-int v0, v0

    .line 79
    :try_start_34
    invoke-static {}, LRz;->a()LRy;

    move-result-object v1

    invoke-interface {v1}, LRy;->a()Ljava/io/File;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_41} :catch_9c

    .line 89
    const/4 v3, 0x1

    int-to-double v4, v0

    :try_start_43
    invoke-virtual {p0}, Lte;->a()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 91
    const-string v3, "DownsampleImageUploadFilter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sample size estimate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, LtB;->a()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, LtB;->a()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, v0}, Lte;->a(Ljava/io/OutputStream;Ljava/io/InputStream;II)V

    .line 97
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 99
    new-instance v0, LtD;

    invoke-direct {v0, p1}, LtD;-><init>(LtB;)V

    new-instance v2, LZz;

    invoke-direct {v2, v1}, LZz;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2}, LtD;->a(LZz;)LtD;

    move-result-object v0

    invoke-virtual {v0}, LtD;->a()LtB;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, LtB;->a()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_96} :catch_99

    move-object p1, v0

    .line 108
    goto/16 :goto_d

    .line 109
    :catch_99
    move-exception v0

    goto/16 :goto_d

    .line 81
    :catch_9c
    move-exception v0

    goto/16 :goto_d
.end method

.method protected abstract a(LtB;)Z
.end method
