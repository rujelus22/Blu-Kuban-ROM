.class public final Lcom/dropbox/android/util/af;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Ljava/util/ArrayList;

.field private static final b:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 114
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    .line 115
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/dropbox/android/util/ag;

    const-wide v2, 0x757b12c00L

    const v4, 0x7f090056

    const v5, 0x7f090055

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/util/ag;-><init>(JII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/dropbox/android/util/ag;

    const-wide v2, 0x9a7ec800L

    const v4, 0x7f090058

    const v5, 0x7f090057

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/util/ag;-><init>(JII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/dropbox/android/util/ag;

    const-wide/32 v2, 0x240c8400

    const v4, 0x7f09005a

    const v5, 0x7f090059

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/util/ag;-><init>(JII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/dropbox/android/util/ag;

    const-wide/32 v2, 0x5265c00

    const v4, 0x7f09005c

    const v5, 0x7f09005b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/util/ag;-><init>(JII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/dropbox/android/util/ag;

    const-wide/32 v2, 0x36ee80

    const v4, 0x7f09005e

    const v5, 0x7f09005d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/util/ag;-><init>(JII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/dropbox/android/util/ag;

    const-wide/32 v2, 0xea60

    const v4, 0x7f090060

    const v5, 0x7f09005f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/util/ag;-><init>(JII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/dropbox/android/util/ag;

    const-wide/16 v2, 0x3e8

    const v4, 0x7f090062

    const v5, 0x7f090061

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/util/ag;-><init>(JII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy kk:mm:ss ZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/dropbox/android/util/af;->b:Ljava/text/DateFormat;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v1, 0x1

    const/4 v3, 0x0

    .line 33
    const-wide/high16 v4, 0xfa0

    cmp-long v0, p1, v4

    if-lez v0, :cond_40

    .line 34
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-wide/high16 v1, 0x1000

    .line 62
    :goto_12
    long-to-double v4, p1

    long-to-double v1, v1

    div-double v1, v4, v1

    .line 64
    invoke-static {p0}, Lcom/dropbox/android/util/aq;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v4

    .line 65
    const/4 v5, -0x1

    if-ne p3, v5, :cond_c2

    .line 66
    invoke-virtual {v4, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 67
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 72
    :goto_28
    invoke-virtual {v4, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 74
    const v2, 0x7f09006c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-static {v2, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_40
    const-wide v4, 0x3e80000000000L

    cmp-long v0, p1, v4

    if-lez v0, :cond_53

    .line 37
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-wide/high16 v1, 0x4

    goto :goto_12

    .line 39
    :cond_53
    const-wide v4, 0xfa00000000L

    cmp-long v0, p1, v4

    if-lez v0, :cond_69

    .line 40
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-wide v1, 0x10000000000L

    goto :goto_12

    .line 42
    :cond_69
    const-wide/32 v4, 0x3e800000

    cmp-long v0, p1, v4

    if-lez v0, :cond_7b

    .line 43
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-wide/32 v1, 0x40000000

    goto :goto_12

    .line 45
    :cond_7b
    const-wide/32 v4, 0xfa000

    cmp-long v0, p1, v4

    if-lez v0, :cond_8d

    .line 46
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-wide/32 v1, 0x100000

    goto :goto_12

    .line 48
    :cond_8d
    const-wide/16 v4, 0x3e8

    cmp-long v0, p1, v4

    if-lez v0, :cond_9e

    .line 49
    const v0, 0x7f090066

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    const-wide/16 v1, 0x400

    goto/16 :goto_12

    .line 52
    :cond_9e
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_ae

    .line 53
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_ab
    move p3, v3

    .line 60
    goto/16 :goto_12

    .line 54
    :cond_ae
    cmp-long v0, p1, v1

    if-nez v0, :cond_ba

    .line 55
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    .line 57
    :cond_ba
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_ab

    .line 69
    :cond_c2
    invoke-virtual {v4, p3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 70
    invoke-virtual {v4, p3}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    goto/16 :goto_28
.end method

.method public static a(Landroid/content/Context;JJ)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 126
    long-to-double v0, p1

    long-to-double v2, p3

    div-double/2addr v0, v2

    .line 128
    invoke-static {p0}, Lcom/dropbox/android/util/aq;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 129
    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 130
    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 131
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 140
    sget-object v1, Lcom/dropbox/android/util/af;->b:Ljava/text/DateFormat;

    monitor-enter v1

    .line 141
    :try_start_3
    sget-object v0, Lcom/dropbox/android/util/af;->b:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 142
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static b(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/ag;

    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/dropbox/android/util/ag;->a(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 157
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/dropbox/android/util/ag;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_20
    return-object v0

    :cond_21
    sget-object v0, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    sget-object v1, Lcom/dropbox/android/util/af;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/util/ag;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/dropbox/android/util/ag;->a(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method
