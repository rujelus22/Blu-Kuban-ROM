.class final Lcom/coremobility/integration/a/h;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field final synthetic a:Lcom/coremobility/integration/a/a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lcom/coremobility/integration/a/g;

.field private f:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Lcom/coremobility/integration/a/a;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/coremobility/integration/a/h;->a:Lcom/coremobility/integration/a/a;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/integration/a/h;->d:Z

    iput-object v1, p0, Lcom/coremobility/integration/a/h;->e:Lcom/coremobility/integration/a/g;

    iput-object v1, p0, Lcom/coremobility/integration/a/h;->f:Ljava/util/Hashtable;

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7c

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    aget-object v2, v0, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    aget-object v2, v0, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    const/4 v2, 0x0

    :try_start_33
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_38} :catch_5a

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v2, v2, 0x0

    const/4 v3, 0x1

    :try_start_3e
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_57} :catch_77

    move-result v0

    add-int/2addr v0, v2

    :goto_59
    return v0

    :catch_5a
    move-exception v0

    move-object v2, v0

    move v0, v1

    :goto_5d
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_59

    :catch_77
    move-exception v0

    move-object v7, v0

    move v0, v2

    move-object v2, v7

    goto :goto_5d

    :cond_7c
    move v0, v1

    goto :goto_59
.end method


# virtual methods
.method public final a()Lcom/coremobility/integration/a/g;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/a/h;->e:Lcom/coremobility/integration/a/g;

    return-object v0
.end method

.method public final a(Ljava/util/Hashtable;)V
    .registers 4

    iput-object p1, p0, Lcom/coremobility/integration/a/h;->f:Ljava/util/Hashtable;

    new-instance v0, Lcom/coremobility/integration/a/g;

    iget-object v1, p0, Lcom/coremobility/integration/a/h;->a:Lcom/coremobility/integration/a/a;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/a/g;-><init>(Lcom/coremobility/integration/a/a;)V

    iput-object v0, p0, Lcom/coremobility/integration/a/h;->e:Lcom/coremobility/integration/a/g;

    return-void
.end method

.method public final characters([CII)V
    .registers 8

    const/16 v3, 0x20

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/coremobility/integration/a/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/coremobility/integration/a/h;->f:Ljava/util/Hashtable;

    if-eqz v0, :cond_3d

    move v0, p2

    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_1b

    aget-char v1, p1, v0

    if-eq v1, v3, :cond_18

    aget-char v1, p1, v0

    if-ne v1, v2, :cond_1b

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    :goto_1b
    if-le p3, v0, :cond_2c

    add-int/lit8 v1, p3, -0x1

    aget-char v1, p1, v1

    if-eq v1, v3, :cond_29

    add-int/lit8 v1, p3, -0x1

    aget-char v1, p1, v1

    if-ne v1, v2, :cond_2c

    :cond_29
    add-int/lit8 p3, p3, -0x1

    goto :goto_1b

    :cond_2c
    new-instance v1, Ljava/lang/String;

    sub-int v2, v0, p2

    sub-int v2, p3, v2

    invoke-direct {v1, p1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    iget-object v0, p0, Lcom/coremobility/integration/a/h;->f:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/coremobility/integration/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/d;

    if-eqz v0, :cond_3d

    iget-boolean v2, p0, Lcom/coremobility/integration/a/h;->d:Z

    if-eqz v2, :cond_66

    invoke-static {v1}, Lcom/coremobility/integration/a/h;->a(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/coremobility/integration/a/h;->e:Lcom/coremobility/integration/a/g;

    iget v3, v0, Lcom/coremobility/integration/a/d;->b:I

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v2

    iget v0, v0, Lcom/coremobility/integration/a/d;->a:I

    iget v3, p0, Lcom/coremobility/integration/a/h;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    goto :goto_3d

    :cond_66
    iget-object v2, p0, Lcom/coremobility/integration/a/h;->e:Lcom/coremobility/integration/a/g;

    iget v3, v0, Lcom/coremobility/integration/a/d;->b:I

    invoke-virtual {v2, v3}, Lcom/coremobility/integration/a/g;->a(I)Lcom/coremobility/integration/a/f;

    move-result-object v2

    iget v0, v0, Lcom/coremobility/integration/a/d;->a:I

    iget v3, p0, Lcom/coremobility/integration/a/h;->c:I

    invoke-virtual {v2, v0, v3, v1}, Lcom/coremobility/integration/a/f;->a(IILjava/lang/String;)V

    goto :goto_3d
.end method

.method public final endDocument()V
    .registers 1

    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/a/h;->b:Ljava/lang/String;

    return-void
.end method

.method public final startDocument()V
    .registers 1

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/coremobility/integration/a/h;->b:Ljava/lang/String;

    iput v4, p0, Lcom/coremobility/integration/a/h;->c:I

    iput-boolean v4, p0, Lcom/coremobility/integration/a/h;->d:Z

    if-eqz p4, :cond_2a

    const-string v0, "format"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    const-string v1, "u.u.u.u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/integration/a/h;->d:Z

    :cond_1c
    const-string v0, "index"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    :try_start_24
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/a/h;->c:I
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2a} :catch_2b

    :cond_2a
    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a
.end method
