.class final Lcom/twitter/android/platform/g;
.super Landroid/os/AsyncTask;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/platform/g;->a:Landroid/content/Context;

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/Void;
    .registers 13

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    aget-object v0, p1, v1

    const-string v3, "%26"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v0, v1

    :goto_15
    if-ge v0, v7, :cond_2e

    aget-object v8, v3, v0

    const-string v9, "%3D"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2b

    aget-object v9, v8, v1

    const/4 v10, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_2e
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_33
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_e0
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_d3

    :try_start_38
    sget-object v0, Lcom/twitter/android/api/r;->b:Lorg/codehaus/jackson/a;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/a;->a(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_ed
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_f2

    move-result-object v3

    :try_start_3e
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonGenerator;->c()V

    const-string v0, "_category_"

    const-string v8, "client_event"

    invoke-virtual {v3, v0, v8}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "event_name"

    sget-object v8, Lcom/twitter/android/service/ScribeEvent;->aB:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v8}, Lcom/twitter/android/service/ScribeEvent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ts"

    invoke-virtual {v3, v0, v4, v5}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;J)V

    const-string v0, "referral_type"

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    const-string v4, "external_referer"

    const-string v0, "utm_source"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "medium"

    const-string v0, "utm_medium"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "campaign"

    const-string v0, "utm_campaign"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "utm_term"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_94

    const-string v4, "query_term"

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_94
    const-string v0, "rowindex"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ab

    const-string v4, "row_index"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;I)V

    :cond_ab
    const-string v0, "correctedQuery"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_ba

    const-string v4, "corrected_query"

    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jackson/JsonGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonGenerator;->d()V

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonGenerator;->e()V
    :try_end_c0
    .catchall {:try_start_3e .. :try_end_c0} :catchall_f0
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_c0} :catch_f6

    invoke-static {v3}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_c9
    iget-object v0, p0, Lcom/twitter/android/platform/g;->a:Landroid/content/Context;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;[B)V

    return-object v2

    :catch_d3
    move-exception v0

    move-object v0, v2

    move-object v1, v2

    :goto_d6
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_c9

    :catchall_e0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_e3
    invoke-static {v3}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_ed
    move-exception v0

    move-object v3, v2

    goto :goto_e3

    :catchall_f0
    move-exception v0

    goto :goto_e3

    :catch_f2
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_d6

    :catch_f6
    move-exception v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_d6
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/twitter/android/platform/g;->a([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
