.class public final Ljava/net/URI;
.super Ljava/lang/Object;
.source "URI.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/URI$PartEncoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/net/URI;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final ALL_LEGAL_ENCODER:Llibcore/net/UriCodec; = null

.field private static final ASCII_ONLY:Llibcore/net/UriCodec; = null

.field static final AUTHORITY_ENCODER:Llibcore/net/UriCodec; = null

.field static final FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec; = null

.field static final PATH_ENCODER:Llibcore/net/UriCodec; = null

.field static final PUNCTUATION:Ljava/lang/String; = ",;:$&+="

.field static final UNRESERVED:Ljava/lang/String; = "_-!.~\'()*"

.field static final USER_INFO_ENCODER:Llibcore/net/UriCodec; = null

.field private static final serialVersionUID:J = -0x53fe87d1bc61b655L


# instance fields
.field private transient absolute:Z

.field private transient authority:Ljava/lang/String;

.field private transient fragment:Ljava/lang/String;

.field private transient hash:I

.field private transient host:Ljava/lang/String;

.field private transient opaque:Z

.field private transient path:Ljava/lang/String;

.field private transient port:I

.field private transient query:Ljava/lang/String;

.field private transient scheme:Ljava/lang/String;

.field private transient schemeSpecificPart:Ljava/lang/String;

.field private transient serverAuthority:Z

.field private string:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 139
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    .line 140
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    .line 141
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "@[]"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    .line 144
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "/@?"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->FILE_AND_QUERY_ENCODER:Llibcore/net/UriCodec;

    .line 147
    new-instance v0, Ljava/net/URI$PartEncoder;

    const-string v1, "?/[]@|"

    invoke-direct {v0, v1}, Ljava/net/URI$PartEncoder;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    .line 150
    new-instance v0, Ljava/net/URI$1;

    invoke-direct {v0}, Ljava/net/URI$1;-><init>()V

    sput-object v0, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v0, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v0, p0, Ljava/net/URI;->hash:I

    .line 204
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "scheme"
    .parameter "schemeSpecificPart"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .local v0, uri:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1a

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    :cond_1a
    if-eqz p2, :cond_21

    .line 220
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 222
    :cond_21
    if-eqz p3, :cond_2d

    .line 223
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 227
    :cond_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "scheme"
    .parameter "userInfo"
    .parameter "host"
    .parameter "port"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x3a

    const/4 v3, -0x1

    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v3, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v2, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v3, p0, Ljava/net/URI;->hash:I

    .line 237
    if-nez p1, :cond_1e

    if-nez p2, :cond_1e

    if-nez p3, :cond_1e

    if-nez p5, :cond_1e

    if-nez p6, :cond_1e

    if-nez p7, :cond_1e

    .line 239
    const-string v1, ""

    iput-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 290
    :goto_1d
    return-void

    .line 243
    :cond_1e
    if-eqz p1, :cond_38

    if-eqz p5, :cond_38

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual {p5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_38

    .line 244
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p5, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v0, uri:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_45

    .line 249
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_45
    if-nez p2, :cond_4b

    if-nez p3, :cond_4b

    if-eq p4, v3, :cond_50

    .line 254
    :cond_4b
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    :cond_50
    if-eqz p2, :cond_5c

    .line 258
    sget-object v1, Ljava/net/URI;->USER_INFO_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 259
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    :cond_5c
    if-eqz p3, :cond_90

    .line 264
    invoke-virtual {p3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_8d

    const/16 v1, 0x5d

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_8d

    const/16 v1, 0x5b

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_8d

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 267
    :cond_8d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_90
    if-eq p4, v3, :cond_98

    .line 271
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    :cond_98
    if-eqz p5, :cond_9f

    .line 276
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 279
    :cond_9f
    if-eqz p6, :cond_ab

    .line 280
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p6}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 284
    :cond_ab
    if-eqz p7, :cond_b7

    .line 285
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p7}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 289
    :cond_b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    goto/16 :goto_1d
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "scheme"
    .parameter "host"
    .parameter "path"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 298
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, v2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "scheme"
    .parameter "authority"
    .parameter "path"
    .parameter "query"
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 307
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Ljava/net/URI;->port:I

    .line 192
    iput-boolean v3, p0, Ljava/net/URI;->serverAuthority:Z

    .line 194
    iput v1, p0, Ljava/net/URI;->hash:I

    .line 308
    if-eqz p1, :cond_25

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_25

    .line 309
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Relative path"

    invoke-direct {v1, p3, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v0, uri:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_34

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 317
    :cond_34
    if-eqz p2, :cond_40

    .line 318
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    sget-object v1, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 322
    :cond_40
    if-eqz p3, :cond_47

    .line 323
    sget-object v1, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p3}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 325
    :cond_47
    if-eqz p4, :cond_53

    .line 326
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p4}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 329
    :cond_53
    if-eqz p5, :cond_5f

    .line 330
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    sget-object v1, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    invoke-virtual {v1, v0, p5}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 334
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V

    .line 335
    return-void
