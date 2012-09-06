.class public final Lcom/google/android/ytremote/backend/b/a;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private b:Landroid/net/Uri;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/b/a;->a:Ljava/lang/StringBuilder;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/ytremote/backend/b/a;->c:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/b/a;->b:Landroid/net/Uri;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/ytremote/backend/b/a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/ytremote/backend/b/a;->c:I

    return v0
.end method

.method public final characters([CII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/ytremote/backend/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 34
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    const-string v0, "state"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 39
    iget-object v0, p0, Lcom/google/android/ytremote/backend/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "installable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/ytremote/backend/b/a;->c:I

    .line 42
    const-string v1, "installable = "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/b/a;->b:Landroid/net/Uri;

    .line 49
    :cond_27
    :goto_27
    return-void

    .line 43
    :cond_28
    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/ytremote/backend/b/a;->c:I

    goto :goto_27

    .line 45
    :cond_34
    const-string v1, "stopped"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/ytremote/backend/b/a;->c:I

    goto :goto_27
.end method

.method public final startDocument()V
    .registers 1

    .prologue
    .line 61
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/ytremote/backend/b/a;->a:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/ytremote/backend/b/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method
