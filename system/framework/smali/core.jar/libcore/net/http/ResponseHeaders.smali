.class public final Llibcore/net/http/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String; = "X-Android-Received-Millis"

.field private static final SENT_MILLIS:Ljava/lang/String; = "X-Android-Sent-Millis"


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Llibcore/net/http/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private proxyAuthenticate:Ljava/lang/String;

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wwwAuthenticate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V
    .registers 13
    .parameter "uri"
    .parameter "headers"

    .prologue
    const/4 v9, -0x1

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    .line 90
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    .line 102
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 109
    iput v9, p0, Llibcore/net/http/ResponseHeaders;->contentLength:I

    .line 115
    iput-object p1, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    .line 116
    iput-object p2, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    .line 118
    new-instance v2, Llibcore/net/http/ResponseHeaders$1;

    invoke-direct {v2, p0}, Llibcore/net/http/ResponseHeaders$1;-><init>(Llibcore/net/http/ResponseHeaders;)V

    .line 136
    .local v2, handler:Llibcore/net/http/HeaderParser$CacheControlHandler;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1c
    invoke-virtual {p2}, Llibcore/net/http/RawHeaders;->length()I

    move-result v8

    if-ge v3, v8, :cond_133

    .line 137
    invoke-virtual {p2, v3}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, fieldName:Ljava/lang/String;
    invoke-virtual {p2, v3}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, value:Ljava/lang/String;
    const-string v8, "Cache-Control"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_38

    .line 140
    invoke-static {v6, v2}, Llibcore/net/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Llibcore/net/http/HeaderParser$CacheControlHandler;)V

    .line 136
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 141
    :cond_38
    const-string v8, "Date"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 142
    invoke-static {v6}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_35

    .line 143
    :cond_47
    const-string v8, "Expires"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 144
    invoke-static {v6}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_35

    .line 145
    :cond_56
    const-string v8, "Last-Modified"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 146
    invoke-static {v6}, Llibcore/net/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_35

    .line 147
    :cond_65
    const-string v8, "ETag"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 148
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_35

    .line 149
    :cond_70
    const-string v8, "Pragma"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 150
    const-string v8, "no-cache"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 151
    const/4 v8, 0x1

    iput-boolean v8, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    goto :goto_35

    .line 153
    :cond_84
    const-string v8, "Age"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 154
    invoke-static {v6}, Llibcore/net/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    goto :goto_35

    .line 155
    :cond_93
    const-string v8, "Vary"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c4

    .line 157
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 158
    new-instance v8, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 160
    :cond_ac
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_b4
    if-ge v4, v5, :cond_35

    aget-object v7, v0, v4

    .line 161
    .local v7, varyField:Ljava/lang/String;
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 160
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 163
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #varyField:Ljava/lang/String;
    :cond_c4
    const-string v8, "Content-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 164
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_35

    .line 165
    :cond_d0
    const-string v8, "Transfer-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 166
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_35

    .line 167
    :cond_dc
    const-string v8, "Content-Length"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ef

    .line 169
    :try_start_e4
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Llibcore/net/http/ResponseHeaders;->contentLength:I
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_ea} :catch_ec

    goto/16 :goto_35

    .line 170
    :catch_ec
    move-exception v8

    goto/16 :goto_35

    .line 172
    :cond_ef
    const-string v8, "Connection"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fb

    .line 173
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_35

    .line 174
    :cond_fb
    const-string v8, "Proxy-Authenticate"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_107

    .line 175
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    goto/16 :goto_35

    .line 176
    :cond_107
    const-string v8, "WWW-Authenticate"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_113

    .line 177
    iput-object v6, p0, Llibcore/net/http/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    goto/16 :goto_35

    .line 178
    :cond_113
    const-string v8, "X-Android-Sent-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_123

    .line 179
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_35

    .line 180
    :cond_123
    const-string v8, "X-Android-Received-Millis"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 181
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_35

    .line 184
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_133
    return-void
.end method

