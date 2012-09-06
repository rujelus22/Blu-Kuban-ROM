.class public final Lade;
.super Ljava/lang/Object;
.source "HttpMediaType.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/lang/String;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 68
    const-string v0, "[\\w!#$&.+\\-\\^_]+|[*]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lade;->a:Ljava/util/regex/Pattern;

    .line 72
    const-string v0, "[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lade;->b:Ljava/util/regex/Pattern;

    .line 78
    const-string v0, "[^\\s/=;\"]+"

    .line 79
    const-string v1, ";.*"

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\s*("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")/("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\s*("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lade;->c:Ljava/util/regex/Pattern;

    .line 85
    const-string v1, "\"([^\"]*)\""

    .line 86
    const-string v2, "[^\\s;/\"=]*"

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\s*;\\s*("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lade;->d:Ljava/util/regex/Pattern;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "application"

    iput-object v0, p0, Lade;->a:Ljava/lang/String;

    .line 56
    const-string v0, "octet-stream"

    iput-object v0, p0, Lade;->b:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lade;->a:Ljava/util/Map;

    .line 108
    invoke-direct {p0, p1}, Lade;->d(Ljava/lang/String;)Lade;

    .line 109
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 241
    sget-object v0, Lade;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 290
    if-nez p0, :cond_4

    if-eqz p1, :cond_18

    :cond_4
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    new-instance v0, Lade;

    invoke-direct {v0, p0}, Lade;-><init>(Ljava/lang/String;)V

    new-instance v1, Lade;

    invoke-direct {v1, p1}, Lade;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lade;->a(Lade;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 245
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lade;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 163
    sget-object v0, Lade;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Type must be in the \'maintype/subtype; parameter=value\' format"

    invoke-static {v1, v2}, LafQ;->a(ZLjava/lang/Object;)V

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lade;->a(Ljava/lang/String;)Lade;

    .line 168
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lade;->b(Ljava/lang/String;)Lade;

    .line 169
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_44

    .line 171
    sget-object v1, Lade;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 172
    :goto_2c
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 174
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-nez v0, :cond_40

    .line 177
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_40
    invoke-virtual {p0, v2, v0}, Lade;->a(Ljava/lang/String;Ljava/lang/String;)Lade;

    goto :goto_2c

    .line 182
    :cond_44
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lade;
    .registers 4
    .parameter

    .prologue
    .line 117
    sget-object v0, Lade;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Type contains reserved characters"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 119
    iput-object p1, p0, Lade;->a:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lade;->c:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lade;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 192
    if-nez p2, :cond_6

    .line 193
    invoke-virtual {p0, p1}, Lade;->c(Ljava/lang/String;)Lade;

    .line 201
    :goto_5
    return-object p0

    .line 197
    :cond_6
    sget-object v0, Lade;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Name contains reserved characters"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lade;->c:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lade;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public a(Ljava/nio/charset/Charset;)Lade;
    .registers 4
    .parameter

    .prologue
    .line 300
    const-string v1, "charset"

    if-nez p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, v1, v0}, Lade;->a(Ljava/lang/String;Ljava/lang/String;)Lade;

    .line 301
    return-object p0

    .line 300
    :cond_9
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lade;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lade;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 308
    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lade;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_9
.end method

.method public a(Lade;)Z
    .registers 4
    .parameter

    .prologue
    .line 280
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lade;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lade;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lade;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lade;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public b(Ljava/lang/String;)Lade;
    .registers 4
    .parameter

    .prologue
    .line 137
    sget-object v0, Lade;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Subtype contains reserved characters"

    invoke-static {v0, v1}, LafQ;->a(ZLjava/lang/Object;)V

    .line 139
    iput-object p1, p0, Lade;->b:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lade;->c:Ljava/lang/String;

    .line 141
    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lade;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lade;
    .registers 4
    .parameter

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lade;->c:Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lade;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 6

    .prologue
    .line 254
    iget-object v0, p0, Lade;->c:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 255
    iget-object v0, p0, Lade;->c:Ljava/lang/String;

    .line 272
    :goto_6
    return-object v0

    .line 258
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    iget-object v0, p0, Lade;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/16 v0, 0x2f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    iget-object v0, p0, Lade;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v0, p0, Lade;->a:Ljava/util/Map;

    if-eqz v0, :cond_5c

    .line 263
    iget-object v0, p0, Lade;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {v1}, Lade;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-static {v1}, Lade;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 271
    :cond_5c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lade;->c:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lade;->c:Ljava/lang/String;

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 319
    instance-of v1, p1, Lade;

    if-nez v1, :cond_6

    .line 325
    :cond_5
    :goto_5
    return v0

    .line 323
    :cond_6
    check-cast p1, Lade;

    .line 325
    invoke-virtual {p0, p1}, Lade;->a(Lade;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lade;->a:Ljava/util/Map;

    iget-object v2, p1, Lade;->a:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lade;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
