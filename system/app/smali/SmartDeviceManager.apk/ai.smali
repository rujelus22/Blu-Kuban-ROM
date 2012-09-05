.class public final Lai;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai$1;
    }
.end annotation


# static fields
.field private static c:Lcz;

.field private static d:Ljava/lang/Object;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-object v0, Lai;->c:Lcz;

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lai;->d:Ljava/lang/Object;

    .line 762
    const-string v0, "(\\w+)\\.(\\w+)\\.(\\d*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lai;->e:Ljava/util/regex/Pattern;

    .line 763
    const-string v0, "(\\w+)\\.(\\w+)\\.(\\d*)\\.png"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lai;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lai;->b:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lai;->a:Ljava/lang/String;

    .line 117
    return-void
.end method

.method private Q()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_misc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private R()Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_creds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private S()Ljava/lang/String;
    .registers 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private T()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_features"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private U()Ljava/lang/String;
    .registers 3

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_textResources"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private V()Ljava/lang/String;
    .registers 3

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_exceptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Leg;)Leb;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 859
    invoke-static {p2, p3}, Lai;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-direct {p0, p3, p2}, Lai;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 866
    :try_start_9
    invoke-virtual {p1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_c} :catch_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_3e

    move-result-object v2

    .line 867
    :try_start_d
    invoke-static {v2}, Lec;->a(Ljava/io/InputStream;)[B
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_76
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_81
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_7c

    move-result-object v0

    .line 874
    if-eqz v2, :cond_16

    .line 876
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_72

    .line 882
    :cond_16
    :goto_16
    new-instance v2, Leb;

    invoke-direct {v2, v0, v1, p4}, Leb;-><init>([BLjava/lang/String;Leg;)V

    return-object v2

    .line 870
    :catch_1c
    move-exception v2

    move-object v2, v6

    :goto_1e
    :try_start_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PNG resource not found at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->c(Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_1e .. :try_end_34} :catchall_76

    .line 874
    if-eqz v2, :cond_83

    .line 876
    :try_start_36
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3b

    move-object v0, v6

    .line 878
    goto :goto_16

    :catch_3b
    move-exception v0

    move-object v0, v6

    goto :goto_16

    .line 871
    :catch_3e
    move-exception v2

    move-object v3, v6

    .line 872
    :goto_40
    :try_start_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read PNG resource from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_40 .. :try_end_60} :catchall_79

    .line 874
    if-eqz v3, :cond_83

    .line 876
    :try_start_62
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_67

    move-object v0, v6

    .line 878
    goto :goto_16

    :catch_67
    move-exception v0

    move-object v0, v6

    goto :goto_16

    .line 874
    :catchall_6a
    move-exception v0

    move-object v1, v6

    :goto_6c
    if-eqz v1, :cond_71

    .line 876
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_74

    .line 878
    :cond_71
    :goto_71
    throw v0

    :catch_72
    move-exception v2

    goto :goto_16

    :catch_74
    move-exception v1

    goto :goto_71

    .line 874
    :catchall_76
    move-exception v0

    move-object v1, v2

    goto :goto_6c

    :catchall_79
    move-exception v0

    move-object v1, v3

    goto :goto_6c

    .line 871
    :catch_7c
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_40

    .line 870
    :catch_81
    move-exception v3

    goto :goto_1e

    :cond_83
    move-object v0, v6

    goto :goto_16
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 396
    invoke-direct {p0, p1}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    if-nez v0, :cond_8

    move-object v0, p2

    .line 401
    :goto_7
    return-object v0

    .line 399
    :cond_8
    :try_start_8
    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_f

    move-object v0, v1

    goto :goto_7

    .line 401
    :catch_f
    move-exception v0

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private static a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p0}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 769
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    if-eqz p1, :cond_16

    .line 772
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    :cond_16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)Lu;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ")",
            "Lu",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 990
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 992
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 993
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 994
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 996
    if-eqz v0, :cond_4c

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 998
    :try_start_24
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_29} :catch_31

    move-object v0, v3

    .line 1005
    :goto_2a
    new-instance v3, Lu;

    invoke-direct {v3, v1, v2, v0}, Lu;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    .line 1007
    :goto_30
    return-object v0

    .line 999
    :catch_31
    move-exception v0

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing text resource key, this may be a sign of a bug in the regexp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 1002
    goto :goto_30

    :cond_4a
    move-object v0, v4

    .line 1007
    goto :goto_30

    :cond_4c
    move-object v0, v4

    goto :goto_2a
