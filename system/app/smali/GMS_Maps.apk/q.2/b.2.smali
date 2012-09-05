.class public Lq/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lq/k;

.field private final c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private final d:Lcom/google/android/maps/driveabout/app/cW;

.field private final e:Lcom/google/android/maps/driveabout/app/aL;

.field private final f:Ljava/lang/StringBuilder;

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cW;Lcom/google/android/maps/driveabout/app/aL;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lq/b;->f:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq/b;->i:Z

    iput-object p1, p0, Lq/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lq/b;->b:Lq/k;

    iput-object p3, p0, Lq/b;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iput-object p4, p0, Lq/b;->d:Lcom/google/android/maps/driveabout/app/cW;

    iput-object p5, p0, Lq/b;->e:Lcom/google/android/maps/driveabout/app/aL;

    return-void
.end method

.method private b(Lq/l;)Z
    .registers 10

    const/4 v7, 0x0

    iget-object v0, p0, Lq/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Lq/l;->a()Lq/a;

    move-result-object v0

    invoke-virtual {p1}, Lq/l;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lq/b;->b:Lq/k;

    iget-object v3, p0, Lq/b;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v4, p0, Lq/b;->d:Lcom/google/android/maps/driveabout/app/cW;

    iget-object v5, p0, Lq/b;->e:Lcom/google/android/maps/driveabout/app/aL;

    iget-object v6, p0, Lq/b;->f:Ljava/lang/StringBuilder;

    invoke-interface/range {v0 .. v6}, Lq/a;->a(Ljava/util/HashMap;Lq/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cW;Lcom/google/android/maps/driveabout/app/aL;Ljava/lang/StringBuilder;)Z

    move-result v0

    invoke-virtual {p1}, Lq/l;->c()Z

    move-result v1

    if-eqz v1, :cond_25

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :cond_25
    :goto_25
    return v0

    :cond_26
    move v0, v7

    goto :goto_25
.end method

.method private static c(Lq/l;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_5
    invoke-virtual {p0, v0}, Lq/l;->a(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_d
    move-exception v1

    goto :goto_8
.end method


# virtual methods
.method protected a()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(J)V
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method public a(Lq/l;)Z
    .registers 10

    const/4 v1, 0x0

    iget v0, p0, Lq/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lq/b;->g:I

    iget-object v0, p0, Lq/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lq/b;->a()J

    move-result-wide v4

    const-wide/16 v2, 0x0

    :try_start_12
    invoke-virtual {p1}, Lq/l;->b()I

    move-result v0

    iget-boolean v6, p0, Lq/b;->i:Z

    if-eqz v6, :cond_1c

    mul-int/lit8 v0, v0, 0x3

    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lq/b;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_88

    invoke-direct {p0, p1}, Lq/b;->b(Lq/l;)Z
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_29} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_29} :catch_78

    move-result v6

    if-eqz v6, :cond_68

    const/4 v0, 0x1

    :goto_2d
    invoke-static {p1}, Lq/b;->c(Lq/l;)Ljava/lang/String;

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lq/l;->b()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_8a

    const-string v1, " OVERTIME"

    :goto_3d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lq/l;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_67
    return v0

    :cond_68
    const-wide/16 v6, 0xc8

    :try_start_6a
    invoke-virtual {p0, v6, v7}, Lq/b;->a(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6d} :catch_78

    goto :goto_1c

    :catch_6e
    move-exception v0

    iget-object v0, p0, Lq/b;->f:Ljava/lang/StringBuilder;

    const-string v4, "Interrupted!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2d

    :catch_78
    move-exception v0

    iget-object v4, p0, Lq/b;->f:Ljava/lang/StringBuilder;

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    move v0, v1

    goto :goto_2d

    :cond_8a
    const-string v1, ""

    goto :goto_3d

    :cond_8d
    iget v2, p0, Lq/b;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lq/b;->h:I

    iput-boolean v1, p0, Lq/b;->i:Z

    goto :goto_67
.end method

.method public b()V
    .registers 2

    iget v0, p0, Lq/b;->h:I

    if-nez v0, :cond_4

    :cond_4
    return-void
.end method
