.class public Lcom/estrongs/android/pop/esclasses/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/util/Map;

.field private static c:[Ljava/util/Map;

.field private static d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const v3, 0x7f06003e

    const/4 v0, 0x0

    sput-object v0, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/a;->e:Ljava/util/HashMap;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "en"

    const v2, 0x7f060039

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "cs"

    const v2, 0x7f060035

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "da"

    const v2, 0x7f060036

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "el"

    const v2, 0x7f060038

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "es"

    const v2, 0x7f06003a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "he"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "iw"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "nl"

    const v2, 0x7f060041

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "pl"

    const v2, 0x7f060042

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "pt"

    const v2, 0x7f060043

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "pt_pt"

    const v2, 0x7f060044

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "ir"

    const v2, 0x7f06003c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "ru"

    const v2, 0x7f060045

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "sk"

    const v2, 0x7f060046

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "sr"

    const v2, 0x7f060047

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "sv"

    const v2, 0x7f060048

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "tr"

    const v2, 0x7f060049

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "vi"

    const v2, 0x7f06004b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "cn"

    const v2, 0x7f060034

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "tw"

    const v2, 0x7f06004a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "ja"

    const v2, 0x7f06003f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "ko"

    const v2, 0x7f060040

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "fr"

    const v2, 0x7f06003b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "it"

    const v2, 0x7f06003d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "de"

    const v2, 0x7f060037

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    const-string v1, "ca"

    const v2, 0x7f060033

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->e:Ljava/util/HashMap;

    const-string v1, "pt_pt"

    const-string v2, "pt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x32000

    sput v0, Lcom/estrongs/android/pop/esclasses/a;->f:I

    return-void
.end method

.method private static a(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_2
    sget v2, Lcom/estrongs/android/pop/esclasses/a;->f:I

    new-array v4, v2, [B

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_28

    move-result-object v2

    move v3, v0

    :goto_f
    :try_start_f
    sget v0, Lcom/estrongs/android/pop/esclasses/a;->f:I

    sub-int/2addr v0, v3

    invoke-virtual {v2, v4, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_25

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1f} :catch_41

    if-eqz v2, :cond_24

    :try_start_21
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_39

    :cond_24
    :goto_24
    return-object v0

    :cond_25
    add-int/2addr v0, v3

    move v3, v0

    goto :goto_f

    :catch_28
    move-exception v0

    move-object v0, v1

    :goto_2a
    if-eqz v0, :cond_2f

    :try_start_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_3b

    :cond_2f
    :goto_2f
    move-object v0, v1

    goto :goto_24

    :catchall_31
    move-exception v0

    move-object v2, v1

    :goto_33
    if-eqz v2, :cond_38

    :try_start_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_3d

    :cond_38
    :goto_38
    throw v0

    :catch_39
    move-exception v1

    goto :goto_24

    :catch_3b
    move-exception v0

    goto :goto_2f

    :catch_3d
    move-exception v1

    goto :goto_38

    :catchall_3f
    move-exception v0

    goto :goto_33

    :catch_41
    move-exception v0

    move-object v0, v2

    goto :goto_2a
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_6

    if-nez p0, :cond_8

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    sget-object v2, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_b
    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1f

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    if-eqz v1, :cond_1f

    const/4 v1, 0x0

    :goto_1a
    sget-object v3, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    array-length v3, v3

    if-lt v1, v3, :cond_24

    :cond_1f
    monitor-exit v2

    goto :goto_7

    :catchall_21
    move-exception v0

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    sget-object v3, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    aget-object v3, v3, v1

    if-eqz v3, :cond_36

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_21

    if-nez v0, :cond_1f

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-object v2

    :cond_11
    move-object v1, v2

    check-cast v1, [Ljava/util/Map;

    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/esclasses/a;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    new-instance v3, Lorg/json/simple/parser/JSONParser;

    invoke-direct {v3}, Lorg/json/simple/parser/JSONParser;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/simple/parser/JSONParser;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_29} :catch_7f

    if-eqz p2, :cond_48

    :try_start_2b
    sget-object v3, Lcom/estrongs/android/pop/esclasses/a;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_48

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    new-array v3, v3, [Ljava/util/Map;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_42} :catch_82

    move v1, v4

    :goto_43
    :try_start_43
    array-length v6, v3

    if-lt v1, v6, :cond_4a

    sput-object v3, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    :cond_48
    move-object v2, v0

    goto :goto_10

    :cond_4a
    aget-object v6, v5, v1

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/estrongs/android/pop/esclasses/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v6

    aput-object v6, v3, v1

    aget-object v6, v3, v1

    if-nez v6, :cond_7c

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5d} :catch_5d

    :catch_5d
    move-exception v1

    move-object v8, v1

    move-object v1, v3

    move-object v3, v0

    move-object v0, v8

    :goto_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_6a

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_6a
    if-eqz v1, :cond_10

    move v0, v4

    :goto_6d
    array-length v3, v1

    if-ge v0, v3, :cond_10

    aget-object v3, v1, v0

    if-eqz v3, :cond_79

    aget-object v3, v1, v0

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    :cond_79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :catch_7f
    move-exception v0

    move-object v3, v2

    goto :goto_62

    :catch_82
    move-exception v3

    move-object v8, v3

    move-object v3, v0

    move-object v0, v8

    goto :goto_62
.end method

.method private static a()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_f
    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    array-length v1, v1

    if-lt v0, v1, :cond_19

    :cond_14
    sput-object v2, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    sput-object v2, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    return-void

    :cond_19
    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    aget-object v1, v1, v0

    if-eqz v1, :cond_26

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->P()Ljava/lang/String;

    move-result-object v1

    const-string v3, "-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v0, "CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "cn"

    :cond_32
    :goto_32
    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_5a

    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    :goto_3e
    return-void

    :cond_3f
    const-string v0, "tw"

    goto :goto_32

    :cond_42
    const-string v1, "pt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v0, "pt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "pt_pt"

    goto :goto_32

    :cond_55
    const-string v0, "pt"

    goto :goto_32

    :cond_58
    move-object v0, v1

    goto :goto_32

    :cond_5a
    sget-object v1, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_5d
    invoke-static {}, Lcom/estrongs/android/pop/esclasses/a;->a()V

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/pop/esclasses/a;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    sput-object v0, Lcom/estrongs/android/pop/esclasses/a;->a:Ljava/lang/String;

    monitor-exit v1

    goto :goto_3e

    :catchall_6b
    move-exception v0

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_6b

    throw v0
.end method

.method public static b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_8

    if-nez p0, :cond_a

    :cond_8
    move-object v0, v2

    :goto_9
    return-object v0

    :cond_a
    sget-object v4, Lcom/estrongs/android/pop/esclasses/a;->d:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_d
    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    if-nez v0, :cond_21

    sget-object v3, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    if-eqz v3, :cond_21

    move v3, v1

    :goto_1c
    sget-object v5, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    array-length v5, v5

    if-lt v3, v5, :cond_27

    :cond_21
    move-object v3, v0

    :goto_22
    monitor-exit v4

    if-nez v3, :cond_41

    move-object v0, v2

    goto :goto_9

    :cond_27
    sget-object v5, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    aget-object v5, v5, v3

    if-eqz v5, :cond_3b

    sget-object v0, Lcom/estrongs/android/pop/esclasses/a;->c:[Ljava/util/Map;

    aget-object v0, v0, v3

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/simple/JSONArray;

    if-eqz v0, :cond_3b

    move-object v3, v0

    goto :goto_22

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catchall_3e
    move-exception v0

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    invoke-virtual {v3}, Lorg/json/simple/JSONArray;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_48
    invoke-virtual {v3}, Lorg/json/simple/JSONArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_50

    move-object v0, v2

    goto :goto_9

    :cond_50
    invoke-virtual {v3, v0}, Lorg/json/simple/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_48
.end method

.method public static c(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/a;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