.end method

.method private convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "s"

    .prologue
    const/16 v6, 0x25

    const/4 v5, -0x1

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 754
    .local v2, result:Ljava/lang/StringBuilder;
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_11

    .line 765
    .end local p1
    :goto_10
    return-object p1

    .line 758
    .restart local p1
    :cond_11
    const/4 v1, 0x0

    .line 759
    .local v1, prevIndex:I
    :goto_12
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, index:I
    if-eq v0, v5, :cond_36

    .line 760
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    add-int/lit8 v0, v0, 0x3

    .line 763
    move v1, v0

    goto :goto_12

    .line 765
    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_10
.end method

.method public static create(Ljava/lang/String;)Ljava/net/URI;
    .registers 4
    .parameter "uri"

    .prologue
    .line 725
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 726
    :catch_6
    move-exception v0

    .line 727
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 1243
    if-eqz p1, :cond_7

    invoke-static {p1}, Llibcore/net/UriCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private duplicate()Ljava/net/URI;
    .registers 3

    .prologue
    .line 732
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0}, Ljava/net/URI;-><init>()V

    .line 733
    .local v0, clone:Ljava/net/URI;
    iget-boolean v1, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v1, v0, Ljava/net/URI;->absolute:Z

    .line 734
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 735
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 736
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 737
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    iput-boolean v1, v0, Ljava/net/URI;->opaque:Z

    .line 738
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 739
    iget v1, p0, Ljava/net/URI;->port:I

    iput v1, v0, Ljava/net/URI;->port:I

    .line 740
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 741
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 742
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 743
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iput-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 744
    iget-boolean v1, p0, Ljava/net/URI;->serverAuthority:Z

    iput-boolean v1, v0, Ljava/net/URI;->serverAuthority:Z

    .line 745
    return-object v0
.end method

