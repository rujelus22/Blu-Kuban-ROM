.class final Lcom/google/android/youtube/core/converter/n;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field private final b:Lcom/google/android/youtube/core/converter/c;

.field private final c:Lcom/google/android/youtube/core/utils/x;

.field private final d:Lcom/google/android/youtube/core/utils/x;

.field private final e:Lcom/google/android/youtube/core/utils/x;

.field private final f:Lcom/google/android/youtube/core/utils/x;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/c;)V
    .registers 4
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/n;->b:Lcom/google/android/youtube/core/converter/c;

    .line 195
    new-instance v0, Lcom/google/android/youtube/core/utils/x;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/n;->d:Lcom/google/android/youtube/core/utils/x;

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->d:Lcom/google/android/youtube/core/utils/x;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Lcom/google/android/youtube/core/utils/x;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/n;->e:Lcom/google/android/youtube/core/utils/x;

    .line 199
    new-instance v0, Lcom/google/android/youtube/core/utils/x;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/n;->f:Lcom/google/android/youtube/core/utils/x;

    .line 200
    new-instance v0, Lcom/google/android/youtube/core/utils/x;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/x;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/n;->c:Lcom/google/android/youtube/core/utils/x;

    .line 201
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->d:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/o;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->f:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 234
    :cond_1b
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->d:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/x;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/o;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_33

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->e:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/x;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/Attributes;

    .line 221
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->f:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/x;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 222
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->c:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_34

    :goto_2c
    iput-object v1, p0, Lcom/google/android/youtube/core/converter/n;->a:Ljava/lang/Object;

    .line 224
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->c:Lcom/google/android/youtube/core/utils/x;

    invoke-interface {v2, v1, v0, v3}, Lcom/google/android/youtube/core/converter/o;->a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V

    .line 226
    :cond_33
    return-void

    .line 223
    :cond_34
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->a:Ljava/lang/Object;

    goto :goto_2c
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->d:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/x;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->d:Lcom/google/android/youtube/core/utils/x;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/google/android/youtube/core/converter/n;->b:Lcom/google/android/youtube/core/converter/c;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/c;->a(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/o;

    move-result-object v1

    .line 208
    if-eqz v1, :cond_47

    .line 209
    iget-object v2, p0, Lcom/google/android/youtube/core/converter/n;->e:Lcom/google/android/youtube/core/utils/x;

    if-eqz p4, :cond_48

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0, p4}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    :goto_35
    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->f:Lcom/google/android/youtube/core/utils/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/n;->c:Lcom/google/android/youtube/core/utils/x;

    invoke-interface {v1, v0, p4}, Lcom/google/android/youtube/core/converter/o;->a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V

    .line 213
    :cond_47
    return-void

    .line 209
    :cond_48
    invoke-static {}, Lcom/google/android/youtube/core/converter/k;->b()Lorg/xml/sax/Attributes;

    move-result-object v0

    goto :goto_35
.end method