.end method

.method private a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 438
    if-nez p2, :cond_7

    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :goto_6
    return-void

    .line 441
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/Double;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 424
    if-nez p2, :cond_7

    .line 425
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :goto_6
    return-void

    .line 427
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 361
    if-nez p3, :cond_14

    .line 362
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    :goto_10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    return-void

    .line 364
    :cond_14
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_10
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1198
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1199
    if-nez p2, :cond_18

    .line 1201
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1214
    :goto_14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1215
    return-void

    .line 1204
    :cond_18
    new-instance v1, Lhn;

    invoke-direct {v1}, Lhn;-><init>()V

    .line 1205
    const/4 v2, 0x0

    .line 1207
    :try_start_1e
    invoke-virtual {v1, p2}, Lhn;->a(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_26

    move-result-object v1

    .line 1212
    :goto_22
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    .line 1208
    :catch_26
    move-exception v1

    .line 1209
    const-string v3, "cannot write write lockConfig as JSON"

    invoke-static {v3, v1}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    goto :goto_22
.end method

.method private static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    invoke-static {p1, p2}, Lai;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_7} :catch_d

    move-result-object v0

    .line 1066
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_b} :catch_d

    .line 1070
    :goto_b
    const/4 v0, 0x1

    .line 1072
    :goto_c
    return v0

    :catch_d
    move-exception v0

    const/4 v0, 0x0

    goto :goto_c

    :catch_10
    move-exception v0

    goto :goto_b
.end method

.method private b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_RESOURCE_HASH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-direct {p0, v0}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 342
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ldg;Ljava/lang/Integer;)Ljava/util/Set;
    .registers 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldg;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lu",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 953
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 954
    if-eqz p1, :cond_35

    .line 955
    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v1

    .line 956
    const/4 v2, 0x0

    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_3a

    .line 957
    aget-object v3, v1, v2

    .line 959
    sget-object v4, Lai;->f:Ljava/util/regex/Pattern;

    invoke-static {v3, v4}, Lai;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Lu;

    move-result-object v3

    .line 960
    if-eqz v3, :cond_32

    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lu;->a:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    iget-object p0, v3, Lu;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p2, p0}, Lm;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 964
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 969
    :cond_35
    const-string v1, "request to match png resources with null feature"

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    .line 971
    :cond_3a
    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 406
    if-nez p2, :cond_7

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_6
    return-void

    .line 409
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private c(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_RESOURCE_HASH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lai;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 370
    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 387
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    return-void
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 346
    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/Double;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-direct {p0, p1}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    if-nez v0, :cond_9

    move-object v0, v2

    .line 419
    :goto_8
    return-object v0

    .line 417
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_e} :catch_10

    move-object v0, v1

    goto :goto_8

    .line 419
    :catch_10
    move-exception v0

    move-object v0, v2

    goto :goto_8
.end method

.method private i(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 433
    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 434
    :goto_7
    return v0

    :cond_8
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7
.end method

.method private j(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1174
    :try_start_2
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1175
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    if-eqz v0, :cond_3d

    .line 1178
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Lhn;

    invoke-direct {v0}, Lhn;-><init>()V

    .line 1180
    :goto_23
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_26} :catch_3f

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 1183
    :try_start_29
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lbn;

    invoke-virtual {v0, v4, v5}, Lhn;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_3a} :catch_47
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_3a} :catch_3f

    .line 1180
    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3d
    move-object v0, v1

    .line 1193
    :goto_3e
    return-object v0

    .line 1190
    :catch_3f
    move-exception v0

    .line 1192
    const-string v1, "Unable to get lockConfigs"

    invoke-static {v1, v0}, Lj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v6

    .line 1193
    goto :goto_3e

    :catch_47
    move-exception v4

    goto :goto_3a
.end method


