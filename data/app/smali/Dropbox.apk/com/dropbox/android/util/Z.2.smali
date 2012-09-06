.class public Lcom/dropbox/android/util/Z;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/dropbox/android/util/Z;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/dropbox/android/util/Z;->a:Z

    .line 33
    const-class v0, Lcom/dropbox/android/util/Z;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/Z;->b:Ljava/lang/String;

    return-void

    .line 31
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to create DropboxPath from non-content uri\'s: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2c
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "/metadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 65
    const/4 v2, -0x1

    if-le v1, v2, :cond_75

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    const-string v1, "/metadata"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4d

    .line 73
    const-string v0, "/"

    .line 79
    :cond_4d
    :try_start_4d
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_52
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4d .. :try_end_52} :catch_93

    move-result-object v0

    .line 82
    :goto_53
    invoke-static {v0}, Lcom/dropbox/android/util/Z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/Z;->d:Ljava/lang/String;

    .line 84
    sget-boolean v0, Lcom/dropbox/android/util/Z;->a:Z

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_92
    return-void

    .line 80
    :catch_93
    move-exception v1

    goto :goto_53
.end method

.method public constructor <init>(Lcom/dropbox/android/util/Z;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget-object v0, p1, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    .line 47
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/dropbox/android/util/Z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/Z;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/dropbox/android/util/Z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/util/Z;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 162
    const/16 v0, 0x3a

    const/16 v1, 0x2236

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 163
    const/16 v1, 0x2a

    const/16 v2, 0x2217

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 164
    const/16 v1, 0x7c

    const/16 v2, 0x2758

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 165
    const/16 v1, 0x3c

    const/16 v2, 0x22d6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 166
    const/16 v1, 0x3e

    const/16 v2, 0x22d7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 167
    const/16 v1, 0x22

    const/16 v2, 0x2033

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 168
    const/16 v1, 0x3f

    const/16 v2, 0x203d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 169
    const/16 v1, 0x25

    const/16 v2, 0x66a

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0
.end method

.method public static a(Landroid/net/Uri;)Z
    .registers 3
    .parameter

    .prologue
    .line 41
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "com.dropbox.android.Dropbox"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 179
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 103
    sget-object v1, Lcom/dropbox/android/d;->b:Landroid/net/Uri;

    .line 105
    const-string v0, ""

    .line 107
    :try_start_4
    iget-object v2, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_2e

    move-result-object v0

    .line 110
    :goto_c
    const-string v2, "%2F"

    const-string v3, "/"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    return-object v0

    .line 108
    :catch_2e
    move-exception v2

    goto :goto_c
.end method

.method public final c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    array-length v1, v0

    if-lez v1, :cond_11

    .line 119
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 121
    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public final d()Z
    .registers 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final e()Lcom/dropbox/android/util/Z;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 143
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    .line 144
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 145
    iget-object v1, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_17
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 148
    new-instance v2, Lcom/dropbox/android/util/Z;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 189
    instance-of v0, p1, Lcom/dropbox/android/util/Z;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/dropbox/android/util/Z;

    iget-object v0, p1, Lcom/dropbox/android/util/Z;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/android/util/Z;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 190
    const/4 v0, 0x1

    .line 192
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final f()Lcom/dropbox/android/util/ap;
    .registers 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/dropbox/android/util/Z;->g()Ljava/lang/String;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/dropbox/android/util/ap;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/dropbox/android/util/ap;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/Z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/dropbox/android/util/Z;->c:Ljava/lang/String;

    return-object v0
.end method