.method private escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .parameter "first"
    .parameter "second"

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x25

    .line 773
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v4, v5, :cond_12

    .line 774
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 795
    :cond_11
    :goto_11
    return v3

    .line 777
    :cond_12
    const/4 v2, 0x0

    .line 779
    .local v2, prevIndex:I
    :goto_13
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_48

    invoke-virtual {p2, v7, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v0, :cond_48

    .line 780
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 782
    .local v1, match:Z
    if-eqz v1, :cond_11

    .line 786
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x3

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x3

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 788
    if-eqz v1, :cond_11

    .line 792
    add-int/lit8 v0, v0, 0x3

    .line 793
    move v2, v0

    .line 794
    goto :goto_13

    .line 795
    .end local v1           #match:Z
    :cond_48
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_11
.end method

.method public static getEffectivePort(Ljava/lang/String;I)I
    .registers 4
    .parameter "scheme"
    .parameter "specifiedPort"

    .prologue
    const/4 v0, -0x1

    .line 961
    if-eq p1, v0, :cond_4

    .line 970
    .end local p1
    :goto_3
    return p1

    .line 965
    .restart local p1
    :cond_4
    const-string v1, "http"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 966
    const/16 p1, 0x50

    goto :goto_3

    .line 967
    :cond_f
    const-string v1, "https"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 968
    const/16 p1, 0x1bb

    goto :goto_3

    :cond_1a
    move p1, v0

    .line 970
    goto :goto_3
.end method

.method private getHashString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1305
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 1306
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1307
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1309
    :cond_19
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_39

    .line 1310
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    :cond_22
    :goto_22
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 1338
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1339
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/URI;->convertHexToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1312
    :cond_39
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_4b

    .line 1313
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1314
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v1, :cond_63

    .line 1315
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    :cond_4b
    :goto_4b
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 1328
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    :cond_54
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 1332
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1333
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 1317
    :cond_63
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 1318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    :cond_7f
    iget-object v1, p0, Ljava/net/URI;->host:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1321
    iget v1, p0, Ljava/net/URI;->port:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/net/URI;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4b
.end method

.method private isValidDomainName(Ljava/lang/String;)Z
    .registers 11
    .parameter "host"

    .prologue
    const/4 v7, 0x0

    .line 571
    :try_start_1
    const-string v8, "-."

    invoke-static {p1, v8}, Llibcore/net/UriCodec;->validateSimple(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_25

    .line 576
    const/4 v4, 0x0

    .line 577
    .local v4, lastLabel:Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_f
    if-ge v3, v5, :cond_2a

    aget-object v6, v0, v3

    .line 578
    .local v6, token:Ljava/lang/String;
    move-object v4, v6

    .line 579
    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 594
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #lastLabel:Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #token:Ljava/lang/String;
    :cond_24
    :goto_24
    return v7

    .line 572
    :catch_25
    move-exception v2

    .line 573
    .local v2, e:Ljava/net/URISyntaxException;
    goto :goto_24

    .line 577
    .end local v2           #e:Ljava/net/URISyntaxException;
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #lastLabel:Ljava/lang/String;
    .restart local v5       #len$:I
    .restart local v6       #token:Ljava/lang/String;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 584
    .end local v6           #token:Ljava/lang/String;
    :cond_2a
    if-eqz v4, :cond_24

    .line 588
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    .line 589
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 590
    .local v1, ch:C
    const/16 v8, 0x30

    if-lt v1, v8, :cond_3e

    const/16 v8, 0x39

    if-le v1, v8, :cond_24

    .line 594
    .end local v1           #ch:C
    :cond_3e
    const/4 v7, 0x1

    goto :goto_24
.end method

.method private isValidHost(ZLjava/lang/String;)Z
    .registers 9
    .parameter "forceServer"
    .parameter "host"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 521
    const-string v4, "["

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 523
    const-string v4, "]"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 524
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Expected a closing square bracket for IPv6 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 527
    :cond_1b
    invoke-static {p2}, Ljava/net/InetAddress;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 566
    :cond_21
    :goto_21
    return v2

    .line 532
    :cond_22
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Malformed IPv6 address"

    invoke-direct {v2, p2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 537
    :cond_2a
    const/16 v4, 0x5b

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v5, :cond_3a

    const/16 v4, 0x5d

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v5, :cond_42

    .line 538
    :cond_3a
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 541
    :cond_42
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 542
    .local v1, index:I
    if-ltz v1, :cond_5e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_5e

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_70

    .line 545
    :cond_5e
    invoke-direct {p0, p2}, Ljava/net/URI;->isValidDomainName(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 548
    if-eqz p1, :cond_6e

    .line 549
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Illegal character in host name"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_6e
    move v2, v3

    .line 551
    goto :goto_21

    .line 556
    :cond_70
    :try_start_70
    invoke-static {p2}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 557
    .local v0, ia:Ljava/net/InetAddress;
    instance-of v4, v0, Ljava/net/Inet4Address;
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_76} :catch_84

    if-nez v4, :cond_21

    .line 563
    .end local v0           #ia:Ljava/net/InetAddress;
    :goto_78
    if-eqz p1, :cond_82

    .line 564
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v4, "Malformed IPv4 address"

    invoke-direct {v2, p2, v4, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    :cond_82
    move v2, v3

    .line 566
    goto :goto_21

    .line 560
    :catch_84
    move-exception v2

    goto :goto_78
.end method

.method private normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 7
    .parameter "path"
    .parameter "discardRelativePrefix"

    .prologue
    const/4 v3, -0x1

    .line 1047
    invoke-static {p1, p2}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 1053
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1054
    .local v0, colon:I
    if-eq v0, v3, :cond_2a

    .line 1055
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1056
    .local v1, slash:I
    if-eq v1, v3, :cond_17

    if-ge v0, v1, :cond_2a

    .line 1057
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "./"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1061
    .end local v1           #slash:I
    :cond_2a
    return-object p1
.end method

.method private parseAuthority(Z)V
    .registers 14
    .parameter "forceServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 437
    iget-object v8, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v8, :cond_7

    .line 501
    :cond_6
    :goto_6
    return-void

    .line 441
    :cond_7
    const/4 v7, 0x0

    .line 442
    .local v7, tempUserInfo:Ljava/lang/String;
    iget-object v4, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 443
    .local v4, temp:Ljava/lang/String;
    const/16 v8, 0x40

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 444
    .local v3, index:I
    const/4 v2, 0x0

    .line 445
    .local v2, hostIndex:I
    if-eq v3, v10, :cond_24

    .line 447
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 448
    iget-object v8, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v8, v7, v9}, Ljava/net/URI;->validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 449
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 450
    add-int/lit8 v2, v3, 0x1

    .line 453
    :cond_24
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 454
    const/16 v8, 0x5d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 457
    .local v1, endIndex:I
    const/4 v6, -0x1

    .line 458
    .local v6, tempPort:I
    if-eq v3, v10, :cond_6e

    if-ge v1, v3, :cond_6e

    .line 460
    invoke-virtual {v4, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 462
    .local v5, tempHost:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v3, v8, :cond_6f

    .line 464
    add-int/lit8 v8, v3, 0x1

    :try_start_43
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 465
    if-gez v6, :cond_6f

    .line 466
    if-eqz p1, :cond_6

    .line 467
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Invalid port number"

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_5d} :catch_5d

    .line 472
    :catch_5d
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/NumberFormatException;
    if-eqz p1, :cond_6

    .line 474
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Invalid port number"

    add-int v11, v2, v3

    add-int/lit8 v11, v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 481
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v5           #tempHost:Ljava/lang/String;
    :cond_6e
    move-object v5, v4

    .line 484
    .restart local v5       #tempHost:Ljava/lang/String;
    :cond_6f
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 485
    if-eqz p1, :cond_6

    .line 486
    new-instance v8, Ljava/net/URISyntaxException;

    iget-object v9, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    const-string v10, "Expected host"

    invoke-direct {v8, v9, v10, v2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 491
    :cond_81
    invoke-direct {p0, p1, v5}, Ljava/net/URI;->isValidHost(ZLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 497
    iput-object v7, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    .line 498
    iput-object v5, p0, Ljava/net/URI;->host:Ljava/lang/String;

    .line 499
    iput v6, p0, Ljava/net/URI;->port:I

    .line 500
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/net/URI;->serverAuthority:Z

    goto/16 :goto_6
.end method

.method private parseURI(Ljava/lang/String;Z)V
    .registers 15
    .parameter "uri"
    .parameter "forceServer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 350
    iput-object p1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 353
    const-string v6, "#"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {p1, v6, v10, v7}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v3

    .line 354
    .local v3, fragmentStart:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_24

    .line 355
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "fragment"

    invoke-virtual {v6, p1, v7, v8, v9}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 360
    :cond_24
    const-string v6, ":"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 361
    .local v1, colon:I
    const-string v6, "/?#"

    invoke-static {p1, v6, v10, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    if-ge v1, v6, :cond_5b

    .line 362
    iput-boolean v11, p0, Ljava/net/URI;->absolute:Z

    .line 363
    invoke-direct {p0, p1, v1}, Ljava/net/URI;->validateScheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 364
    add-int/lit8 v5, v1, 0x1

    .line 366
    .local v5, start:I
    if-ne v5, v3, :cond_46

    .line 367
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Scheme-specific part expected"

    invoke-direct {v6, p1, v7, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 371
    :cond_46
    const-string v6, "/"

    invoke-virtual {p1, v5, v6, v10, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_5e

    .line 372
    iput-boolean v11, p0, Ljava/net/URI;->opaque:Z

    .line 373
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "scheme specific part"

    invoke-virtual {v6, p1, v5, v3, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 410
    :goto_5a
    return-void

    .line 378
    .end local v5           #start:I
    :cond_5b
    iput-boolean v10, p0, Ljava/net/URI;->absolute:Z

    .line 379
    const/4 v5, 0x0

    .line 382
    .restart local v5       #start:I
    :cond_5e
    iput-boolean v10, p0, Ljava/net/URI;->opaque:Z

    .line 383
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 387
    const-string v6, "//"

    const/4 v7, 0x2

    invoke-virtual {p1, v5, v6, v10, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_b7

    .line 388
    add-int/lit8 v0, v5, 0x2

    .line 389
    .local v0, authorityStart:I
    const-string v6, "/?"

    invoke-static {p1, v6, v0, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v2

    .line 390
    .local v2, fileStart:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v0, v6, :cond_89

    .line 391
    new-instance v6, Ljava/net/URISyntaxException;

    const-string v7, "Authority expected"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 393
    :cond_89
    if-ge v0, v2, :cond_95

    .line 394
    sget-object v6, Ljava/net/URI;->AUTHORITY_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "authority"

    invoke-virtual {v6, p1, v0, v2, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    .line 401
    .end local v0           #authorityStart:I
    :cond_95
    :goto_95
    const-string v6, "?"

    invoke-static {p1, v6, v2, v3}, Llibcore/net/url/UrlUtils;->findFirstOf(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 402
    .local v4, queryStart:I
    sget-object v6, Ljava/net/URI;->PATH_ENCODER:Llibcore/net/UriCodec;

    const-string v7, "path"

    invoke-virtual {v6, p1, v2, v4, v7}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .line 405
    if-ge v4, v3, :cond_b3

    .line 406
    sget-object v6, Ljava/net/URI;->ALL_LEGAL_ENCODER:Llibcore/net/UriCodec;

    add-int/lit8 v7, v4, 0x1

    const-string v8, "query"

    invoke-virtual {v6, p1, v7, v3, v8}, Llibcore/net/UriCodec;->validate(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/net/URI;->query:Ljava/lang/String;

    .line 409
    :cond_b3
    invoke-direct {p0, p2}, Ljava/net/URI;->parseAuthority(Z)V

    goto :goto_5a

    .line 397
    .end local v2           #fileStart:I
    .end local v4           #queryStart:I
    :cond_b7
    move v2, v5

    .restart local v2       #fileStart:I
    goto :goto_95
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1361
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1363
    :try_start_3
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->parseURI(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_9} :catch_a

    .line 1367
    return-void

    .line 1364
    :catch_a
    move-exception v0

    .line 1365
    .local v0, e:Ljava/net/URISyntaxException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setSchemeSpecificPart()V
    .registers 4

    .prologue
    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1214
    .local v0, ssp:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    :cond_21
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_2a

    .line 1218
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1220
    :cond_2a
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_46

    .line 1221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    .line 1225
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1226
    return-void
.end method

.method private validateScheme(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter "uri"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 413
    if-nez p2, :cond_b

    .line 414
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Scheme expected"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 417
    :cond_b
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, p2, :cond_23

    .line 418
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Llibcore/net/url/UrlUtils;->isValidSchemeChar(IC)Z

    move-result v1

    if-nez v1, :cond_20

    .line 419
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, "Illegal character in scheme"

    invoke-direct {v1, p1, v2, v3}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    .line 417
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 423
    :cond_23
    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateUserInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter "uri"
    .parameter "userInfo"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 506
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 507
    .local v0, ch:C
    const/16 v2, 0x5d

    if-eq v0, v2, :cond_13

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1d

    .line 508
    :cond_13
    new-instance v2, Ljava/net/URISyntaxException;

    const-string v3, "Illegal character in userInfo"

    add-int v4, p3, v1

    invoke-direct {v2, p1, v3, v4}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 505
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    .end local v0           #ch:C
    :cond_20
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1371
    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    .line 1372
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1373
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 132
    check-cast p1, Ljava/net/URI;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/net/URI;->compareTo(Ljava/net/URI;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/net/URI;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 616
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_c

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_c

    move v0, v1

    .line 713
    :cond_b
    :goto_b
    return v0

    .line 618
    :cond_c
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_16

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_16

    move v0, v2

    .line 619
    goto :goto_b

    .line 620
    :cond_16
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_28

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 621
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 622
    .local v0, ret:I
    if-nez v0, :cond_b

    .line 628
    .end local v0           #ret:I
    :cond_28
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_32

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_32

    move v0, v1

    .line 629
    goto :goto_b

    .line 630
    :cond_32
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_3c

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_3c

    move v0, v2

    .line 631
    goto :goto_b

    .line 632
    :cond_3c
    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_58

    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_58

    .line 633
    iget-object v3, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 634
    .restart local v0       #ret:I
    if-nez v0, :cond_b

    .line 701
    :cond_4e
    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_f9

    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_f9

    move v0, v2

    .line 702
    goto :goto_b

    .line 642
    .end local v0           #ret:I
    :cond_58
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_62

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_62

    move v0, v2

    .line 643
    goto :goto_b

    .line 644
    :cond_62
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_6c

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_6c

    move v0, v1

    .line 645
    goto :goto_b

    .line 646
    :cond_6c
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_c5

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_c5

    .line 647
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_bb

    iget-object v3, p1, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_bb

    .line 649
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_86

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_86

    move v0, v2

    .line 650
    goto :goto_b

    .line 651
    :cond_86
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_91

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_91

    move v0, v1

    .line 652
    goto/16 :goto_b

    .line 653
    :cond_91
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_a3

    iget-object v3, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_a3

    .line 654
    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 655
    .restart local v0       #ret:I
    if-nez v0, :cond_b

    .line 661
    .end local v0           #ret:I
    :cond_a3
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 662
    .restart local v0       #ret:I
    if-nez v0, :cond_b

    .line 667
    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, p1, Ljava/net/URI;->port:I

    if-eq v3, v4, :cond_c5

    .line 668
    iget v1, p0, Ljava/net/URI;->port:I

    iget v2, p1, Ljava/net/URI;->port:I

    sub-int v0, v1, v2

    goto/16 :goto_b

    .line 672
    .end local v0           #ret:I
    :cond_bb
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 673
    .restart local v0       #ret:I
    if-nez v0, :cond_b

    .line 681
    .end local v0           #ret:I
    :cond_c5
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 682
    .restart local v0       #ret:I
    if-nez v0, :cond_b

    .line 688
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_da

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_da

    move v0, v2

    .line 689
    goto/16 :goto_b

    .line 690
    :cond_da
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_e5

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_e5

    move v0, v1

    .line 691
    goto/16 :goto_b

    .line 692
    :cond_e5
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 693
    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 694
    if-eqz v0, :cond_4e

    goto/16 :goto_b

    .line 703
    :cond_f9
    iget-object v2, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v2, :cond_104

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_104

    move v0, v1

    .line 704
    goto/16 :goto_b

    .line 705
    :cond_104
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_116

    iget-object v1, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_116

    .line 706
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v2, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 707
    if-nez v0, :cond_b

    .line 713
    :cond_116
    const/4 v0, 0x0

    goto/16 :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 799
    instance-of v3, p1, Ljava/net/URI;

    if-nez v3, :cond_7

    .line 874
    :cond_6
    :goto_6
    return v1

    :cond_7
    move-object v0, p1

    .line 802
    check-cast v0, Ljava/net/URI;

    .line 804
    .local v0, uri:Ljava/net/URI;
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_12

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_12
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 807
    :cond_1a
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_2c

    .line 808
    iget-object v3, v0, Ljava/net/URI;->fragment:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 813
    :cond_2c
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_34

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_34
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_3c

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 816
    :cond_3c
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v3, :cond_4e

    .line 817
    iget-object v3, v0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 822
    :cond_4e
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_5f

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_5f

    .line 823
    iget-object v1, v0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_6

    .line 825
    :cond_5f
    iget-boolean v3, v0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_6

    .line 826
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 830
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_79

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_79
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_81

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 833
    :cond_81
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_93

    iget-object v3, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v3, :cond_93

    .line 834
    iget-object v3, v0, Ljava/net/URI;->query:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 839
    :cond_93
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_9b

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_9b
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_a3

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 842
    :cond_a3
    iget-object v3, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_102

    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_102

    .line 843
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_b3

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_b3
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_bb

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 846
    :cond_bb
    iget-object v3, v0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_cd

    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    if-nez v3, :cond_cd

    .line 848
    iget-object v1, v0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_6

    .line 850
    :cond_cd
    iget-object v3, p0, Ljava/net/URI;->host:Ljava/lang/String;

    iget-object v4, v0, Ljava/net/URI;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 854
    iget v3, p0, Ljava/net/URI;->port:I

    iget v4, v0, Ljava/net/URI;->port:I

    if-ne v3, v4, :cond_6

    .line 858
    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_e5

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v3, :cond_6

    :cond_e5
    iget-object v3, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_ed

    iget-object v3, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 861
    :cond_ed
    iget-object v1, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_ff

    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    if-eqz v1, :cond_ff

    .line 862
    iget-object v1, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    iget-object v2, v0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/net/URI;->escapedEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_6

    :cond_ff
    move v1, v2

    .line 864
    goto/16 :goto_6

    :cond_102
    move v1, v2

    .line 869
    goto/16 :goto_6
.end method

.method public getAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectivePort()I
    .registers 3

    .prologue
    .line 951
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget v1, p0, Ljava/net/URI;->port:I

    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1007
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 938
    iget-object v0, p0, Ljava/net/URI;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 946
    iget v0, p0, Ljava/net/URI;->port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 992
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawAuthority()Ljava/lang/String;
    .registers 2

    .prologue
    .line 915
    iget-object v0, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public getRawFragment()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1015
    iget-object v0, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getRawPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 985
    iget-object v0, p0, Ljava/net/URI;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRawQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 999
    iget-object v0, p0, Ljava/net/URI;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRawSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 899
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    return-object v0
.end method

.method public getRawUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 883
    iget-object v0, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .registers 2

    .prologue
    .line 891
    iget-object v0, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 923
    iget-object v0, p0, Ljava/net/URI;->userInfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/net/URI;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 1019
    iget v0, p0, Ljava/net/URI;->hash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1020
    invoke-direct {p0}, Ljava/net/URI;->getHashString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Ljava/net/URI;->hash:I

    .line 1022
    :cond_f
    iget v0, p0, Ljava/net/URI;->hash:I

    return v0
.end method

.method public isAbsolute()Z
    .registers 2

    .prologue
    .line 1031
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 1040
    iget-boolean v0, p0, Ljava/net/URI;->opaque:Z

    return v0
.end method

.method public normalize()Ljava/net/URI;
    .registers 5

    .prologue
    .line 1071
    iget-boolean v2, p0, Ljava/net/URI;->opaque:Z

    if-eqz v2, :cond_5

    .line 1084
    .end local p0
    :cond_4
    :goto_4
    return-object p0

    .line 1074
    .restart local p0
    :cond_5
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1076
    .local v0, normalizedPath:Ljava/lang/String;
    iget-object v2, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1081
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v1

    .line 1082
    .local v1, result:Ljava/net/URI;
    iput-object v0, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1083
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p0, v1

    .line 1084
    goto :goto_4
.end method

.method public parseServerAuthority()Ljava/net/URI;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1098
    iget-boolean v0, p0, Ljava/net/URI;->serverAuthority:Z

    if-nez v0, :cond_8

    .line 1099
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/URI;->parseAuthority(Z)V

    .line 1101
    :cond_8
    return-object p0
.end method

.method public relativize(Ljava/net/URI;)Ljava/net/URI;
    .registers 8
    .parameter "relative"

    .prologue
    const/4 v5, 0x0

    .line 1113
    iget-boolean v3, p1, Ljava/net/URI;->opaque:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_a

    .line 1155
    .end local p1
    :cond_9
    :goto_9
    return-object p1

    .line 1117
    .restart local p1
    :cond_a
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_5a

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 1122
    :cond_12
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_65

    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 1128
    :cond_1a
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1129
    .local v2, thisPath:Ljava/lang/String;
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-direct {p0, v3, v5}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, relativePath:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1137
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1144
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1149
    :cond_3e
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1}, Ljava/net/URI;-><init>()V

    .line 1150
    .local v1, result:Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1151
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v1, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1153
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1154
    invoke-direct {v1}, Ljava/net/URI;->setSchemeSpecificPart()V

    move-object p1, v1

    .line 1155
    goto :goto_9

    .line 1117
    .end local v0           #relativePath:Ljava/lang/String;
    .end local v1           #result:Ljava/net/URI;
    .end local v2           #thisPath:Ljava/lang/String;
    :cond_5a
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_9

    .line 1122
    :cond_65
    iget-object v3, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    iget-object v4, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_9
.end method

.method public resolve(Ljava/lang/String;)Ljava/net/URI;
    .registers 3
    .parameter "relative"

    .prologue
    .line 1239
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public resolve(Ljava/net/URI;)Ljava/net/URI;
    .registers 8
    .parameter "relative"

    .prologue
    .line 1167
    iget-boolean v3, p1, Ljava/net/URI;->absolute:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Ljava/net/URI;->opaque:Z

    if-eqz v3, :cond_a

    :cond_8
    move-object v2, p1

    .line 1204
    :goto_9
    return-object v2

    .line 1171
    :cond_a
    iget-object v3, p1, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v3, :cond_1b

    .line 1174
    invoke-direct {p1}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1175
    .local v2, result:Ljava/net/URI;
    iget-object v3, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->scheme:Ljava/lang/String;

    .line 1176
    iget-boolean v3, p0, Ljava/net/URI;->absolute:Z

    iput-boolean v3, v2, Ljava/net/URI;->absolute:Z

    goto :goto_9

    .line 1180
    .end local v2           #result:Ljava/net/URI;
    :cond_1b
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p1, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-nez v3, :cond_34

    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    if-nez v3, :cond_34

    .line 1182
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1183
    .restart local v2       #result:Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    goto :goto_9

    .line 1187
    .end local v2           #result:Ljava/net/URI;
    :cond_34
    invoke-direct {p0}, Ljava/net/URI;->duplicate()Ljava/net/URI;

    move-result-object v2

    .line 1188
    .restart local v2       #result:Ljava/net/URI;
    iget-object v3, p1, Ljava/net/URI;->fragment:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->fragment:Ljava/lang/String;

    .line 1189
    iget-object v3, p1, Ljava/net/URI;->query:Ljava/lang/String;

    iput-object v3, v2, Ljava/net/URI;->query:Ljava/lang/String;

    .line 1191
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1193
    iget-object v1, p1, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1202
    .local v1, resolvedPath:Ljava/lang/String;
    :goto_4c
    iget-object v3, v2, Ljava/net/URI;->authority:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Ljava/net/URI;->normalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/net/URI;->path:Ljava/lang/String;

    .line 1203
    invoke-direct {v2}, Ljava/net/URI;->setSchemeSpecificPart()V

    goto :goto_9

    .line 1194
    .end local v1           #resolvedPath:Ljava/lang/String;
    :cond_5d
    iget-object v3, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_68

    .line 1196
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    .restart local v1       #resolvedPath:Ljava/lang/String;
    goto :goto_4c

    .line 1199
    .end local v1           #resolvedPath:Ljava/lang/String;
    :cond_68
    iget-object v3, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 1200
    .local v0, endIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/URI;->path:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #resolvedPath:Ljava/lang/String;
    goto :goto_4c
.end method

.method public toASCIIString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1254
    .local v0, result:Ljava/lang/StringBuilder;
    sget-object v1, Ljava/net/URI;->ASCII_ONLY:Llibcore/net/UriCodec;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Llibcore/net/UriCodec;->appendEncoded(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1262
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1263
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1295
    :goto_6
    return-object v1

    .line 1266
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1267
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 1268
    iget-object v1, p0, Ljava/net/URI;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1271
    :cond_1a
    iget-boolean v1, p0, Ljava/net/URI;->opaque:Z

    if-eqz v1, :cond_3a

    .line 1272
    iget-object v1, p0, Ljava/net/URI;->schemeSpecificPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_23
    :goto_23
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    if-eqz v1, :cond_31

    .line 1290
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1291
    iget-object v1, p0, Ljava/net/URI;->fragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1294
    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    .line 1295
    iget-object v1, p0, Ljava/net/URI;->string:Ljava/lang/String;

    goto :goto_6

    .line 1274
    :cond_3a
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    if-eqz v1, :cond_48

    .line 1275
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v1, p0, Ljava/net/URI;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_48
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 1280
    iget-object v1, p0, Ljava/net/URI;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :cond_51
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 1284
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1285
    iget-object v1, p0, Ljava/net/URI;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23
.end method

.method public toURL()Ljava/net/URL;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1354
    iget-boolean v0, p0, Ljava/net/URI;->absolute:Z

    if-nez v0, :cond_21

    .line 1355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI is not absolute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1357
    :cond_21
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
