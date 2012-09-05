.class public final Lmy;
.super Lmz;
.source "a"


# static fields
.field static final c:Lmy;


# instance fields
.field final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    new-instance v0, Lmy;

    const-string v1, ""

    invoke-direct {v0, v1}, Lmy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmy;->c:Lmy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lmz;-><init>()V

    iput-object p1, p0, Lmy;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lmy;
    .registers 2
    .parameter

    .prologue
    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    .line 42
    :goto_3
    return-object v0

    .line 39
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 40
    sget-object v0, Lmy;->c:Lmy;

    goto :goto_3

    .line 42
    :cond_d
    new-instance v0, Lmy;

    invoke-direct {v0, p0}, Lmy;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    const/16 v0, 0x22

    .line 230
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {p0, p1}, Lng;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lmy;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lez;Lhs;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lmy;->d:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 189
    invoke-virtual {p1}, Lez;->f()V

    .line 193
    :goto_7
    return-void

    .line 191
    :cond_8
    iget-object v0, p0, Lmy;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lez;->b(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 204
    if-ne p1, p0, :cond_5

    const/4 v0, 0x1

    .line 209
    :goto_4
    return v0

    .line 205
    :cond_5
    if-nez p1, :cond_9

    move v0, v2

    goto :goto_4

    .line 206
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    .line 207
    goto :goto_4

    .line 209
    :cond_15
    check-cast p1, Lmy;

    iget-object v0, p1, Lmy;->d:Ljava/lang/String;

    iget-object v1, p0, Lmy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lmy;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lmy;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 222
    add-int/lit8 v1, v0, 0x2

    shr-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 224
    iget-object v0, p0, Lmy;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lmy;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
