.class public final Ljj;
.super Ljava/lang/Object;
.source "a"


# static fields
.field public static final a:Ljj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Ljj;

    invoke-direct {v0}, Ljj;-><init>()V

    sput-object v0, Ljj;->a:Ljj;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 145
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 150
    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    :goto_a
    const/4 v0, 0x0

    goto :goto_8

    .line 149
    :catch_c
    move-exception v0

    goto :goto_a
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 155
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_1d

    .line 156
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, v2

    .line 164
    :goto_f
    return v0

    .line 160
    :cond_10
    invoke-direct {p0, v0, p2}, Ljj;->b(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v0, v2

    .line 161
    goto :goto_f

    .line 155
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 164
    :cond_1d
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private b(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 170
    array-length v1, v0

    move v2, v4

    :goto_8
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 171
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v0, v5

    .line 181
    :goto_17
    return v0

    .line 170
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 176
    :cond_1b
    array-length v1, v0

    move v2, v4

    :goto_1d
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 177
    invoke-direct {p0, v3, p2}, Ljj;->b(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v0, v5

    .line 178
    goto :goto_17

    .line 176
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2c
    move v0, v4

    .line 181
    goto :goto_17
.end method

.method private c(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_18

    .line 188
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v0, v2

    .line 198
    :goto_12
    return v0

    .line 187
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_5

    :cond_18
    move-object v0, p1

    .line 193
    :goto_19
    if-eqz v0, :cond_28

    .line 194
    invoke-direct {p0, v0, p2}, Ljj;->d(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v0, v2

    .line 195
    goto :goto_12

    .line 193
    :cond_23
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_19

    .line 198
    :cond_28
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private d(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 204
    array-length v1, v0

    move v2, v4

    :goto_8
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    .line 205
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    move v0, v5

    .line 215
    :goto_17
    return v0

    .line 204
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 210
    :cond_1b
    array-length v1, v0

    move v2, v4

    :goto_1d
    if-ge v2, v1, :cond_2c

    aget-object v3, v0, v2

    .line 211
    invoke-direct {p0, v3, p2}, Ljj;->d(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    move v0, v5

    .line 212
    goto :goto_17

    .line 210
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2c
    move v0, v4

    .line 215
    goto :goto_17
.end method


# virtual methods
.method public final a(Lnd;)Lhj;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhj",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 55
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v2, "org.joda.time."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 60
    const-string v0, "org.codehaus.jackson.map.ext.JodaSerializers"

    .line 70
    :goto_13
    invoke-static {v0}, Ljj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 71
    if-nez p0, :cond_42

    move-object v0, v4

    .line 91
    :goto_1a
    return-object v0

    .line 61
    :cond_1b
    const-string v2, "javax.xml."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    const-string v0, "javax.xml."

    invoke-direct {p0, v1, v0}, Ljj;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 63
    :cond_2b
    const-string v0, "org.codehaus.jackson.map.ext.CoreXMLSerializers"

    goto :goto_13

    .line 64
    :cond_2e
    const-string v0, "org.w3c.dom.Node"

    invoke-direct {p0, v1, v0}, Ljj;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 65
    const-string v0, "org.codehaus.jackson.map.ext.DOMSerializer"

    invoke-static {v0}, Ljj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhj;

    move-object v0, p0

    goto :goto_1a

    :cond_40
    move-object v0, v4

    .line 67
    goto :goto_1a

    .line 75
    :cond_42
    check-cast p0, Lmj;

    .line 76
    invoke-interface {p0}, Lmj;->a()Ljava/util/Collection;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_4c

    .line 81
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhj;

    move-object v0, p0

    goto :goto_1a

    .line 85
    :cond_66
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 87
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhj;

    move-object v0, p0

    goto :goto_1a

    :cond_8a
    move-object v0, v4

    .line 91
    goto :goto_1a
.end method

.method public final b(Lnd;)Lhf;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhf",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 96
    invoke-virtual {p1}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "org.joda.time."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 101
    const-string v1, "org.codehaus.jackson.map.ext.JodaDeserializers"

    .line 112
    :goto_13
    invoke-static {v1}, Ljj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 113
    if-nez p0, :cond_54

    move-object v0, v4

    .line 133
    :goto_1a
    return-object v0

    .line 102
    :cond_1b
    const-string v2, "javax.xml."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "javax.xml."

    invoke-direct {p0, v0, v1}, Ljj;->c(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 104
    :cond_2b
    const-string v1, "org.codehaus.jackson.map.ext.CoreXMLDeserializers"

    goto :goto_13

    .line 105
    :cond_2e
    const-string v1, "org.w3c.dom.Node"

    invoke-direct {p0, v0, v1}, Ljj;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 106
    const-string v0, "org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

    invoke-static {v0}, Ljj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhf;

    move-object v0, p0

    goto :goto_1a

    .line 107
    :cond_40
    const-string v1, "org.w3c.dom.Node"

    invoke-direct {p0, v0, v1}, Ljj;->a(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 108
    const-string v0, "org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

    invoke-static {v0}, Ljj;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhf;

    move-object v0, p0

    goto :goto_1a

    :cond_52
    move-object v0, v4

    .line 110
    goto :goto_1a

    .line 117
    :cond_54
    check-cast p0, Lmj;

    .line 118
    invoke-interface {p0}, Lmj;->a()Ljava/util/Collection;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lja;

    .line 122
    invoke-virtual {p0}, Lja;->c()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_5e

    move-object v0, p0

    .line 123
    goto :goto_1a

    .line 127
    :cond_72
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_76
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lja;

    .line 128
    invoke-virtual {p0}, Lja;->c()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_76

    move-object v0, p0

    .line 129
    goto :goto_1a

    :cond_8e
    move-object v0, v4

    .line 133
    goto :goto_1a
.end method