# virtual methods
.method public final A()J
    .registers 4

    .prologue
    .line 574
    const-string v0, "_LAST_CALL_OUTGOING"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final B()Lac;
    .registers 4

    .prologue
    .line 447
    new-instance v0, Lac;

    iget-object v1, p0, Lai;->b:Landroid/content/Context;

    const-string v2, "NETWORK_LOCATION_PILE"

    invoke-direct {v0, v1, v2}, Lac;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public final C()Z
    .registers 2

    .prologue
    .line 613
    const-string v0, "_GPS_INACCURATE"

    invoke-direct {p0, v0}, Lai;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final D()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1085
    :try_start_1
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    const-string v1, "VERSION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 1086
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1087
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1088
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1089
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1d} :catch_22

    move-object v0, v2

    .line 1098
    :goto_1e
    return-object v0

    .line 1094
    :catch_1f
    move-exception v0

    move-object v0, v3

    goto :goto_1e

    .line 1096
    :catch_22
    move-exception v0

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reading version;  assuming 1st install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    move-object v0, v3

    .line 1098
    goto :goto_1e
.end method

.method public final E()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1131
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_CONTACT_HASH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final F()J
    .registers 5

    .prologue
    .line 1143
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_CHECK_CONTACT_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final G()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1157
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_APPLIST_HASH"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final H()J
    .registers 5

    .prologue
    .line 1169
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_CHECK_APPLIST_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final I()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1219
    const-string v0, "_LOCK_CONFIG"

    invoke-direct {p0, v0}, Lai;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final J()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    const-string v0, "_DWD_CONFIG"

    invoke-direct {p0, v0}, Lai;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbn;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lbn;->setFake(Z)V

    goto :goto_a

    .line 1231
    :cond_1b
    return-object v0
.end method

.method public final K()J
    .registers 4

    .prologue
    .line 1241
    const-string v0, "_LAST_SHADE_ID"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final L()Z
    .registers 2

    .prologue
    .line 1251
    const-string v0, "_GPS_STATE"

    invoke-direct {p0, v0}, Lai;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final M()J
    .registers 4

    .prologue
    .line 1266
    const-string v0, "_OVERRIDEN_LOCK_ID"

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final N()J
    .registers 4

    .prologue
    .line 1276
    const-string v0, "_LAST_OVERRIDE_TIME"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O()J
    .registers 4

    .prologue
    .line 1286
    const-string v0, "_OVERRIDE_UNTIL"

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final P()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->V()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1298
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 1299
    return-object v0
.end method

.method public final a()Lda;
    .registers 4

    .prologue
    .line 240
    new-instance v0, Lda;

    invoke-static {}, Lal;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lal;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lda;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lbk;)Lef;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbk;",
            ")",
            "Lef",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 842
    sget-object v0, Lai$1;->a:[I

    invoke-virtual {p2}, Lbk;->getResourceType()Leh;

    move-result-object v1

    invoke-virtual {v1}, Leh;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown resource type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lbk;->getResourceType()Leh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj;->a(Ljava/lang/String;)V

    .line 852
    const/4 v0, 0x0

    :goto_2a
    return-object v0

    .line 845
    :pswitch_2b
    invoke-virtual {p2}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lbk;->getResourceFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lbk;->getResourceDiscriminator()Leg;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lai;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Leg;)Leb;

    move-result-object v0

    goto :goto_2a

    .line 849
    :pswitch_3c
    invoke-virtual {p2}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lbk;->getResourceFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lai;->U()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0}, Lai;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ler;

    invoke-direct {v1, v2, v0}, Ler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2a

    .line 842
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_3c
    .end packed-switch
.end method

