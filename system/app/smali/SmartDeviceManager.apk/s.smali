.class public final Ls;
.super Ljava/lang/Object;
.source "a"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 611
    const-string v0, "(?:1|\\+1)?(\\d{10})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ls;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 678
    const/4 v0, 0x0

    .line 680
    :try_start_2
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_24

    .line 681
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    const/16 v2, 0x400

    new-array v2, v2, [C

    .line 685
    :cond_10
    invoke-virtual {v1, v2}, Ljava/io/Reader;->read([C)I

    move-result v3

    .line 686
    if-eq v3, v5, :cond_1a

    .line 687
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 689
    :cond_1a
    if-ne v3, v5, :cond_10

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_32

    move-result-object v0

    .line 693
    :try_start_20
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_2e

    .line 697
    :goto_23
    return-object v0

    .line 693
    :catchall_24
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_28
    if-eqz v1, :cond_2d

    .line 695
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_30

    .line 697
    :cond_2d
    :goto_2d
    throw v0

    :catch_2e
    move-exception v1

    goto :goto_23

    :catch_30
    move-exception v1

    goto :goto_2d

    .line 693
    :catchall_32
    move-exception v0

    goto :goto_28
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 614
    if-nez p0, :cond_4

    move-object v0, p0

    .line 622
    :goto_3
    return-object v0

    .line 616
    :cond_4
    sget-object v0, Ls;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 618
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 619
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_16
    move-object v0, p0

    .line 622
    goto :goto_3
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 152
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Ls;->a(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;IC)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 169
    if-gez p1, :cond_10

    .line 170
    neg-int v1, p1

    .line 171
    const/4 v2, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    .line 177
    :goto_c
    if-lt v0, v2, :cond_13

    move-object v0, p0

    .line 193
    :goto_f
    return-object v0

    :cond_10
    move v1, v3

    move v2, p1

    .line 174
    goto :goto_c

    .line 179
    :cond_13
    sub-int v0, v2, v0

    .line 181
    new-array v2, v0, [C

    .line 183
    :goto_17
    if-ge v3, v0, :cond_1e

    .line 184
    aput-char p2, v2, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 187
    :cond_1e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .line 189
    if-eqz v1, :cond_37

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 193
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public static a(Z)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 709
    if-eqz p0, :cond_5

    const-string v0, "t"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "f"

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    neg-int v1, v0

    if-nez p0, :cond_38

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :goto_a
    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    add-int/lit8 v1, v2, 0x1

    new-array v2, v1, [Ljava/lang/String;

    move v4, v3

    :goto_19
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_24

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2c

    :cond_24
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    move-object v0, v2

    goto :goto_9

    :cond_2c
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    add-int v3, v5, v0

    move v4, v6

    goto :goto_19

    :cond_38
    move v2, v3

    goto :goto_a
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 637
    const-string v0, ""

    const-string v1, "-"

    const-string v2, "-"

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_60

    :cond_12
    :pswitch_12
    move-object v0, p0

    :goto_13
    return-object v0

    :pswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_data_60
    .packed-switch 0x7
        :pswitch_14
        :pswitch_12
        :pswitch_12
        :pswitch_32
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 202
    if-nez p0, :cond_8

    .line 203
    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 205
    :goto_5
    return v0

    .line 203
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 205
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 713
    if-nez p0, :cond_5

    move v0, v3

    .line 718
    :goto_4
    return v0

    .line 715
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v1, v3

    .line 716
    :goto_a
    if-ge v1, v0, :cond_1b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v0, 0x1

    goto :goto_4

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1b
    move v0, v3

    .line 718
    goto :goto_4
.end method
