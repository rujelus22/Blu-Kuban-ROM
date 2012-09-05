.class Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private synthetic e:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;-><init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;B)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->e:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I
    .registers 2

    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I
    .registers 2

    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->c:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_16} :catch_31

    move-result v0

    const/high16 v1, -0x100

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x18

    iput v1, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->a:I

    const/high16 v1, 0xff

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->b:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->d:I

    :goto_30
    return-void

    :catch_31
    move-exception v0

    goto :goto_30
.end method