.method static synthetic access$002(Llibcore/net/http/ResponseHeaders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Llibcore/net/http/ResponseHeaders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Llibcore/net/http/ResponseHeaders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Llibcore/net/http/ResponseHeaders;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput p1, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Llibcore/net/http/ResponseHeaders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Llibcore/net/http/ResponseHeaders;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .registers 15
    .parameter "nowMillis"

    .prologue
    const-wide/16 v0, 0x0

    .line 287
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_13

    iget-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-object v10, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 290
    .local v0, apparentReceivedAge:J
    :cond_13
    iget v8, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_33

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Llibcore/net/http/ResponseHeaders;->ageSeconds:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 293
    .local v2, receivedAge:J
    :goto_25
    iget-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v10, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 294
    .local v6, responseDuration:J
    iget-wide v8, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v8

    .line 295
    .local v4, residentDuration:J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2           #receivedAge:J
    .end local v4           #residentDuration:J
    .end local v6           #responseDuration:J
    :cond_33
    move-wide v2, v0

    .line 290
    goto :goto_25
.end method

.method private computeFreshnessLifetime()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 303
    iget v6, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    .line 304
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 320
    :cond_10
    :goto_10
    return-wide v4

    .line 305
    :cond_11
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v6, :cond_32

    .line 306
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 307
    .local v2, servedMillis:J
    :goto_1f
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 308
    .local v0, delta:J
    cmp-long v6, v0, v4

    if-lez v6, :cond_30

    .end local v0           #delta:J
    :goto_2b
    move-wide v4, v0

    goto :goto_10

    .line 306
    .end local v2           #servedMillis:J
    :cond_2d
    iget-wide v2, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1f

    .restart local v0       #delta:J
    .restart local v2       #servedMillis:J
    :cond_30
    move-wide v0, v4

    .line 308
    goto :goto_2b

    .line 309
    .end local v0           #delta:J
    .end local v2           #servedMillis:J
    :cond_32
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_10

    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    .line 316
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_59

    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 317
    .restart local v2       #servedMillis:J
    :goto_48
    iget-object v6, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 318
    .restart local v0       #delta:J
    cmp-long v6, v0, v4

    if-lez v6, :cond_10

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    goto :goto_10

    .line 316
    .end local v0           #delta:J
    .end local v2           #servedMillis:J
    :cond_59
    iget-wide v2, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    goto :goto_48
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .registers 2
    .parameter "fieldName"

    .prologue
    .line 506
    const-string v0, "Connection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Keep-Alive"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Proxy-Authorization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "TE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Trailers"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Upgrade"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    const/4 v0, 0x1

    :goto_41
    return v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .registers 3

    .prologue
    .line 329
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public chooseResponseSource(JLlibcore/net/http/RequestHeaders;)Llibcore/net/http/ResponseSource;
    .registers 16
    .parameter "nowMillis"
    .parameter "request"

    .prologue
    const/4 v11, -0x1

    .line 399
    invoke-virtual {p0, p3}, Llibcore/net/http/ResponseHeaders;->isCacheable(Llibcore/net/http/RequestHeaders;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 400
    sget-object v8, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    .line 445
    :goto_9
    return-object v8

    .line 403
    :cond_a
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->isNoCache()Z

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 404
    :cond_16
    sget-object v8, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    goto :goto_9

    .line 407
    :cond_19
    invoke-direct {p0, p1, p2}, Llibcore/net/http/ResponseHeaders;->computeAge(J)J

    move-result-wide v0

    .line 408
    .local v0, ageMillis:J
    invoke-direct {p0}, Llibcore/net/http/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v2

    .line 410
    .local v2, freshMillis:J
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v8

    if-eq v8, v11, :cond_36

    .line 411
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 415
    :cond_36
    const-wide/16 v6, 0x0

    .line 416
    .local v6, minFreshMillis:J
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v8

    if-eq v8, v11, :cond_49

    .line 417
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 420
    :cond_49
    const-wide/16 v4, 0x0

    .line 421
    .local v4, maxStaleMillis:J
    iget-boolean v8, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v8, :cond_60

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v8

    if-eq v8, v11, :cond_60

    .line 422
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 425
    :cond_60
    iget-boolean v8, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    if-nez v8, :cond_9a

    add-long v8, v0, v6

    add-long v10, v2, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_9a

    .line 426
    add-long v8, v0, v6

    cmp-long v8, v8, v2

    if-ltz v8, :cond_7b

    .line 427
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v9, "Warning"

    const-string v10, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v8, v9, v10}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_7b
    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x18

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v8, v0, v8

    if-lez v8, :cond_96

    invoke-direct {p0}, Llibcore/net/http/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 430
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v9, "Warning"

    const-string v10, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v8, v9, v10}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_96
    sget-object v8, Llibcore/net/http/ResponseSource;->CACHE:Llibcore/net/http/ResponseSource;

    goto/16 :goto_9

    .line 435
    :cond_9a
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v8, :cond_b6

    .line 436
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {p3, v8}, Llibcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 441
    :cond_a3
    :goto_a3
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v8, :cond_ac

    .line 442
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    invoke-virtual {p3, v8}, Llibcore/net/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 445
    :cond_ac
    invoke-virtual {p3}, Llibcore/net/http/RequestHeaders;->hasConditions()Z

    move-result v8

    if-eqz v8, :cond_c0

    sget-object v8, Llibcore/net/http/ResponseSource;->CONDITIONAL_CACHE:Llibcore/net/http/ResponseSource;

    goto/16 :goto_9

    .line 437
    :cond_b6
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_a3

    .line 438
    iget-object v8, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {p3, v8}, Llibcore/net/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_a3

    .line 445
    :cond_c0
    sget-object v8, Llibcore/net/http/ResponseSource;->NETWORK:Llibcore/net/http/ResponseSource;

    goto/16 :goto_9
.end method

