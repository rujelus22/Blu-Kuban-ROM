.class public final Lcom/acquariusoft/UpdateMe/b/g;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .registers 12

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/g;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/g;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/g;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/g;->d:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    iput v1, p0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/acquariusoft/UpdateMe/b/g;->h:Z

    iput-boolean v1, p0, Lcom/acquariusoft/UpdateMe/b/g;->i:Z

    :try_start_26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v2, "getprop"

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v4, 0x1000

    new-array v4, v4, [C

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :goto_47
    invoke-virtual {v2, v4}, Ljava/io/BufferedReader;->read([C)I

    move-result v6

    if-gtz v6, :cond_62

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_5f
    if-lt v0, v5, :cond_6e

    return-void

    :cond_62
    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_66} :catch_67
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_66} :catch_259

    goto :goto_47

    :catch_67
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6e
    :try_start_6e
    aget-object v2, v4, v0

    const-string v6, "\\]: \\["

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v2, v6

    const/4 v7, 0x2

    if-ne v2, v7, :cond_251

    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.name"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->a:Ljava/lang/String;

    :cond_a7
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.version"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->b:Ljava/lang/String;

    :cond_d4
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.urlcheck"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->c:Ljava/lang/String;

    :cond_101
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.urlelement"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_131

    iget-object v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->d:Ljava/util/List;

    const/4 v7, 0x1

    aget-object v7, v6, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v6, v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_131
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.useragent"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15e

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->e:Ljava/lang/String;

    :cond_15e
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.reboottype"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18f

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->f:I

    :cond_18f
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.filter"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bc

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->g:Ljava/lang/String;

    :cond_1bc
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.downloaddir"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/acquariusoft/UpdateMe/ao;->a:Ljava/lang/String;

    :cond_1e9
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.disableinstalledapps"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21d

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v8, v6, v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_255

    move v2, v3

    :goto_21b
    iput-boolean v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->h:Z

    :cond_21d
    const/4 v2, 0x0

    aget-object v2, v6, v2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "updateme.disablescripts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_251

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    aget-object v6, v6, v8

    const/16 v8, 0x5d

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_257

    move v2, v3

    :goto_24f
    iput-boolean v2, p0, Lcom/acquariusoft/UpdateMe/b/g;->i:Z
    :try_end_251
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_251} :catch_67
    .catch Ljava/lang/InterruptedException; {:try_start_6e .. :try_end_251} :catch_259

    :cond_251
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5f

    :cond_255
    move v2, v1

    goto :goto_21b

    :cond_257
    move v2, v1

    goto :goto_24f

    :catch_259
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
