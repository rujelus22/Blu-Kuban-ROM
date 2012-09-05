.class Lcom/google/android/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/a/a/a/i;


# static fields
.field private static final a:Ljava/lang/String;

.field private static synthetic g:[I


# instance fields
.field private b:Lcom/google/android/a/a/a/e;

.field private c:I

.field private d:Ljava/io/CharArrayWriter;

.field private e:Ljava/io/CharArrayWriter;

.field private f:Lcom/google/android/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/a/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/a/a/a/c;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/google/android/a/a/a/e;->a:Lcom/google/android/a/a/a/e;

    iput-object v0, p0, Lcom/google/android/a/a/a/c;->b:Lcom/google/android/a/a/a/e;

    .line 51
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/a/c;->d:Ljava/io/CharArrayWriter;

    .line 52
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    iput-object v0, p0, Lcom/google/android/a/a/a/c;->e:Ljava/io/CharArrayWriter;

    .line 53
    return-void
.end method

.method private a([CII)I
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0xa

    .line 156
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-lt v1, p3, :cond_c

    .line 177
    iget-object v0, p0, Lcom/google/android/a/a/a/c;->d:Ljava/io/CharArrayWriter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/CharArrayWriter;->write([CII)V

    .line 178
    :goto_b
    return p3

    .line 157
    :cond_c
    add-int v0, p2, v1

    aget-char v0, p1, v0

    if-ne v0, v2, :cond_52

    .line 158
    iget-object v0, p0, Lcom/google/android/a/a/a/c;->d:Ljava/io/CharArrayWriter;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/CharArrayWriter;->write([CII)V

    .line 159
    iget-object v0, p0, Lcom/google/android/a/a/a/c;->d:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    const/16 v0, 0xa

    :try_start_1f
    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/a/a/a/c;->c:I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_25} :catch_31

    .line 170
    sget-object v0, Lcom/google/android/a/a/a/e;->b:Lcom/google/android/a/a/a/e;

    iput-object v0, p0, Lcom/google/android/a/a/a/c;->b:Lcom/google/android/a/a/a/e;

    .line 171
    iget-object v0, p0, Lcom/google/android/a/a/a/c;->d:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->reset()V

    .line 172
    add-int/lit8 p3, v1, 0x1

    goto :goto_b

    .line 162
    :catch_31
    move-exception v0

    .line 163
    sget-object v3, Lcom/google/android/a/a/a/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing chunk length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    sget-object v0, Lcom/google/android/a/a/a/e;->a:Lcom/google/android/a/a/a/e;

    iput-object v0, p0, Lcom/google/android/a/a/a/c;->b:Lcom/google/android/a/a/a/e;

    .line 166
    iget-object v0, p0, Lcom/google/android/a/a/a/c;->d:Ljava/io/CharArrayWriter;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->reset()V

    .line 167
    add-int/lit8 p3, v1, 0x1

    goto :goto_b

    .line 156
    :cond_52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4
.end method

.method private static synthetic a()[I
    .registers 3

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/a/a/a/c;->g:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/android/a/a/a/e;->values()[Lcom/google/android/a/a/a/e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/google/android/a/a/a/e;->b:Lcom/google/android/a/a/a/e;

    invoke-virtual {v1}, Lcom/google/android/a/a/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/google/android/a/a/a/e;->a:Lcom/google/android/a/a/a/e;

    invoke-virtual {v1}, Lcom/google/android/a/a/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/google/android/a/a/a/e;->c:Lcom/google/android/a/a/a/e;

    invoke-virtual {v1}, Lcom/google/android/a/a/a/e;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/google/android/a/a/a/c;->g:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method


# virtual methods
.method public final a([C)I
    .registers 8
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    array-length v2, p1

    move v1, v2

    move v3, v0

    :goto_4
    if-nez v1, :cond_9

    sub-int v0, v2, v1

    return v0

    :cond_9
    invoke-static {}, Lcom/google/android/a/a/a/c;->a()[I

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/a/a/a/c;->b:Lcom/google/android/a/a/a/e;

    invoke-virtual {v4}, Lcom/google/android/a/a/a/e;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_50

    move v0, v1

    :cond_19
    :goto_19
    add-int/2addr v3, v0

    sub-int/2addr v1, v0

    goto :goto_4

    :pswitch_1c
    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/a/a/a/c;->a([CII)I

    move-result v0

    goto :goto_19

    :pswitch_21
    iget v0, p0, Lcom/google/android/a/a/a/c;->c:I

    if-lt v1, v0, :cond_4e

    iget v0, p0, Lcom/google/android/a/a/a/c;->c:I

    sget-object v4, Lcom/google/android/a/a/a/e;->a:Lcom/google/android/a/a/a/e;

    iput-object v4, p0, Lcom/google/android/a/a/a/c;->b:Lcom/google/android/a/a/a/e;

    :goto_2b
    iget-object v4, p0, Lcom/google/android/a/a/a/c;->e:Ljava/io/CharArrayWriter;

    invoke-virtual {v4, p1, v3, v0}, Ljava/io/CharArrayWriter;->write([CII)V

    iget v4, p0, Lcom/google/android/a/a/a/c;->c:I

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/google/android/a/a/a/c;->c:I

    iget v4, p0, Lcom/google/android/a/a/a/c;->c:I

    if-nez v4, :cond_19

    iget-object v4, p0, Lcom/google/android/a/a/a/c;->f:Lcom/google/android/a/a/a/d;

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/google/android/a/a/a/c;->f:Lcom/google/android/a/a/a/d;

    iget-object v5, p0, Lcom/google/android/a/a/a/c;->e:Ljava/io/CharArrayWriter;

    invoke-virtual {v5}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/android/a/a/a/d;->a(Ljava/lang/String;)V

    :cond_48
    iget-object v4, p0, Lcom/google/android/a/a/a/c;->e:Ljava/io/CharArrayWriter;

    invoke-virtual {v4}, Ljava/io/CharArrayWriter;->reset()V

    goto :goto_19

    :cond_4e
    move v0, v1

    goto :goto_2b

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_21
    .end packed-switch
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 81
    const/16 v0, 0x194

    if-ne p1, v0, :cond_19

    .line 82
    new-instance v0, Lcom/google/android/a/d/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/a/d/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_19
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_23

    .line 84
    new-instance v0, Lcom/google/android/a/a/a/w;

    invoke-direct {v0, p1}, Lcom/google/android/a/a/a/w;-><init>(I)V

    throw v0

    .line 86
    :cond_23
    return-void
.end method

.method public final a(Lcom/google/android/a/a/a/d;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/a/a/a/c;->f:Lcom/google/android/a/a/a/d;

    .line 104
    return-void
.end method

.method public final a([BII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_a} :catch_f

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/google/android/a/a/a/c;->a([C)I

    .line 71
    return-void

    .line 68
    :catch_f
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This application needs UTF-8 support in order to run"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 94
    sget-object v0, Lcom/google/android/a/a/a/e;->b:Lcom/google/android/a/a/a/e;

    iget-object v1, p0, Lcom/google/android/a/a/a/c;->b:Lcom/google/android/a/a/a/e;

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/google/android/a/a/a/c;->a:Ljava/lang/String;

    const-string v1, "Lost partial chunk"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_d
    return-void
.end method