.method public combine(Llibcore/net/http/ResponseHeaders;)Llibcore/net/http/ResponseHeaders;
    .registers 8
    .parameter "network"

    .prologue
    .line 478
    new-instance v2, Llibcore/net/http/RawHeaders;

    invoke-direct {v2}, Llibcore/net/http/RawHeaders;-><init>()V

    .line 480
    .local v2, result:Llibcore/net/http/RawHeaders;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v4, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_3f

    .line 481
    iget-object v4, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, fieldName:Ljava/lang/String;
    iget-object v4, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, value:Ljava/lang/String;
    const-string v4, "Warning"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 480
    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 486
    :cond_2d
    invoke-static {v0}, Llibcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v0}, Llibcore/net/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2a

    .line 487
    :cond_3b
    invoke-virtual {v2, v0, v3}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 491
    .end local v0           #fieldName:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_3f
    const/4 v1, 0x0

    :goto_40
    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4}, Llibcore/net/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_60

    .line 492
    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    .restart local v0       #fieldName:Ljava/lang/String;
    invoke-static {v0}, Llibcore/net/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 494
    iget-object v4, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v4, v1}, Llibcore/net/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 498
    .end local v0           #fieldName:Ljava/lang/String;
    :cond_60
    new-instance v4, Llibcore/net/http/ResponseHeaders;

    iget-object v5, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-direct {v4, v5, v2}, Llibcore/net/http/ResponseHeaders;-><init>(Ljava/net/URI;Llibcore/net/http/RawHeaders;)V

    return-object v4
.end method

.method public getConnection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 260
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->contentLength:I

    return v0
.end method

.method public getEtag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires()Ljava/util/Date;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->expires:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaders()Llibcore/net/http/RawHeaders;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->proxyAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public getSMaxAgeSeconds()I
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    return v0
.end method

.method public getServedDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .registers 2

    .prologue
    .line 204
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->wwwAuthenticate:Ljava/lang/String;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .registers 3

    .prologue
    .line 200
    const-string v0, "close"

    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .registers 3

    .prologue
    .line 373
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Llibcore/net/http/RequestHeaders;)Z
    .registers 6
    .parameter "request"

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v2, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v2}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 342
    .local v0, responseCode:I
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1c

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_1c

    .line 365
    :cond_1b
    :goto_1b
    return v1

    .line 354
    :cond_1c
    invoke-virtual {p1}, Llibcore/net/http/RequestHeaders;->hasAuthorization()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-boolean v2, p0, Llibcore/net/http/ResponseHeaders;->isPublic:Z

    if-nez v2, :cond_2f

    iget-boolean v2, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v2, :cond_2f

    iget v2, p0, Llibcore/net/http/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 361
    :cond_2f
    iget-boolean v2, p0, Llibcore/net/http/ResponseHeaders;->noStore:Z

    if-nez v2, :cond_1b

    .line 365
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method public isChunked()Z
    .registers 3

    .prologue
    .line 196
    const-string v0, "chunked"

    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .registers 3

    .prologue
    .line 187
    const-string v0, "gzip"

    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMustRevalidate()Z
    .registers 2

    .prologue
    .line 244
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->mustRevalidate:Z

    return v0
.end method

.method public isNoCache()Z
    .registers 2

    .prologue
    .line 224
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->noCache:Z

    return v0
.end method

.method public isNoStore()Z
    .registers 2

    .prologue
    .line 228
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->noStore:Z

    return v0
.end method

.method public isPublic()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Llibcore/net/http/ResponseHeaders;->isPublic:Z

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .registers 8
    .parameter "sentRequestMillis"
    .parameter "receivedResponseMillis"

    .prologue
    .line 276
    iput-wide p1, p0, Llibcore/net/http/ResponseHeaders;->sentRequestMillis:J

    .line 277
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "X-Android-Sent-Millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-wide p3, p0, Llibcore/net/http/ResponseHeaders;->receivedResponseMillis:J

    .line 279
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "X-Android-Received-Millis"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Llibcore/net/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public stripContentEncoding()V
    .registers 3

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Llibcore/net/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Llibcore/net/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public validate(Llibcore/net/http/ResponseHeaders;)Z
    .registers 7
    .parameter "networkResponse"

    .prologue
    const/4 v0, 0x1

    .line 455
    iget-object v1, p1, Llibcore/net/http/ResponseHeaders;->headers:Llibcore/net/http/RawHeaders;

    invoke-virtual {v1}, Llibcore/net/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_c

    .line 470
    :cond_b
    :goto_b
    return v0

    .line 464
    :cond_c
    iget-object v1, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_24

    iget-object v1, p1, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_24

    iget-object v1, p1, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Llibcore/net/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_b

    .line 470
    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 382
    .local p1, cachedRequest:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, newRequest:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Llibcore/net/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 383
    .local v0, field:Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 384
    const/4 v2, 0x0

    .line 387
    .end local v0           #field:Ljava/lang/String;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x1

    goto :goto_21
.end method
