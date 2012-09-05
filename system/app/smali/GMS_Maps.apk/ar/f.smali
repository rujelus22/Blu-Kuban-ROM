.class public Lar/f;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field private static e:Ljava/util/Calendar;

.field private static final f:Ljava/lang/NumberFormatException;


# instance fields
.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid date/time format."

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sun"

    aput-object v1, v0, v3

    const-string v1, "Mon"

    aput-object v1, v0, v4

    const-string v1, "Tue"

    aput-object v1, v0, v5

    const-string v1, " Wed"

    aput-object v1, v0, v6

    const-string v1, "Thu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lar/f;->a:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lar/f;->b:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(JZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lar/f;->c:J

    iput-boolean p3, p0, Lar/f;->d:Z

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Calendar;)J
    .registers 13

    const/16 v9, 0x3a

    const/4 v8, 0x1

    const/4 v4, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_f

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_f
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x7

    if-lt v5, v6, :cond_24

    const/16 v5, 0x54

    if-eq v3, v5, :cond_27

    const/16 v5, 0x74

    if-eq v3, v5, :cond_27

    :cond_24
    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_27
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_2d
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x17

    if-le v5, v6, :cond_40

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception v0

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_40
    const/16 v6, 0xb

    :try_start_42
    invoke-virtual {p1, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_62

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_51
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3b

    if-le v5, v6, :cond_68

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_62
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_51

    :cond_68
    const/16 v6, 0xc

    invoke-virtual {p1, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_8a

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_79
    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3b

    if-le v5, v6, :cond_90

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_8a
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_79

    :cond_90
    const/16 v6, 0xd

    invoke-virtual {p1, v6, v5}, Ljava/util/Calendar;->set(II)V

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v3, 0xe

    const/4 v6, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/util/Calendar;->set(II)V
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_a0} :catch_3c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11a

    const/4 v3, 0x0

    :try_start_a7
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_f8

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_c1

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0
    :try_end_bd
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a7 .. :try_end_bd} :catch_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_bd} :catch_165

    :catch_bd
    move-exception v0

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_c1
    const/16 v3, 0x64

    :try_start_c3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0xa

    invoke-static {v2, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/2addr v2, v3

    move v10, v2

    move v2, v4

    move v4, v3

    move v3, v10

    :goto_d2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_f3

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_f3

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_d2

    :cond_f3
    const/16 v4, 0xe

    invoke-virtual {p1, v4, v3}, Ljava/util/Calendar;->set(II)V

    :cond_f8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_11a

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_114

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7a

    if-ne v3, v4, :cond_11b

    :cond_114
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v8, :cond_11b

    :cond_11a
    :goto_11a
    return-wide v0

    :cond_11b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_162

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_134

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_162

    :cond_134
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_162

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x6

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    const v1, 0xea60

    mul-int/2addr v0, v1

    int-to-long v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_11a

    neg-long v0, v0

    goto :goto_11a

    :cond_162
    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0
    :try_end_165
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c3 .. :try_end_165} :catch_bd
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_165} :catch_165

    :catch_165
    move-exception v0

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0
.end method

.method public static a(Ljava/lang/String;)Lar/f;
    .registers 8

    const/4 v2, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_e

    :cond_b
    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_e
    invoke-static {}, Lar/f;->b()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {p0, v3}, Lar/f;->b(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v0, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    const/4 v2, 0x1

    invoke-static {v4, v3}, Lar/f;->a(Ljava/lang/String;Ljava/util/Calendar;)J

    move-result-wide v0

    :goto_23
    :try_start_23
    new-instance v4, Lar/f;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    add-long/2addr v0, v5

    invoke-direct {v4, v0, v1, v2}, Lar/f;-><init>(JZ)V

    invoke-static {v3}, Lar/f;->a(Ljava/util/Calendar;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_34} :catch_4a

    return-object v4

    :cond_35
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    goto :goto_23

    :catch_4a
    move-exception v0

    invoke-static {v3}, Lar/f;->a(Ljava/util/Calendar;)V

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0
.end method

.method public static a(JZ)Ljava/lang/String;
    .registers 11

    const/16 v7, 0x3a

    const/16 v6, 0x2d

    const/16 v5, 0xe

    const/4 v4, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lar/f;->b()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lar/f;->a(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v4}, Lar/f;->a(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v0, v2, v4}, Lar/f;->a(Ljava/lang/StringBuilder;II)V

    if-eqz p2, :cond_78

    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v0, v2, v4}, Lar/f;->a(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v0, v2, v4}, Lar/f;->a(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v0, v2, v4}, Lar/f;->a(Ljava/lang/StringBuilder;II)V

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eqz v2, :cond_73

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lar/f;->a(Ljava/lang/StringBuilder;II)V

    :cond_73
    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_78
    invoke-static {v1}, Lar/f;->a(Ljava/util/Calendar;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/StringBuilder;II)V
    .registers 6

    if-gez p1, :cond_8

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int p1, p1

    :cond_8
    new-array v1, p2, [C

    add-int/lit8 v0, p2, -0x1

    :goto_c
    if-ltz v0, :cond_1a

    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    aput-char v2, v1, v0

    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/Calendar;)V
    .registers 3

    const-class v0, Lar/f;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lar/f;->e:Ljava/util/Calendar;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x2d

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_13

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_f} :catch_f

    :catch_f
    move-exception v0

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_13
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_16
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_33

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_34

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_33
    move v0, v1

    :cond_34
    const/4 v1, 0x2

    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v3, v0, 0x6

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v1, v0, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_5b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x8

    if-ge v1, v2, :cond_5b

    sget-object v0, Lar/f;->f:Ljava/lang/NumberFormatException;

    throw v0

    :cond_5b
    const/4 v1, 0x5

    add-int/lit8 v2, v0, 0x6

    add-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_70} :catch_f

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b()Ljava/util/Calendar;
    .registers 3

    const-class v1, Lar/f;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lar/f;->e:Ljava/util/Calendar;

    if-nez v0, :cond_13

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_19

    move-result-object v0

    :goto_11
    monitor-exit v1

    return-object v0

    :cond_13
    :try_start_13
    sget-object v0, Lar/f;->e:Ljava/util/Calendar;

    const/4 v2, 0x0

    sput-object v2, Lar/f;->e:Ljava/util/Calendar;
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_19

    goto :goto_11

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lar/f;->c:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x0

    instance-of v1, p1, Lar/f;

    if-eqz v1, :cond_16

    check-cast p1, Lar/f;

    iget-wide v1, p1, Lar/f;->c:J

    iget-wide v3, p0, Lar/f;->c:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    iget-boolean v1, p1, Lar/f;->d:Z

    iget-boolean v2, p0, Lar/f;->d:Z

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public hashCode()I
    .registers 4

    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Lar/f;->c:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-wide v0, p0, Lar/f;->c:J

    iget-boolean v2, p0, Lar/f;->d:Z

    invoke-static {v0, v1, v2}, Lar/f;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
