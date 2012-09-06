.class public final Lcom/anddoes/launcher/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Lcom/anddoes/launcher/a/i;

.field private d:Lcom/anddoes/launcher/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    .line 48
    iput-object p1, p0, Lcom/anddoes/launcher/a/g;->a:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/anddoes/launcher/a/e;->a(Landroid/content/Context;)Lcom/anddoes/launcher/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/anddoes/launcher/a/g;->d:Lcom/anddoes/launcher/a/e;

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 53
    invoke-static {p0}, Lcom/anddoes/launcher/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 54
    const-string v0, ""

    .line 62
    :goto_8
    return-object v0

    .line 57
    :cond_9
    :try_start_9
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_4a} :catch_4c

    move-result-object v0

    goto :goto_8

    .line 60
    :catch_4c
    move-exception v0

    const-string v0, ""

    goto :goto_8
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 103
    .line 106
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 108
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 111
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 112
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 113
    const-string v2, "User-Agent"

    const-string v3, "Dalvik (Linux; U; Android; AndroidDoes)"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 117
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 118
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_7c

    move-result-object v1

    .line 123
    :try_start_4a
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 130
    new-instance v3, Lcom/anddoes/launcher/a/i;

    invoke-direct {v3, p0}, Lcom/anddoes/launcher/a/i;-><init>(Lcom/anddoes/launcher/a/g;)V

    iput-object v3, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    .line 131
    iget-object v3, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 134
    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 135
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 136
    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 138
    if-eqz v0, :cond_76

    .line 139
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_76
    .catchall {:try_start_4a .. :try_end_76} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_76} :catch_99

    .line 146
    :cond_76
    if-eqz v1, :cond_7b

    .line 147
    :try_start_78
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_92

    .line 154
    :cond_7b
    :goto_7b
    return-void

    .line 143
    :catch_7c
    move-exception v0

    move-object v0, v1

    :goto_7e
    const/4 v1, 0x0

    :try_start_7f
    iput-object v1, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;
    :try_end_81
    .catchall {:try_start_7f .. :try_end_81} :catchall_94

    .line 146
    if-eqz v0, :cond_7b

    .line 147
    :try_start_83
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_7b

    .line 150
    :catch_87
    move-exception v0

    goto :goto_7b

    .line 144
    :catchall_89
    move-exception v0

    .line 146
    :goto_8a
    if-eqz v1, :cond_8f

    .line 147
    :try_start_8c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_90

    .line 153
    :cond_8f
    :goto_8f
    throw v0

    :catch_90
    move-exception v1

    goto :goto_8f

    :catch_92
    move-exception v0

    goto :goto_7b

    .line 144
    :catchall_94
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_8a

    .line 143
    :catch_99
    move-exception v0

    move-object v0, v1

    goto :goto_7e
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 78
    :cond_7
    :goto_7
    return v0

    .line 70
    :cond_8
    :try_start_8
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    .line 74
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1f

    .line 78
    const/4 v0, 0x1

    goto :goto_7

    .line 76
    :catch_1f
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public final a()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 198
    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->a:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_12

    .line 199
    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 200
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 225
    :cond_12
    :goto_12
    return-void

    .line 203
    :cond_13
    iget v1, p0, Lcom/anddoes/launcher/a/g;->b:I

    if-nez v1, :cond_5a

    move v1, v2

    .line 204
    :goto_18
    invoke-static {v0}, Lcom/anddoes/launcher/i;->a(Landroid/content/Context;)Lcom/anddoes/launcher/i;

    move-result-object v4

    .line 205
    const-string v5, "User Action"

    .line 206
    const-string v6, "Unlock Pro Version"

    const-string v7, "license_key"

    if-eqz v1, :cond_5c

    .line 204
    :goto_24
    invoke-virtual {v4, v5, v6, v7, v2}, Lcom/anddoes/launcher/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    if-eqz v1, :cond_5e

    const v2, 0x108009b

    :goto_31
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 209
    if-eqz v1, :cond_62

    const/high16 v2, 0x7f06

    :goto_39
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 210
    if-eqz v1, :cond_66

    const v2, 0x7f060194

    :goto_42
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 212
    const v3, 0x7f060007

    .line 213
    new-instance v4, Lcom/anddoes/launcher/a/h;

    invoke-direct {v4, p0, v1, v0}, Lcom/anddoes/launcher/a/h;-><init>(Lcom/anddoes/launcher/a/g;ZLandroid/app/Activity;)V

    .line 212
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_12

    :cond_5a
    move v1, v3

    .line 203
    goto :goto_18

    :cond_5c
    move v2, v3

    .line 206
    goto :goto_24

    .line 208
    :cond_5e
    const v2, 0x1080027

    goto :goto_31

    .line 209
    :cond_62
    const v2, 0x7f060005

    goto :goto_39

    .line 210
    :cond_66
    iget v2, p0, Lcom/anddoes/launcher/a/g;->b:I

    goto :goto_42
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const v2, 0x7f060193

    .line 82
    invoke-static {p1}, Lcom/anddoes/launcher/a/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 83
    const v0, 0x7f06018c

    iput v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    .line 99
    :cond_e
    :goto_e
    return-void

    .line 87
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type=2&key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, "&androidid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/a/g;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anddoes/launcher/ia;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "http://apex1.anddoes.com/license/"

    invoke-direct {p0, v1, v0}, Lcom/anddoes/launcher/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    if-nez v1, :cond_40

    .line 93
    const-string v1, "http://apex2.anddoes.com/license/"

    invoke-direct {p0, v1, v0}, Lcom/anddoes/launcher/a/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_40
    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    if-nez v0, :cond_53

    const v0, 0x7f060192

    iput v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    .line 96
    :goto_49
    iget v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    if-nez v0, :cond_e

    .line 97
    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->d:Lcom/anddoes/launcher/a/e;

    invoke-virtual {v0}, Lcom/anddoes/launcher/a/e;->f()V

    goto :goto_e

    .line 95
    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    iget-object v0, v0, Lcom/anddoes/launcher/a/i;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_93

    move-result v0

    sparse-switch v0, :sswitch_data_96

    :goto_5e
    iput v2, p0, Lcom/anddoes/launcher/a/g;->b:I

    goto :goto_49

    :sswitch_61
    const v0, 0x7f06018e

    iput v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    goto :goto_49

    :sswitch_67
    const v0, 0x7f06018f

    iput v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    goto :goto_49

    :sswitch_6d
    const v0, 0x7f060191

    iput v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    goto :goto_49

    :sswitch_73
    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    iget-object v0, v0, Lcom/anddoes/launcher/a/i;->b:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    iget-object v0, v0, Lcom/anddoes/launcher/a/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/anddoes/launcher/a/g;->d:Lcom/anddoes/launcher/a/e;

    iget-object v1, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    iget-object v1, v1, Lcom/anddoes/launcher/a/i;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/a/g;->c:Lcom/anddoes/launcher/a/i;

    iget-object v2, v2, Lcom/anddoes/launcher/a/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anddoes/launcher/a/e;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/a/g;->b:I

    goto :goto_49

    :cond_90
    iput v2, p0, Lcom/anddoes/launcher/a/g;->b:I

    goto :goto_49

    :catch_93
    move-exception v0

    goto :goto_5e

    nop

    :sswitch_data_96
    .sparse-switch
        0xa -> :sswitch_61
        0xb -> :sswitch_67
        0x14 -> :sswitch_6d
        0xc8 -> :sswitch_73
    .end sparse-switch
.end method
