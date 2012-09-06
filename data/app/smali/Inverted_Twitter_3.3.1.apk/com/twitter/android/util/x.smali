.class public final Lcom/twitter/android/util/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;

.field public static final b:Ljava/text/SimpleDateFormat;

.field public static final c:Ljava/text/SimpleDateFormat;

.field public static final d:Ljava/text/DecimalFormat;

.field public static e:Ljava/security/SecureRandom;

.field private static final f:I

.field private static final g:I

.field private static final h:Ljava/text/SimpleDateFormat;

.field private static i:[C


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/twitter/android/util/SynchronizedDateFormat;

    const-string v1, "EEE MMM dd HH:mm:ss Z yyyy"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/util/SynchronizedDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/twitter/android/util/x;->a:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/twitter/android/util/SynchronizedDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss Z"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/util/SynchronizedDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/twitter/android/util/x;->b:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/twitter/android/util/SynchronizedDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/util/SynchronizedDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/twitter/android/util/x;->c:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/twitter/android/util/x;->d:Ljava/text/DecimalFormat;

    const/4 v0, 0x7

    sput v0, Lcom/twitter/android/util/x;->f:I

    const/16 v0, 0x8

    sput v0, Lcom/twitter/android/util/x;->g:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/twitter/android/util/x;->h:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/twitter/android/util/x;->e:Ljava/security/SecureRandom;

    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/twitter/android/util/x;->i:[C

    return-void
.end method

.method public static a(Ljava/text/SimpleDateFormat;Ljava/lang/String;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_c

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-wide v0

    :cond_c
    :goto_c
    return-wide v0

    :catch_d
    move-exception v2

    goto :goto_c
.end method

.method public static a([Ljava/lang/Object;Ljava/lang/String;C)Landroid/text/Spanned;
    .registers 14

    const/4 v0, 0x0

    const/16 v10, 0x22

    const/4 v9, -0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v9, :cond_10

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_f
    return-object v0

    :cond_10
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v9, :cond_1e

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_f

    :cond_1e
    array-length v6, p0

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v3, v1

    move v4, v2

    move v1, v0

    move v2, v0

    :cond_28
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aget-object v1, p0, v2

    sub-int/2addr v4, v0

    sub-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    const/16 v8, 0x21

    invoke-virtual {v5, v1, v4, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v3, 0x1

    if-ge v2, v6, :cond_5c

    invoke-virtual {p1, v10, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v9, :cond_58

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x2

    :cond_58
    if-eq v4, v9, :cond_5c

    if-ne v3, v9, :cond_28

    :cond_5c
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object v0, v5

    goto :goto_f
.end method

.method public static a([B)Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_9
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_19
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_e} :catch_22

    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_36
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_3a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_11} :catch_38

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_19
    move-exception v1

    move-object v1, v0

    :goto_1b
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catch_22
    move-exception v1

    move-object v1, v0

    :goto_24
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_2b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2f
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_36
    move-exception v0

    goto :goto_2f

    :catch_38
    move-exception v3

    goto :goto_24

    :catch_3a
    move-exception v3

    goto :goto_1b
.end method

.method public static a(I)Ljava/lang/String;
    .registers 6

    if-gtz p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    new-array v1, p0, [C

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    sget-object v2, Lcom/twitter/android/util/x;->i:[C

    sget-object v3, Lcom/twitter/android/util/x;->e:Ljava/security/SecureRandom;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_3
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/lang/String;
    .registers 11

    const-wide/high16 v7, 0x3ff0

    const-wide/high16 v5, 0x4024

    sget v0, Lcom/twitter/android/dv;->abbreviate_number:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    int-to-double v0, p1

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    cmpl-double v2, v0, v7

    if-ltz v2, :cond_2f

    sget-object v2, Lcom/twitter/android/util/x;->d:Ljava/text/DecimalFormat;

    sget v3, Lcom/twitter/android/eb;->number_format_millions:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    sget-object v2, Lcom/twitter/android/util/x;->d:Ljava/text/DecimalFormat;

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v5

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    int-to-double v0, p1

    const-wide v2, 0x40c3880000000000L

    div-double/2addr v0, v2

    cmpl-double v2, v0, v7

    if-ltz v2, :cond_54

    sget-object v2, Lcom/twitter/android/util/x;->d:Ljava/text/DecimalFormat;

    sget v3, Lcom/twitter/android/eb;->number_format_thousands:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    sget-object v2, Lcom/twitter/android/util/x;->d:Ljava/text/DecimalFormat;

    const-wide/high16 v3, 0x4059

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v0, v5

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_54
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :cond_5e
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method public static a(Landroid/content/res/Resources;J)Ljava/lang/String;
    .registers 15

    const-wide/32 v10, 0x5265c00

    const-wide/32 v8, 0x36ee80

    const-wide/32 v6, 0xea60

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_a7

    cmp-long v2, v0, v6

    if-gez v2, :cond_2d

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    sget v1, Lcom/twitter/android/dz;->time_secs:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    return-object v0

    :cond_2d
    cmp-long v2, v0, v8

    if-gez v2, :cond_42

    div-long/2addr v0, v6

    long-to-int v0, v0

    sget v1, Lcom/twitter/android/dz;->time_mins:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_42
    cmp-long v2, v0, v10

    if-gez v2, :cond_57

    div-long/2addr v0, v8

    long-to-int v0, v0

    sget v1, Lcom/twitter/android/dz;->time_hours:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_57
    const-wide/32 v2, 0x240c8400

    cmp-long v2, v0, v2

    if-gez v2, :cond_6f

    div-long/2addr v0, v10

    long-to-int v0, v0

    sget v1, Lcom/twitter/android/dz;->time_days:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_6f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_9b

    sget-object v0, Lcom/twitter/android/util/x;->h:Ljava/text/SimpleDateFormat;

    sget v1, Lcom/twitter/android/eb;->date_format_short:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    :goto_94
    sget-object v0, Lcom/twitter/android/util/x;->h:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c

    :cond_9b
    sget-object v0, Lcom/twitter/android/util/x;->h:Ljava/text/SimpleDateFormat;

    sget v1, Lcom/twitter/android/eb;->date_format_long:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    goto :goto_94

    :cond_a7
    sget-object v0, Lcom/twitter/android/util/x;->h:Ljava/text/SimpleDateFormat;

    sget v1, Lcom/twitter/android/eb;->date_format_long:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    sget-object v0, Lcom/twitter/android/util/x;->h:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ld;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public static a(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static a(Ljava/lang/Object;)[B
    .registers 6

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_8
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_1b

    :try_start_d
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_2f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_13} :catch_31

    move-result-object v0

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v1

    move-object v1, v0

    :goto_1d
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    goto :goto_1a

    :catchall_24
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_28
    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2f
    move-exception v0

    goto :goto_28

    :catch_31
    move-exception v3

    goto :goto_1d
.end method

.method public static a(Ljava/util/Collection;)[I
    .registers 5

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_2c
    move-object v0, v2

    goto :goto_9
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    goto :goto_4

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)Ljava/net/URI;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_7

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :try_start_22
    new-instance v0, Ljava/net/URI;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/URISyntaxException; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_6

    :catch_29
    move-exception v0

    :cond_2a
    move-object v0, v1

    goto :goto_6
.end method

.method public static b(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_57

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :catch_55
    move-exception v0

    :cond_56
    :goto_56
    return-void

    :cond_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_56

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/twitter/android/eb;->intent_chooser_title:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_86
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_86} :catch_55

    goto :goto_56
.end method

.method public static b(Ljava/util/Collection;)[J
    .registers 7

    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v2, v0, [J

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_2c
    move-object v0, v2

    goto :goto_9
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/twitter/android/util/x;->f:I

    if-le v0, v1, :cond_17

    sget v0, Lcom/twitter/android/util/x;->f:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_16
    :goto_16
    return-object p0

    :cond_17
    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/twitter/android/util/x;->g:I

    if-le v0, v1, :cond_16

    sget v0, Lcom/twitter/android/util/x;->g:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_16
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string v0, ""

    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-static {p0, p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object v0

    goto :goto_4

    :catch_a
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/twitter/android/util/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/twitter/android/util/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
