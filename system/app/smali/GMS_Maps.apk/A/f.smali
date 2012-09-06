.class public abstract LA/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LA/f;


# instance fields
.field protected final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, LA/f;->c:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static a(LA/f;)V
    .registers 2
    .parameter

    .prologue
    .line 479
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 480
    sput-object p0, LA/f;->a:LA/f;

    .line 482
    :cond_8
    return-void
.end method

.method private a(Ljava/io/Writer;)V
    .registers 5
    .parameter

    .prologue
    .line 378
    const/4 v2, 0x0

    .line 380
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_31

    .line 381
    :try_start_6
    invoke-virtual {p0, v1}, LA/f;->b(Ljava/io/BufferedWriter;)V

    .line 383
    invoke-virtual {p0}, LA/f;->a()Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LA/j;

    .line 385
    invoke-virtual {v0, v1}, LA/j;->c(Ljava/io/Writer;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_21

    goto :goto_11

    .line 390
    :catchall_21
    move-exception v0

    :goto_22
    if-eqz v1, :cond_27

    .line 391
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_27
    throw v0

    .line 388
    :cond_28
    :try_start_28
    invoke-virtual {p0, v1}, LA/f;->a(Ljava/io/BufferedWriter;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_21

    .line 390
    if-eqz v1, :cond_30

    .line 391
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 394
    :cond_30
    return-void

    .line 390
    :catchall_31
    move-exception v0

    move-object v1, v2

    goto :goto_22
.end method

.method public static b(LA/j;)V
    .registers 2
    .parameter

    .prologue
    .line 468
    sget-object v0, LA/f;->a:LA/f;

    .line 469
    if-eqz v0, :cond_7

    .line 470
    invoke-virtual {v0, p0}, LA/f;->a(LA/j;)V

    .line 472
    :cond_7
    return-void
.end method

.method public static j()LA/f;
    .registers 1

    .prologue
    .line 460
    sget-object v0, LA/f;->a:LA/f;

    return-object v0
.end method

.method protected static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 48
    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method protected static m(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 54
    if-nez p0, :cond_5

    const-string v0, "null"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public abstract a()Ljava/util/List;
.end method

.method public abstract a(LA/j;)V
.end method

.method protected a(Ljava/io/BufferedWriter;)V
    .registers 3
    .parameter

    .prologue
    .line 374
    const-string v0, "</event-log>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public a(Ljava/io/File;)V
    .registers 3
    .parameter

    .prologue
    .line 420
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, LA/f;->a(Ljava/io/Writer;)V

    .line 421
    return-void
.end method

.method protected b(Ljava/io/BufferedWriter;)V
    .registers 4
    .parameter

    .prologue
    .line 363
    const-string v0, "<event-log>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<app-info version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lh/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' server=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lh/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 366
    invoke-static {}, Lh/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LA/f;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 367
    const-string v0, "\n</app-info>\n"

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<android-build>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</android-build>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public b(Ljava/io/File;)V
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 441
    new-instance v0, LA/b;

    iget-object v1, p0, LA/f;->c:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, LA/b;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/location/Location;Landroid/location/Location;Landroid/location/Location;I)V

    .line 442
    invoke-virtual {v0}, LA/b;->a()V

    .line 443
    return-void
.end method

.method public g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, LA/f;->c:Landroid/content/Context;

    return-object v0
.end method

.method public h()V
    .registers 6

    .prologue
    .line 402
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_kk.mm.ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 403
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 404
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, LA/f;->c:Landroid/content/Context;

    invoke-static {v2}, Lh/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".xml"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0, v1}, LA/f;->a(Ljava/io/File;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_38

    .line 411
    :goto_37
    return-void

    .line 408
    :catch_38
    move-exception v0

    .line 409
    const-string v1, "Unable to dump event log to file"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .prologue
    .line 425
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 427
    :try_start_5
    invoke-direct {p0, v0}, LA/f;->a(Ljava/io/Writer;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_11

    .line 431
    :goto_8
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 428
    :catch_11
    move-exception v1

    goto :goto_8
.end method
