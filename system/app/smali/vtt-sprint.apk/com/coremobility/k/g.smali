.class public final Lcom/coremobility/k/g;
.super Ljava/lang/Object;


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private a:Lcom/coremobility/c/ah;

.field private b:Lcom/coremobility/k/cx;

.field private c:Lcom/coremobility/k/h;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "d"

    aput-object v1, v0, v3

    const-string v1, "o"

    aput-object v1, v0, v4

    const-string v1, "s"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "i"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/k/g;->d:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ed"

    aput-object v1, v0, v3

    const-string v1, "vn"

    aput-object v1, v0, v4

    sput-object v0, Lcom/coremobility/k/g;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/k/g;->a:Lcom/coremobility/c/ah;

    iput-object v0, p0, Lcom/coremobility/k/g;->b:Lcom/coremobility/k/cx;

    iput-object v0, p0, Lcom/coremobility/k/g;->c:Lcom/coremobility/k/h;

    return-void
.end method

.method private a(IIILjava/lang/StringBuffer;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p3, :cond_17

    const/4 v0, 0x2

    if-ge p3, v0, :cond_17

    move v0, v1

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-eqz p4, :cond_19

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-nez p1, :cond_1b

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_16
    :goto_16
    return v2

    :cond_17
    move v0, v2

    goto :goto_8

    :cond_19
    move v0, v2

    goto :goto_e

    :cond_1b
    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v3, p0, Lcom/coremobility/k/g;->b:Lcom/coremobility/k/cx;

    invoke-virtual {v3, p1, p2, v0}, Lcom/coremobility/k/cx;->c(IILcom/coremobility/integration/h/c;)Lcom/coremobility/k/df;

    move-result-object v3

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_2e

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_16

    :cond_2e
    invoke-static {p2}, Lcom/coremobility/k/cx;->c(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v3}, Lcom/coremobility/k/df;->g()I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/k/cx;->c(I)Z

    move-result v0

    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v3}, Lcom/coremobility/k/df;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_16

    sget-object v2, Lcom/coremobility/k/g;->d:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "/"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/coremobility/k/g;->e:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_16
.end method

