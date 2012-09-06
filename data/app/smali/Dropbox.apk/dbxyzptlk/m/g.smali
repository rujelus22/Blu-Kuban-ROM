.class public final Ldbxyzptlk/m/g;
.super Ldbxyzptlk/m/a;
.source "panda.py"


# instance fields
.field public a:Ldbxyzptlk/m/h;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .registers 4
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ldbxyzptlk/m/a;-><init>()V

    .line 152
    invoke-virtual {p0}, Ldbxyzptlk/m/g;->fillInStackTrace()Ljava/lang/Throwable;

    .line 153
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 154
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Ldbxyzptlk/m/g;->b:I

    .line 155
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/m/g;->c:Ljava/lang/String;

    .line 156
    const-string v0, "server"

    invoke-static {p1, v0}, Ldbxyzptlk/m/g;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/m/g;->d:Ljava/lang/String;

    .line 157
    const-string v0, "location"

    invoke-static {p1, v0}, Ldbxyzptlk/m/g;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/m/g;->e:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-direct {p0, p1}, Ldbxyzptlk/m/g;-><init>(Lorg/apache/http/HttpResponse;)V

    .line 170
    if-eqz p2, :cond_16

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_16

    .line 171
    check-cast p2, Ljava/util/Map;

    iput-object p2, p0, Ldbxyzptlk/m/g;->f:Ljava/util/Map;

    .line 172
    new-instance v0, Ldbxyzptlk/m/h;

    iget-object v1, p0, Ldbxyzptlk/m/g;->f:Ljava/util/Map;

    invoke-direct {v0, v1}, Ldbxyzptlk/m/h;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ldbxyzptlk/m/g;->a:Ldbxyzptlk/m/h;

    .line 174
    :cond_16
    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    invoke-interface {p0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 221
    if-eqz v1, :cond_b

    .line 222
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 224
    :cond_b
    return-object v0
.end method

.method public static a(Lorg/apache/http/HttpResponse;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 195
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 196
    const/16 v3, 0x12e

    if-ne v2, v3, :cond_3e

    .line 197
    const-string v2, "location"

    invoke-static {p0, v2}, Ldbxyzptlk/m/g;->a(Lorg/apache/http/HttpResponse;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_42

    .line 200
    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 201
    if-le v3, v4, :cond_42

    .line 202
    add-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 204
    if-le v3, v4, :cond_42

    .line 205
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dropbox.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 215
    :cond_3d
    :goto_3d
    return v0

    .line 212
    :cond_3e
    const/16 v3, 0x130

    if-eq v2, v3, :cond_3d

    :cond_42
    move v0, v1

    .line 215
    goto :goto_3d
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 182
    iget v0, p0, Ldbxyzptlk/m/g;->b:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Ldbxyzptlk/m/g;->a:Ldbxyzptlk/m/h;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ldbxyzptlk/m/g;->a:Ldbxyzptlk/m/h;

    iget-object v0, v0, Ldbxyzptlk/m/h;->a:Ljava/lang/String;

    const-string v1, "taken"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DropboxServerException ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/m/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ldbxyzptlk/m/g;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/m/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/m/g;->a:Ldbxyzptlk/m/h;

    iget-object v1, v1, Ldbxyzptlk/m/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
