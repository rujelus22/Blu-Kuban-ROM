.class public Lcom/estrongs/bluetooth/parser/OBEXElement;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

.field private static final k:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

.field private d:J

.field private e:Ljava/util/Date;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

    invoke-direct {v0}, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;-><init>()V

    sput-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->a:Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->k:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->h:Ljava/lang/String;

    const-string v0, "RWD"

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->j:Ljava/lang/String;

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v4, 0x3

    const/4 v1, 0x0

    const-string v2, ""

    if-nez p1, :cond_8

    const-string p1, ""

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_16

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_16
    move v6, v1

    move-object v1, v2

    move v2, v6

    :goto_19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_20

    return-object v1

    :cond_20
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x52

    if-eq v3, v4, :cond_30

    const/16 v4, 0x57

    if-eq v3, v4, :cond_30

    const/16 v4, 0x44

    if-ne v3, v4, :cond_48

    :cond_30
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_19
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_7

    move-wide p1, v0

    :cond_7
    iput-wide p1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->d:J

    return-void
.end method

.method public a(Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;)V
    .registers 2

    if-nez p1, :cond_4

    sget-object p1, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    :cond_4
    iput-object p1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->d:J

    return-wide v0
.end method

.method public b(J)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:Ljava/util/Date;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:Ljava/util/Date;

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->a:Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;

    invoke-virtual {v0, p1}, Lcom/estrongs/bluetooth/parser/OBEXDateFormatter;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:Ljava/util/Date;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public c()Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->i:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->c:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    sget-object v1, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public e()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:Ljava/util/Date;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    check-cast p1, Lcom/estrongs/bluetooth/parser/OBEXElement;

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_2e

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2e
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public f()J
    .registers 3

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:Ljava/util/Date;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_6
.end method

.method public g()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/estrongs/bluetooth/parser/OBEXElement;->k:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->i:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/estrongs/bluetooth/parser/OBEXElement;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/lit16 v0, v0, 0x1d5

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->c()Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    move-result-object v0

    sget-object v2, Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;->FOLDER:Lcom/estrongs/bluetooth/parser/OBEXElement$OBEXElementType;

    if-ne v0, v2, :cond_20

    const-string v0, ""

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/bluetooth/parser/OBEXElement;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_17
.end method