.method private static a(Ljava/lang/String;I[I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_23

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    :goto_9
    const/4 v3, 0x7

    if-ge v0, v3, :cond_28

    sget-object v3, Lcom/coremobility/k/g;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Lcom/coremobility/k/g;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne p1, v3, :cond_25

    aput v0, p2, v2

    :goto_22
    return v1

    :cond_23
    move v0, v2

    goto :goto_5

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_28
    move v1, v2

    goto :goto_22
.end method

.method private static a(Ljava/lang/String;[I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_19

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    move v0, v2

    :goto_9
    const/4 v3, 0x2

    if-ge v0, v3, :cond_1e

    sget-object v3, Lcom/coremobility/k/g;->e:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1b

    aput v0, p1, v2

    :goto_18
    return v1

    :cond_19
    move v0, v2

    goto :goto_5

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1e
    move v1, v2

    goto :goto_18
.end method


# virtual methods
.method protected final a(Lcom/coremobility/c/ao;)I
    .registers 14

    const/4 v9, -0x1

    const/4 v1, 0x1

    const/16 v11, 0x1c

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_52

    move v0, v1

    :goto_12
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-array v3, v1, [I

    new-array v4, v1, [I

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Lcom/coremobility/integration/h/c;

    invoke-direct {v7, v6}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v2, p1, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    if-eqz v2, :cond_54

    move v0, v1

    :goto_28
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_56

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no dir "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    :goto_4f
    if-nez v0, :cond_d6

    :goto_51
    return v6

    :cond_52
    move v0, v6

    goto :goto_12

    :cond_54
    move v0, v6

    goto :goto_28

    :cond_56
    invoke-static {v2, v0, v3}, Lcom/coremobility/k/g;->a(Ljava/lang/String;I[I)Z

    move-result v8

    if-nez v8, :cond_76

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unk dir "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto :goto_4f

    :cond_76
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v8, "."

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v9, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no ext "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto :goto_4f

    :cond_a2
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/coremobility/k/g;->a(Ljava/lang/String;[I)Z

    move-result v9

    if-nez v9, :cond_cc

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unk ext "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    goto :goto_4f

    :cond_cc
    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_4f

    :cond_d6
    iget-object v0, p0, Lcom/coremobility/k/g;->b:Lcom/coremobility/k/cx;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aget v8, v3, v6

    invoke-virtual {v0, v2, v8}, Lcom/coremobility/k/cx;->a(Ljava/lang/String;I)I

    move-result v8

    const/4 v0, 0x0

    if-eqz v8, :cond_264

    iget-object v0, p0, Lcom/coremobility/k/g;->b:Lcom/coremobility/k/cx;

    aget v2, v3, v6

    invoke-virtual {v0, v8, v2, v7}, Lcom/coremobility/k/cx;->c(IILcom/coremobility/integration/h/c;)Lcom/coremobility/k/df;

    move-result-object v0

    iget v2, v7, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_f6

    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_51

    :cond_f6
    move-object v2, v0

    :goto_f7
    if-eqz v2, :cond_10f

    invoke-virtual {v2}, Lcom/coremobility/k/df;->b()I

    move-result v0

    if-ne v0, v8, :cond_135

    move v0, v1

    :goto_100
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {v2}, Lcom/coremobility/k/df;->g()I

    move-result v0

    aget v9, v3, v6

    if-ne v0, v9, :cond_137

    move v0, v1

    :goto_10c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_10f
    aget v0, v4, v6

    if-nez v0, :cond_1c2

    if-nez v2, :cond_139

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to ed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_135
    move v0, v6

    goto :goto_100

    :cond_137
    move v0, v6

    goto :goto_10c

    :cond_139
    iget-object v0, p1, Lcom/coremobility/c/ao;->d:[B

    if-eqz v0, :cond_141

    iget v0, p1, Lcom/coremobility/c/ao;->c:I

    if-nez v0, :cond_165

    :cond_141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty ed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/k/f;

    invoke-direct {v0}, Lcom/coremobility/k/f;-><init>()V

    iget-object v1, p1, Lcom/coremobility/c/ao;->d:[B

    iget v4, p1, Lcom/coremobility/c/ao;->c:I

    aget v9, v3, v6

    invoke-virtual {v0, v1, v4, v9, v2}, Lcom/coremobility/k/f;->a([BIILcom/coremobility/k/df;)Z

    move-result v0

    if-nez v0, :cond_1b2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail parse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_1b2
    invoke-virtual {v2, v7}, Lcom/coremobility/k/df;->c(Lcom/coremobility/integration/h/c;)V

    iget-object v0, p0, Lcom/coremobility/k/g;->b:Lcom/coremobility/k/cx;

    const/16 v1, 0x6f

    aget v2, v3, v6

    int-to-long v2, v2

    int-to-long v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->b(IJJ)V

    goto/16 :goto_51

    :cond_1c2
    aget v0, v4, v6

    if-ne v0, v1, :cond_25f

    iget-object v0, p1, Lcom/coremobility/c/ao;->d:[B

    if-eqz v0, :cond_1ce

    iget v0, p1, Lcom/coremobility/c/ao;->c:I

    if-nez v0, :cond_256

    :cond_1ce
    if-eqz v2, :cond_236

    invoke-static {v8, v1}, Lcom/coremobility/k/cx;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_1fb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "del dfr "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v6, v1

    goto/16 :goto_51

    :cond_1fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "del "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v6, v7}, Lcom/coremobility/k/df;->a(ZLcom/coremobility/integration/h/c;)V

    iget v0, v7, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_231

    iget-object v0, p0, Lcom/coremobility/k/g;->b:Lcom/coremobility/k/cx;

    const/16 v1, 0x65

    aget v2, v3, v6

    int-to-long v2, v2

    int-to-long v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/k/cx;->b(IJJ)V

    goto/16 :goto_51

    :cond_231
    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_51

    :cond_236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to del"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_256
    const-string v0, "create/replace not supported"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_51

    :cond_25f
    invoke-static {v6}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_51

    :cond_264
    move-object v2, v0

    goto/16 :goto_f7
.end method

.method public final a(II)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/coremobility/k/g;->a(IIILjava/lang/StringBuffer;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return-void

    :cond_d
    new-instance v1, Lcom/coremobility/c/ao;

    invoke-direct {v1}, Lcom/coremobility/c/ao;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, v1, Lcom/coremobility/c/ao;->b:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/coremobility/c/ao;->c:I

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/coremobility/c/ao;->d:[B

    iget-object v0, p0, Lcom/coremobility/k/g;->a:Lcom/coremobility/c/ah;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/c/ah;->a(Lcom/coremobility/c/ao;I)Z

    goto :goto_c
.end method

.method public final a(III)V
    .registers 11

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, p1, p2, v6, v0}, Lcom/coremobility/k/g;->a(IIILjava/lang/StringBuffer;)Z

    move-result v1

    if-nez v1, :cond_d

    :goto_c
    return-void

    :cond_d
    const/4 v1, 0x1

    new-array v1, v1, [I

    new-instance v2, Lcom/coremobility/k/i;

    invoke-direct {v2}, Lcom/coremobility/k/i;-><init>()V

    invoke-virtual {v2, p3, v1}, Lcom/coremobility/k/i;->a(I[I)[B

    move-result-object v2

    new-instance v3, Lcom/coremobility/c/ao;

    invoke-direct {v3}, Lcom/coremobility/c/ao;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/coremobility/c/ao;->a:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, v3, Lcom/coremobility/c/ao;->b:I

    aget v0, v1, v6

    iput v0, v3, Lcom/coremobility/c/ao;->c:I

    iput-object v2, v3, Lcom/coremobility/c/ao;->d:[B

    iget-object v0, p0, Lcom/coremobility/k/g;->a:Lcom/coremobility/c/ah;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/coremobility/c/ah;->a(Lcom/coremobility/c/ao;I)Z

    goto :goto_c
.end method

.method public final a(Lcom/coremobility/k/cx;)V
    .registers 4

    invoke-static {}, Lcom/coremobility/c/ah;->a()Lcom/coremobility/c/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/k/g;->a:Lcom/coremobility/c/ah;

    iput-object p1, p0, Lcom/coremobility/k/g;->b:Lcom/coremobility/k/cx;

    new-instance v0, Lcom/coremobility/k/h;

    invoke-direct {v0, p0}, Lcom/coremobility/k/h;-><init>(Lcom/coremobility/k/g;)V

    iput-object v0, p0, Lcom/coremobility/k/g;->c:Lcom/coremobility/k/h;

    iget-object v0, p0, Lcom/coremobility/k/g;->c:Lcom/coremobility/k/h;

    iput-object p0, v0, Lcom/coremobility/k/h;->a:Lcom/coremobility/k/g;

    invoke-static {}, Lcom/coremobility/c/ah;->a()Lcom/coremobility/c/ah;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/c/ah;->a(Lcom/coremobility/c/ap;)V

    return-void
.end method
