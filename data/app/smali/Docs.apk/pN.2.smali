.class public LpN;
.super Ljava/lang/Object;
.source "DasherHelper.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "(?:docs[0-9]*|drive)\\.google\\.com"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LpN;->a:Ljava/util/regex/Pattern;

    .line 29
    const-string v0, "drive\\.google\\.com"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LpN;->b:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "spreadsheets[0-9]*\\.google\\.com"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LpN;->c:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, ".*\\.google(\\.co(m?))?(\\.\\w{2})?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LpN;->d:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "^(/a/[a-zA-Z0-9.-]+)(/.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LpN;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez v0, :cond_8

    .line 78
    const/4 v0, 0x0

    .line 84
    :cond_7
    :goto_7
    return-object v0

    .line 80
    :cond_8
    sget-object v1, LpN;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 82
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_21

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_21
    const-string v0, "/"

    goto :goto_7
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 60
    sget-object v0, LpN;->e:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 69
    :cond_34
    :goto_34
    return-object p1

    .line 66
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_34
.end method

.method public static a(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_7
    return v0

    :cond_8
    sget-object v0, LpN;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_7
.end method

.method public static b(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_7
    return v0

    :cond_8
    sget-object v0, LpN;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_7
.end method

.method public static c(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_7
    return v0

    :cond_8
    sget-object v0, LpN;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_7
.end method

.method public static d(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 128
    const/4 v0, 0x0

    .line 130
    :goto_7
    return v0

    :cond_8
    sget-object v0, LpN;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_7
.end method
