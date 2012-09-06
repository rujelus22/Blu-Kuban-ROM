.class public Lcom/dropbox/android/util/ar;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/text/SimpleDateFormat;

.field private static f:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    .line 22
    const-class v0, Lcom/dropbox/android/util/ar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/ar;->a:Ljava/lang/String;

    .line 25
    const-string v0, "/(dcim|[^/]*camera[^/]*)/"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/ar;->b:Ljava/util/regex/Pattern;

    .line 29
    const-string v0, "img_(\\d{8}_\\d{6})(_\\d+)?\\.jpg"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/ar;->c:Ljava/util/regex/Pattern;

    .line 34
    const-string v0, "(\\d{4}).(\\d{2}).(\\d{2}).(\\d{2}).(\\d{2}).(\\d{2})(_\\d+)?\\.jpg"

    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/ar;->d:Ljava/util/regex/Pattern;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dropbox/android/util/ar;->e:Ljava/text/SimpleDateFormat;

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd:HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd KK:mm:ss a"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/dropbox/android/util/ar;->f:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-static {p1}, Lcom/dropbox/android/util/ar;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 68
    :try_start_7
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 69
    const-string v2, "DateTime"

    invoke-virtual {v0, v2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_f1
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_11} :catch_c9

    move-result-object v4

    .line 70
    :try_start_12
    invoke-static {v4}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 71
    invoke-static {v4}, Lcom/dropbox/android/util/ar;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 78
    const-string v3, "Make"

    invoke-virtual {v0, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v5, "Model"

    invoke-virtual {v0, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string v5, "samsung"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    const-string v5, "galaxy nexus"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 81
    sget-object v0, Lcom/dropbox/android/util/ar;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_41} :catch_f1
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_41} :catch_ee

    move-result v3

    if-eqz v3, :cond_101

    .line 84
    :try_start_44
    sget-object v5, Lcom/dropbox/android/util/ar;->e:Ljava/text/SimpleDateFormat;

    monitor-enter v5
    :try_end_47
    .catch Ljava/text/ParseException; {:try_start_44 .. :try_end_47} :catch_f4
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_f1

    .line 85
    :try_start_47
    sget-object v3, Lcom/dropbox/android/util/ar;->e:Ljava/text/SimpleDateFormat;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_51
    .catchall {:try_start_47 .. :try_end_51} :catchall_6b

    move-result-object v0

    .line 86
    :try_start_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_f8

    .line 109
    :goto_53
    if-eqz v0, :cond_c7

    .line 110
    :try_start_55
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_61} :catch_f1
    .catch Ljava/text/ParseException; {:try_start_55 .. :try_end_61} :catch_ee

    move-result-wide v3

    .line 111
    const-wide/32 v5, 0xea60

    cmp-long v1, v3, v5

    if-lez v1, :cond_c7

    move-object v1, v0

    .line 125
    :cond_6a
    :goto_6a
    return-object v1

    .line 86
    :catchall_6b
    move-exception v0

    move-object v3, v1

    :goto_6d
    :try_start_6d
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_fe

    :try_start_6e
    throw v0
    :try_end_6f
    .catch Ljava/text/ParseException; {:try_start_6e .. :try_end_6f} :catch_6f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6f} :catch_f1

    .line 87
    :catch_6f
    move-exception v0

    move-object v0, v3

    goto :goto_53

    .line 92
    :cond_72
    :try_start_72
    const-string v0, "motorola"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 93
    sget-object v0, Lcom/dropbox/android/util/ar;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_101

    .line 97
    const-string v3, "%s:%s:%s %s:%s:%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_be} :catch_f1
    .catch Ljava/text/ParseException; {:try_start_72 .. :try_end_be} :catch_ee

    move-result-object v0

    .line 101
    :try_start_bf
    invoke-static {v0}, Lcom/dropbox/android/util/ar;->c(Ljava/lang/String;)Ljava/util/Date;
    :try_end_c2
    .catch Ljava/text/ParseException; {:try_start_bf .. :try_end_c2} :catch_c4
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_f1

    move-result-object v0

    goto :goto_53

    .line 102
    :catch_c4
    move-exception v0

    move-object v0, v1

    goto :goto_53

    :cond_c7
    move-object v1, v2

    .line 116
    goto :goto_6a

    .line 119
    :catch_c9
    move-exception v0

    move-object v2, v1

    .line 120
    :goto_cb
    sget-object v3, Lcom/dropbox/android/util/ar;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t parse Exif DateTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v0, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    goto/16 :goto_6a

    .line 119
    :catch_ee
    move-exception v0

    move-object v2, v4

    goto :goto_cb

    .line 118
    :catch_f1
    move-exception v0

    goto/16 :goto_6a

    .line 87
    :catch_f4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_53

    .line 86
    :catchall_f8
    move-exception v3

    move-object v9, v3

    move-object v3, v0

    move-object v0, v9

    goto/16 :goto_6d

    :catchall_fe
    move-exception v0

    goto/16 :goto_6d

    :cond_101
    move-object v0, v1

    goto/16 :goto_53
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 48
    const-string v0, "/Pictures/Screenshots/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    sget-object v0, Lcom/dropbox/android/util/ar;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "com.dropbox.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static c(Ljava/lang/String;)Ljava/util/Date;
    .registers 11
    .parameter

    .prologue
    const/16 v3, 0x3a

    const/4 v1, 0x0

    .line 152
    const/16 v0, 0x2f

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 153
    sget-object v3, Lcom/dropbox/android/util/ar;->f:[Ljava/text/SimpleDateFormat;

    array-length v4, v3

    move v0, v1

    :goto_1b
    if-ge v0, v4, :cond_43

    aget-object v5, v3, v0

    .line 154
    monitor-enter v5

    .line 155
    :try_start_20
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/text/ParsePosition;-><init>(I)V

    .line 156
    invoke-virtual {v5, v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v7

    .line 157
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_3c

    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    if-lez v6, :cond_3c

    .line 159
    monitor-exit v5

    return-object v7

    .line 161
    :cond_3c
    monitor-exit v5

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 161
    :catchall_40
    move-exception v0

    monitor-exit v5
    :try_end_42
    .catchall {:try_start_20 .. :try_end_42} :catchall_40

    throw v0

    .line 164
    :cond_43
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse Exif DateTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p0, :cond_4

    .line 175
    :cond_3
    :goto_3
    return v0

    .line 174
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "tiff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_20
    const/4 v0, 0x1

    goto :goto_3
.end method
