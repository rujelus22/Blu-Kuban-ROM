.class public Lcom/android/bluetooth/opp/URLExtractor;
.super Ljava/lang/Object;
.source "URLExtractor.java"


# static fields
.field private static aURLExtractor:Lcom/android/bluetooth/opp/URLExtractor;


# instance fields
.field private final URL_REGEX:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "\\(?\\b(http://|https://|www[.])[-A-Za-z0-9+&@#/%?=~_()|!:,.;]*[-A-Za-z0-9+&@#/%=~_()|]"

    iput-object v0, p0, Lcom/android/bluetooth/opp/URLExtractor;->URL_REGEX:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/bluetooth/opp/URLExtractor;
    .registers 2

    .prologue
    .line 26
    const-class v1, Lcom/android/bluetooth/opp/URLExtractor;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/bluetooth/opp/URLExtractor;->aURLExtractor:Lcom/android/bluetooth/opp/URLExtractor;

    if-nez v0, :cond_e

    .line 27
    new-instance v0, Lcom/android/bluetooth/opp/URLExtractor;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/URLExtractor;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/URLExtractor;->aURLExtractor:Lcom/android/bluetooth/opp/URLExtractor;

    .line 29
    :cond_e
    sget-object v0, Lcom/android/bluetooth/opp/URLExtractor;->aURLExtractor:Lcom/android/bluetooth/opp/URLExtractor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAllLinks(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .parameter "srcString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, linkList:Ljava/util/ArrayList;
    const-string v4, "\\(?\\b(http://|https://|www[.])[-A-Za-z0-9+&@#/%?=~_()|!:,.;]*[-A-Za-z0-9+&@#/%=~_()|]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 45
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 46
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_f
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 47
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, urlString:Ljava/lang/String;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 49
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 51
    :cond_34
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 53
    .end local v3           #urlString:Ljava/lang/String;
    :cond_38
    return-object v0
.end method
