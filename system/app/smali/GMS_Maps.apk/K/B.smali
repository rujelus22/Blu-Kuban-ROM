.class public Lk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lk/k;

.field private final c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private final d:Lcom/google/android/maps/driveabout/app/cK;

.field private final e:Lcom/google/android/maps/driveabout/app/aN;

.field private final f:Ljava/lang/StringBuilder;

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lk/b;->f:Ljava/lang/StringBuilder;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/b;->i:Z

    .line 46
    iput-object p1, p0, Lk/b;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lk/b;->b:Lk/k;

    .line 48
    iput-object p3, p0, Lk/b;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    .line 49
    iput-object p4, p0, Lk/b;->d:Lcom/google/android/maps/driveabout/app/cK;

    .line 50
    iput-object p5, p0, Lk/b;->e:Lcom/google/android/maps/driveabout/app/aN;

    .line 51
    return-void
.end method

.method private b(Lk/m;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 131
    iget-object v0, p0, Lk/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 132
    invoke-virtual {p1}, Lk/m;->a()Lk/a;

    move-result-object v0

    .line 133
    invoke-virtual {p1}, Lk/m;->d()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lk/b;->b:Lk/k;

    iget-object v3, p0, Lk/b;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iget-object v4, p0, Lk/b;->d:Lcom/google/android/maps/driveabout/app/cK;

    iget-object v5, p0, Lk/b;->e:Lcom/google/android/maps/driveabout/app/aN;

    iget-object v6, p0, Lk/b;->f:Ljava/lang/StringBuilder;

    invoke-interface/range {v0 .. v6}, Lk/a;->a(Ljava/util/HashMap;Lk/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 135
    invoke-virtual {p1}, Lk/m;->c()Z

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

.method private static c(Lk/m;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 139
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 141
    :try_start_5
    invoke-virtual {p0, v0}, Lk/m;->a(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 143
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :catch_d
    move-exception v1

    goto :goto_8
.end method


# virtual methods
.method protected a()J
    .registers 3

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(J)V
    .registers 3
    .parameter

    .prologue
    .line 59
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    return-void
.end method

.method public a(Lk/m;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    iget v0, p0, Lk/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lk/b;->g:I

    .line 76
    iget-object v0, p0, Lk/b;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 78
    invoke-virtual {p0}, Lk/b;->a()J

    move-result-wide v4

    .line 80
    const-wide/16 v2, 0x0

    .line 86
    :try_start_12
    invoke-virtual {p1}, Lk/m;->b()I

    move-result v0

    .line 87
    iget-boolean v6, p0, Lk/b;->i:Z

    if-eqz v6, :cond_1c

    mul-int/lit8 v0, v0, 0x3

    .line 88
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lk/b;->a()J

    move-result-wide v2

    sub-long/2addr v2, v4

    int-to-long v6, v0

    cmp-long v6, v2, v6

    if-gez v6, :cond_88

    .line 89
    invoke-direct {p0, p1}, Lk/b;->b(Lk/m;)Z
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_29} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_29} :catch_78

    move-result v6

    if-eqz v6, :cond_68

    .line 90
    const/4 v0, 0x1

    .line 103
    :goto_2d
    invoke-static {p1}, Lk/b;->c(Lk/m;)Ljava/lang/String;

    .line 104
    if-eqz v0, :cond_8d

    .line 107
    invoke-virtual {p1}, Lk/m;->b()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_8a

    const-string v1, " OVERTIME"

    .line 108
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

    invoke-virtual {p1}, Lk/m;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    :goto_67
    return v0

    .line 93
    :cond_68
    const-wide/16 v6, 0xc8

    :try_start_6a
    invoke-virtual {p0, v6, v7}, Lk/b;->a(J)V
    :try_end_6d
    .catch Ljava/lang/InterruptedException; {:try_start_6a .. :try_end_6d} :catch_6e
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6d} :catch_78

    goto :goto_1c

    .line 95
    :catch_6e
    move-exception v0

    .line 96
    iget-object v0, p0, Lk/b;->f:Ljava/lang/StringBuilder;

    const-string v4, "Interrupted!"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 99
    goto :goto_2d

    .line 97
    :catch_78
    move-exception v0

    .line 98
    iget-object v4, p0, Lk/b;->f:Ljava/lang/StringBuilder;

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    move v0, v1

    goto :goto_2d

    .line 107
    :cond_8a
    const-string v1, ""

    goto :goto_3d

    .line 113
    :cond_8d
    iget v2, p0, Lk/b;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lk/b;->h:I

    .line 114
    iput-boolean v1, p0, Lk/b;->i:Z

    goto :goto_67
.end method

.method public b()V
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lk/b;->h:I

    if-nez v0, :cond_4

    .line 128
    :cond_4
    return-void
.end method