.method public final a(Ldg;)Ljava/lang/Boolean;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 642
    if-nez p1, :cond_8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 645
    :goto_7
    return-object v0

    .line 643
    :cond_8
    invoke-virtual {p0}, Lai;->b()Lcq;

    move-result-object v0

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No account, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->b(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7

    .line 644
    :cond_33
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 645
    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ldg;->b()Ldg;

    move-result-object v2

    invoke-virtual {p0, v2}, Lai;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_7
.end method

.method public final a(Lbk;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 1018
    invoke-virtual {p1}, Lbk;->getResourceFullName()Ljava/lang/String;

    move-result-object v0

    .line 1019
    invoke-virtual {p1}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v1

    .line 1020
    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 306
    const-string v0, "_CLAIM_VERIFY_CYCLE"

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 307
    return-void
.end method

.method public final a(J)V
    .registers 5
    .parameter

    .prologue
    .line 536
    const-string v0, "_LAST_SMS_OUTGOING"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 537
    return-void
.end method

.method public final a(Landroid/content/Context;Lbk;Lef;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lbk;",
            "Lef",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 779
    invoke-virtual {p2}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lbk;->getResourceFullName()Ljava/lang/String;

    move-result-object v3

    instance-of v1, p3, Leb;

    if-eqz v1, :cond_c6

    invoke-static {v2, v3}, Lai;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p3

    check-cast v0, Leb;

    move-object v1, v0

    iget-object v1, v1, Leb;->a:[B

    if-nez v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Nothing in the PNG resource, will not persist to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V

    move v1, v8

    :goto_31
    if-eqz v1, :cond_4f

    iget-object v1, p3, Lef;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_RESOURCE_HASH"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3, v2}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_4f
    return-void

    .line 779
    :cond_50
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_52
    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_be
    .catch Ljava/io/FileNotFoundException; {:try_start_52 .. :try_end_55} :catch_66
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_91

    move-result-object v5

    :try_start_56
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_103
    .catch Ljava/io/FileNotFoundException; {:try_start_56 .. :try_end_5c} :catch_66
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_91

    if-eqz v5, :cond_106

    :try_start_5e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_63

    move v1, v7

    goto :goto_31

    :catch_63
    move-exception v1

    move v1, v7

    goto :goto_31

    :catch_66
    move-exception v1

    :try_start_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to persist PNG resource to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_67 .. :try_end_87} :catchall_103

    if-eqz v5, :cond_fe

    :try_start_89
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8e

    move v1, v8

    goto :goto_31

    :catch_8e
    move-exception v1

    move v1, v8

    goto :goto_31

    :catch_91
    move-exception v1

    :try_start_92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to persist PNG resource to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li;->d(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_92 .. :try_end_b2} :catchall_103

    if-eqz v5, :cond_fe

    :try_start_b4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_ba

    move v1, v8

    goto/16 :goto_31

    :catch_ba
    move-exception v1

    move v1, v8

    goto/16 :goto_31

    :catchall_be
    move-exception v1

    move-object v2, v5

    :goto_c0
    if-eqz v2, :cond_c5

    :try_start_c2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_101

    :cond_c5
    :goto_c5
    throw v1

    :cond_c6
    instance-of v1, p3, Ler;

    if-eqz v1, :cond_de

    invoke-static {v3, v2}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p3

    check-cast v0, Ler;

    move-object v1, v0

    iget-object v1, v1, Ler;->a:Ljava/lang/String;

    invoke-direct {p0}, Lai;->U()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    goto/16 :goto_31

    :cond_de
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for application id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is an unknown type of resource, not persisting"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj;->a(Ljava/lang/String;)V

    :cond_fe
    move v1, v8

    goto/16 :goto_31

    :catch_101
    move-exception v2

    goto :goto_c5

    :catchall_103
    move-exception v1

    move-object v2, v5

    goto :goto_c0

    :cond_106
    move v1, v7

    goto/16 :goto_31
.end method

.method public final a(Landroid/content/Context;Ldg;Ljava/lang/Integer;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 896
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_4c

    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->U()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lai;->e:Ljava/util/regex/Pattern;

    invoke-static {v0, v3}, Lai;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)Lu;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {p2}, Ldg;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v4, v3, Lu;->a:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v3, Lu;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-static {p3, v0}, Lm;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_4c
    const-string v0, "request to match text resources with null feature"

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    :cond_51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu;

    .line 898
    iget-object v0, v0, Lu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lah;->a(Ldg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-static {v0, p3}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lai;->U()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lai;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lai;->c(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_55

    .line 901
    :cond_78
    invoke-static {p1, p2, p3}, Lai;->b(Landroid/content/Context;Ldg;Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu;

    .line 903
    iget-object v0, v0, Lu;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p2, v0}, Lah;->a(Ldg;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 904
    invoke-static {p3, v0}, Lai;->a(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-direct {p0, v0, p3}, Lai;->c(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_80

    .line 906
    :cond_9f
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 466
    if-nez p1, :cond_18

    .line 467
    const-string v0, "_LAST_GPS_TIME"

    invoke-direct {p0, v0, v1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v0, "_LAST_GPS_ACC"

    invoke-direct {p0, v0, v1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v0, "_LAST_GPS_LATITUDE"

    invoke-direct {p0, v0, v1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v0, "_LAST_GPS_LONGITUDE"

    invoke-direct {p0, v0, v1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_17
    return-void

    .line 472
    :cond_18
    const-string v0, "_LAST_GPS_TIME"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 473
    const-string v0, "_LAST_GPS_ACC"

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Double;)V

    .line 474
    const-string v0, "_LAST_GPS_LATITUDE"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Double;)V

    .line 475
    const-string v0, "_LAST_GPS_LONGITUDE"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_17
.end method

.method public final a(Lcq;)V
    .registers 5
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->R()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    if-nez p1, :cond_29

    .line 155
    const-string v1, "_TOKEN"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    const-string v1, "_TOKEN_SECRET"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v1, "_MO_SMS_NUMBER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    const-string v1, "_MO_SMS_PREFIX"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    :goto_25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    return-void

    .line 160
    :cond_29
    const-string v1, "_TOKEN"

    iget-object v2, p1, Lcq;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    const-string v1, "_TOKEN_SECRET"

    iget-object v2, p1, Lcq;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    const-string v1, "_MO_SMS_NUMBER"

    iget-object v2, p1, Lcq;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    const-string v1, "_MO_SMS_PREFIX"

    iget-object v2, p1, Lcq;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_25
.end method

.method public final a(Lcs;)V
    .registers 4
    .parameter

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcs;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 728
    iget-object v1, p1, Lcs;->b:Ljava/lang/String;

    .line 729
    invoke-direct {p0, v0, v1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public final a(Lcz;)V
    .registers 7
    .parameter

    .prologue
    .line 191
    sget-object v1, Lai;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_3
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->S()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 193
    if-nez p1, :cond_21

    .line 194
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 204
    :cond_17
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 205
    sput-object p1, Lai;->c:Lcz;

    .line 207
    :cond_1f
    monitor-exit v1

    return-void

    .line 196
    :cond_21
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v0, "_CONFIG_HASH"

    iget-object v3, p1, Lcz;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    iget-object v0, p1, Lcz;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 199
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "_CONFIG_HASH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 200
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5f

    goto :goto_35

    .line 207
    :catchall_5f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ldg;Ljava/lang/Boolean;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 651
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 652
    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 653
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 654
    return-void
.end method

.method public final a(Ldg;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_hash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 677
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    return-void
.end method

.method public final a(Ldg;Ljava/util/Set;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    if-nez p2, :cond_2f

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 716
    :goto_2b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 717
    return-void

    .line 712
    :cond_2f
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_applications"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2b
.end method

.method public final a(Ljava/lang/Long;)V
    .registers 3
    .parameter

    .prologue
    .line 326
    const-string v0, "_CONSUMER_RETRY_TIME"

    invoke-direct {p0, v0, p1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 288
    const-string v0, "_CLAIMED_NUMBER"

    invoke-direct {p0, v0, p1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1291
    invoke-direct {p0}, Lai;->V()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1224
    const-string v0, "_LOCK_CONFIG"

    invoke-direct {p0, v0, p1}, Lai;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1225
    return-void
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 316
    const-string v0, "_CLAIM_VERIFIED"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 317
    return-void
.end method

.method public final b()Lcq;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 170
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->R()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    const-string v1, "_TOKEN"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "_TOKEN_SECRET"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    const-string v3, "_MO_SMS_NUMBER"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    const-string v4, "_MO_SMS_PREFIX"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    if-eqz v1, :cond_28

    if-nez v2, :cond_2a

    :cond_28
    move-object v0, v5

    .line 186
    :goto_29
    return-object v0

    .line 180
    :cond_2a
    new-instance v4, Lcq;

    invoke-direct {v4}, Lcq;-><init>()V

    .line 181
    iput-object v1, v4, Lcq;->a:Ljava/lang/String;

    .line 182
    iput-object v2, v4, Lcq;->b:Ljava/lang/String;

    .line 183
    iput-object v3, v4, Lcq;->c:Ljava/lang/String;

    .line 184
    iput-object v0, v4, Lcq;->d:Ljava/lang/String;

    move-object v0, v4

    .line 186
    goto :goto_29
.end method

.method public final b(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_APPLICATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-direct {p0, v0}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ldg;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_hash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(J)V
    .registers 5
    .parameter

    .prologue
    .line 544
    const-string v0, "_LAST_SMS_INCOMING"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 545
    return-void
.end method

.method public final b(Ljava/lang/Long;)V
    .registers 3
    .parameter

    .prologue
    .line 337
    const-string v0, "_NEXT_GPS_UPDATE_TIME"

    invoke-direct {p0, v0, p1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 338
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 526
    const-string v0, "_SIM_SERIAL_NUM"

    invoke-direct {p0, v0, p1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lbn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1236
    const-string v0, "_DWD_CONFIG"

    invoke-direct {p0, v0, p1}, Lai;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 1237
    return-void
.end method

.method public final b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 588
    const-string v0, "_SEND_GPS_ERROR"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    return-void
.end method

.method public final b(Landroid/content/Context;Lbk;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1036
    invoke-virtual {p2}, Lbk;->getApplicationId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lbk;->getResourceFullName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lai;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lai;->U()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lai;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    move v2, v5

    :goto_19
    if-eqz v2, :cond_23

    sget-object v0, Leh;->a:Leh;

    :goto_1d
    if-eqz v0, :cond_2e

    move v0, v5

    :goto_20
    return v0

    :cond_21
    move v2, v4

    goto :goto_19

    :cond_23
    invoke-static {p1, v0, v1}, Lai;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Leh;->b:Leh;

    goto :goto_1d

    :cond_2c
    const/4 v0, 0x0

    goto :goto_1d

    :cond_2e
    move v0, v4

    goto :goto_20
.end method

.method public final c()Lcz;
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 212
    sget-object v2, Lai;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 213
    :try_start_4
    sget-object v0, Lai;->c:Lcz;

    if-eqz v0, :cond_c

    sget-object v0, Lai;->c:Lcz;

    monitor-exit v2

    .line 229
    :goto_b
    return-object v0

    .line 214
    :cond_c
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->S()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 216
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v5, v7

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 218
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "_CONFIG_HASH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    move-object v5, v0

    .line 220
    goto :goto_29

    .line 222
    :cond_4b
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_4 .. :try_end_52} :catchall_53

    goto :goto_29

    .line 230
    :catchall_53
    move-exception v0

    monitor-exit v2

    throw v0

    .line 225
    :cond_56
    if-nez v5, :cond_5b

    .line 226
    :try_start_58
    monitor-exit v2

    move-object v0, v7

    goto :goto_b

    .line 228
    :cond_5b
    new-instance v0, Lcz;

    invoke-direct {v0, v5, v3}, Lcz;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 229
    sput-object v0, Lai;->c:Lcz;

    monitor-exit v2
    :try_end_63
    .catchall {:try_start_58 .. :try_end_63} :catchall_53

    goto :goto_b
.end method

.method public final c(Ldg;)Ljava/util/Set;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 686
    :try_start_2
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ldg;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_applications"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 690
    if-eqz v0, :cond_4b

    .line 691
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move v0, v3

    .line 692
    :goto_36
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4b

    .line 693
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 694
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_48
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_48} :catch_4d

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4b
    move-object v0, v1

    .line 701
    :goto_4c
    return-object v0

    .line 698
    :catch_4d
    move-exception v0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get applications for feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lj;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 701
    goto :goto_4c
.end method

.method public final c(I)V
    .registers 5
    .parameter

    .prologue
    .line 1124
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1125
    const-string v1, "_CONTACT_HASH"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1127
    return-void
.end method

.method public final c(J)V
    .registers 5
    .parameter

    .prologue
    .line 553
    const-string v0, "_LAST_MMS_OUTGOING"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 554
    return-void
.end method

.method public final c(Ljava/lang/Long;)V
    .registers 3
    .parameter

    .prologue
    .line 486
    const-string v0, "_LAST_NETWORK_FEED_UPDATE_TIME"

    invoke-direct {p0, v0, p1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 487
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 501
    const-string v0, "_C2DMID"

    invoke-direct {p0, v0, p1}, Lai;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public final c(Z)V
    .registers 4
    .parameter

    .prologue
    .line 593
    const-string v0, "_SEND_NETWORK_ERROR"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 594
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 235
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->S()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "_CONFIG_HASH"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)V
    .registers 5
    .parameter

    .prologue
    .line 1150
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1151
    const-string v1, "_APPLIST_HASH"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1153
    return-void
.end method

.method public final d(J)V
    .registers 5
    .parameter

    .prologue
    .line 561
    const-string v0, "_LAST_MMS_INCOMING"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 562
    return-void
.end method

.method public final d(Ljava/lang/Long;)V
    .registers 3
    .parameter

    .prologue
    .line 496
    const-string v0, "_LAST_NOTIFICATION_SENT_TIME"

    invoke-direct {p0, v0, p1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 511
    const-string v0, "_C2DMID_SERVER"

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lai;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    return-void
.end method

.method public final d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 608
    const-string v0, "_GPS_INACCURATE"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 609
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 283
    const-string v0, "_CLAIMED_NUMBER"

    invoke-direct {p0, v0}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(J)V
    .registers 5
    .parameter

    .prologue
    .line 578
    const-string v0, "_LAST_CALL_INCOMING"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 579
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1105
    :try_start_0
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1107
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1108
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_28} :catch_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_28} :catch_30

    .line 1120
    :goto_28
    return-void

    .line 1114
    :catch_29
    move-exception v0

    const-string v0, "FileNotFound writing version file"

    invoke-static {v0}, Li;->e(Ljava/lang/String;)V

    goto :goto_28

    .line 1116
    :catch_30
    move-exception v0

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " writing version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li;->d(Ljava/lang/String;)V

    goto :goto_28

    .line 1118
    :catch_4e
    move-exception v0

    goto :goto_28
.end method

.method public final e(Z)V
    .registers 4
    .parameter

    .prologue
    .line 1256
    const-string v0, "_GPS_STATE"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1257
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    const-string v0, "_SIM_SERIAL_NUM"

    invoke-direct {p0, v0}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f(J)V
    .registers 5
    .parameter

    .prologue
    .line 570
    const-string v0, "_LAST_CALL_OUTGOING"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1304
    invoke-direct {p0}, Lai;->V()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lai;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public final g()I
    .registers 4

    .prologue
    .line 301
    const-string v0, "_CLAIM_VERIFY_CYCLE"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final g(J)V
    .registers 6
    .parameter

    .prologue
    .line 1136
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1137
    const-string v1, "_CHECK_CONTACT_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1139
    return-void
.end method

.method public final h(J)V
    .registers 6
    .parameter

    .prologue
    .line 1162
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1163
    const-string v1, "_CHECK_APPLIST_TIME"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1164
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1165
    return-void
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 311
    const-string v0, "_CLAIM_VERIFIED"

    invoke-direct {p0, v0}, Lai;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 321
    const-string v0, "_CONSUMER_RETRY_TIME"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final i(J)V
    .registers 5
    .parameter

    .prologue
    .line 1246
    const-string v0, "_LAST_SHADE_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1247
    return-void
.end method

.method public final j()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 331
    const-string v0, "_NEXT_GPS_UPDATE_TIME"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final j(J)V
    .registers 5
    .parameter

    .prologue
    .line 1261
    const-string v0, "_OVERRIDEN_LOCK_ID"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1262
    return-void
.end method

.method public final k()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 481
    const-string v0, "_LAST_NETWORK_FEED_UPDATE_TIME"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final k(J)V
    .registers 5
    .parameter

    .prologue
    .line 1271
    const-string v0, "_LAST_OVERRIDE_TIME"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1272
    return-void
.end method

.method public final l()Landroid/location/Location;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 452
    const-string v0, "_LAST_GPS_TIME"

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_40

    .line 455
    new-instance v1, Landroid/location/Location;

    const-string v2, "gps"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 456
    const-string v2, "_LAST_GPS_ACC"

    invoke-direct {p0, v2}, Lai;->h(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 457
    const-string v2, "_LAST_GPS_LATITUDE"

    invoke-direct {p0, v2}, Lai;->h(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 458
    const-string v2, "_LAST_GPS_LONGITUDE"

    invoke-direct {p0, v2}, Lai;->h(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 459
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    move-object v0, v1

    .line 461
    :goto_3f
    return-object v0

    :cond_40
    move-object v0, v1

    goto :goto_3f
.end method

.method public final l(J)V
    .registers 5
    .parameter

    .prologue
    .line 1281
    const-string v0, "_OVERRIDE_UNTIL"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->b(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1282
    return-void
.end method

.method public final m()Ljava/lang/Long;
    .registers 3

    .prologue
    .line 491
    const-string v0, "_LAST_NOTIFICATION_SENT_TIME"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final n()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ldg;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 618
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 619
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 620
    invoke-virtual {p0}, Lai;->b()Lcq;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 621
    invoke-static {}, Ldg;->values()[Ldg;

    move-result-object v0

    array-length v2, v0

    move v3, v7

    :goto_1c
    if-ge v3, v2, :cond_72

    aget-object v4, v0, v3

    .line 622
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 625
    :cond_2a
    invoke-static {}, Ldg;->values()[Ldg;

    move-result-object v2

    array-length v3, v2

    move v4, v7

    :goto_30
    if-ge v4, v3, :cond_72

    aget-object v5, v2, v4

    .line 626
    invoke-virtual {v5}, Ldg;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 627
    invoke-virtual {v5}, Ldg;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 629
    :cond_50
    invoke-virtual {v5}, Ldg;->b()Ldg;

    move-result-object v6

    if-nez v6, :cond_5e

    .line 630
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 632
    :cond_5e
    invoke-virtual {v5}, Ldg;->b()Ldg;

    move-result-object v6

    invoke-virtual {v6}, Ldg;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 637
    :cond_72
    return-object v1
.end method

.method public final o()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ldg;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 658
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    invoke-direct {p0}, Lai;->T()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 660
    invoke-static {}, Ldg;->values()[Ldg;

    move-result-object v2

    array-length v3, v2

    :goto_15
    if-ge v4, v3, :cond_3b

    aget-object v5, v2, v4

    .line 661
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ldg;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_hash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 663
    :cond_3b
    return-object v1
.end method

.method public final p()V
    .registers 4

    .prologue
    .line 262
    iget-object v0, p0, Lai;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lai;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_failures"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 266
    return-void
.end method

.method public final q()Z
    .registers 2

    .prologue
    .line 598
    const-string v0, "_SEND_GPS_ERROR"

    invoke-direct {p0, v0}, Lai;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final r()Z
    .registers 2

    .prologue
    .line 603
    const-string v0, "_SEND_NETWORK_ERROR"

    invoke-direct {p0, v0}, Lai;->i(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 506
    const-string v0, "_C2DMID"

    invoke-direct {p0, v0}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 516
    const-string v0, "_C2DMID_SERVER"

    invoke-direct {p0, v0}, Lai;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .registers 5

    .prologue
    .line 521
    const-string v0, "_C2DMID_SERVER"

    invoke-direct {p0}, Lai;->Q()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lai;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final v()J
    .registers 4

    .prologue
    .line 540
    const-string v0, "_LAST_SMS_OUTGOING"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final w()J
    .registers 4

    .prologue
    .line 548
    const-string v0, "_LAST_SMS_INCOMING"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final x()J
    .registers 4

    .prologue
    .line 557
    const-string v0, "_LAST_MMS_OUTGOING"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final y()J
    .registers 4

    .prologue
    .line 565
    const-string v0, "_LAST_MMS_INCOMING"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final z()J
    .registers 4

    .prologue
    .line 582
    const-string v0, "_LAST_CALL_INCOMING"

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lai;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
