.class public Lcom/google/android/location/localizer/MetricModel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/location/localizer/MetricModel;->a:Ljava/util/List;

    return-void
.end method

.method static a(LW/a;)Lcom/google/android/location/localizer/MetricModel;
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, LW/a;->i(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_1b

    invoke-virtual {p0, v4, v0}, LW/a;->d(II)LW/a;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/location/localizer/DistanceDist;->a(LW/a;)Lcom/google/android/location/localizer/DistanceDist;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    new-instance v0, Lcom/google/android/location/localizer/MetricModel;

    invoke-direct {v0, v2}, Lcom/google/android/location/localizer/MetricModel;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static a(Ljava/io/InputStream;)Lcom/google/android/location/localizer/MetricModel;
    .registers 5

    new-instance v0, LW/d;

    invoke-direct {v0}, LW/d;-><init>()V

    new-instance v1, LW/a;

    invoke-direct {v1, v0}, LW/a;-><init>(LW/d;)V

    :try_start_a
    invoke-virtual {v1, p0}, LW/a;->a(Ljava/io/InputStream;)LW/a;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_33
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_15

    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_3a

    :goto_10
    invoke-static {v1}, Lcom/google/android/location/localizer/MetricModel;->a(LW/a;)Lcom/google/android/location/localizer/MetricModel;

    move-result-object v0

    return-object v0

    :catch_15
    move-exception v0

    :try_start_16
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse stream to load metric model. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_33

    :catchall_33
    move-exception v0

    :try_start_34
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    :goto_37
    throw v0

    :catch_38
    move-exception v1

    goto :goto_37

    :catch_3a
    move-exception v0

    goto :goto_10
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/localizer/MetricModel;->a:Ljava/util/List;

    return-object v0
.end method
