.class public final Lcom/anddoes/launcher/bb;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput v1, p0, Lcom/anddoes/launcher/bb;->b:I

    .line 32
    iput v1, p0, Lcom/anddoes/launcher/bb;->e:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/bb;->f:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/bb;->h:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/anddoes/launcher/bb;->i:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/anddoes/launcher/bb;->j:Z

    .line 40
    iput-object p1, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    .line 41
    iput p2, p0, Lcom/anddoes/launcher/bb;->b:I

    .line 42
    iput-object p3, p0, Lcom/anddoes/launcher/bb;->c:Ljava/lang/String;

    .line 43
    const-string v0, "BETA"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_24
    iput-object p4, p0, Lcom/anddoes/launcher/bb;->d:Ljava/lang/String;

    .line 44
    iput-boolean p5, p0, Lcom/anddoes/launcher/bb;->j:Z

    .line 45
    return-void

    .line 43
    :cond_29
    const-string p4, ""

    goto :goto_24
.end method

.method static synthetic a(Lcom/anddoes/launcher/bb;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/anddoes/launcher/bb;->i:Ljava/lang/String;

    return-object v0
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    .line 64
    :try_start_2
    new-instance v2, Ljava/net/URL;

    const-string v3, "http://apex.anddoes.com/CheckUpdate.aspx?"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "fromVersion="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/anddoes/launcher/bb;->b:I

    if-lez v4, :cond_1b

    iget v0, p0, Lcom/anddoes/launcher/bb;->b:I

    :cond_1b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "google"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&vendor=google"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_42
    iget-object v3, p0, Lcom/anddoes/launcher/bb;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_67

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&type="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/anddoes/launcher/bb;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_67
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->f()Z

    move-result v3

    if-eqz v3, :cond_80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&test=true"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_80
    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_89
    .catchall {:try_start_2 .. :try_end_89} :catchall_14d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_89} :catch_156

    .line 66
    const/16 v2, 0x2710

    :try_start_8b
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 67
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 68
    const-string v2, "User-Agent"

    const-string v3, "Dalvik (Linux; U; Android; AndroidDoes)"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_15d

    .line 71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_150
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_aa} :catch_15a

    move-result-object v2

    .line 72
    :try_start_ab
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 73
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    :goto_ba
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_116

    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13f

    .line 80
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_cf
    .catchall {:try_start_ab .. :try_end_cf} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_cf} :catch_11a

    .line 82
    :try_start_cf
    const-string v3, "versionCode"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/anddoes/launcher/bb;->e:I
    :try_end_db
    .catchall {:try_start_cf .. :try_end_db} :catchall_130
    .catch Ljava/lang/NumberFormatException; {:try_start_cf .. :try_end_db} :catch_12b
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_db} :catch_11a

    .line 86
    :goto_db
    :try_start_db
    const-string v3, "versionName"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anddoes/launcher/bb;->f:Ljava/lang/String;

    .line 87
    const-string v3, "msg"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anddoes/launcher/bb;->g:Ljava/lang/String;

    .line 88
    const-string v3, "log"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anddoes/launcher/bb;->h:Ljava/lang/String;

    .line 89
    const-string v3, "url"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/anddoes/launcher/bb;->i:Ljava/lang/String;
    :try_end_10b
    .catchall {:try_start_db .. :try_end_10b} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_10b} :catch_11a

    .line 99
    :goto_10b
    if-eqz v2, :cond_110

    .line 100
    :try_start_10d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_110} :catch_149

    .line 106
    :cond_110
    :goto_110
    if-eqz v0, :cond_115

    .line 107
    :try_start_112
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_115} :catch_14b

    .line 113
    :cond_115
    :goto_115
    return-object v1

    .line 76
    :cond_116
    :try_start_116
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_11a

    goto :goto_ba

    .line 94
    :catch_11a
    move-exception v3

    .line 95
    :goto_11b
    const/4 v3, 0x0

    :try_start_11c
    iput v3, p0, Lcom/anddoes/launcher/bb;->e:I
    :try_end_11e
    .catchall {:try_start_11c .. :try_end_11e} :catchall_130

    .line 99
    if-eqz v2, :cond_123

    .line 100
    :try_start_120
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_123} :catch_143

    .line 106
    :cond_123
    :goto_123
    if-eqz v0, :cond_115

    .line 107
    :try_start_125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_128} :catch_129

    goto :goto_115

    .line 110
    :catch_129
    move-exception v0

    goto :goto_115

    .line 84
    :catch_12b
    move-exception v3

    const/4 v3, 0x0

    :try_start_12d
    iput v3, p0, Lcom/anddoes/launcher/bb;->e:I
    :try_end_12f
    .catchall {:try_start_12d .. :try_end_12f} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_12f} :catch_11a

    goto :goto_db

    .line 97
    :catchall_130
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 99
    :goto_134
    if-eqz v2, :cond_139

    .line 100
    :try_start_136
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_145

    .line 106
    :cond_139
    :goto_139
    if-eqz v1, :cond_13e

    .line 107
    :try_start_13b
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13e} :catch_147

    .line 112
    :cond_13e
    :goto_13e
    throw v0

    .line 91
    :cond_13f
    const/4 v3, 0x0

    :try_start_140
    iput v3, p0, Lcom/anddoes/launcher/bb;->e:I
    :try_end_142
    .catchall {:try_start_140 .. :try_end_142} :catchall_130
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_142} :catch_11a

    goto :goto_10b

    :catch_143
    move-exception v2

    goto :goto_123

    :catch_145
    move-exception v2

    goto :goto_139

    :catch_147
    move-exception v1

    goto :goto_13e

    :catch_149
    move-exception v2

    goto :goto_110

    :catch_14b
    move-exception v0

    goto :goto_115

    .line 97
    :catchall_14d
    move-exception v0

    move-object v2, v1

    goto :goto_134

    :catchall_150
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_134

    .line 94
    :catch_156
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_11b

    :catch_15a
    move-exception v2

    move-object v2, v1

    goto :goto_11b

    :cond_15d
    move-object v2, v1

    goto :goto_10b
.end method

.method static synthetic b(Lcom/anddoes/launcher/bb;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 203
    const-string v0, "http://apex.anddoes.com/Download.aspx?"

    const-string v1, "google"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&vendor=google"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    iget-object v1, p0, Lcom/anddoes/launcher/bb;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/anddoes/launcher/bb;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_42
    return-object v0
.end method

.method static synthetic c(Lcom/anddoes/launcher/bb;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/anddoes/launcher/bb;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 10
    .parameter

    .prologue
    const v7, 0x108009b

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1
    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_da

    iget-boolean v0, p0, Lcom/anddoes/launcher/bb;->j:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/anddoes/launcher/preference/PreferencesActivity;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    check-cast v0, Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b()V

    :cond_1f
    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    const v1, 0x7f06024c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v0, p0, Lcom/anddoes/launcher/bb;->b:I

    iget v2, p0, Lcom/anddoes/launcher/bb;->e:I

    if-ge v0, v2, :cond_df

    iget-object v0, p0, Lcom/anddoes/launcher/bb;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_df

    iget-object v0, p0, Lcom/anddoes/launcher/bb;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11e

    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    const v2, 0x7f060151

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    iget-object v1, p0, Lcom/anddoes/launcher/bb;->f:Ljava/lang/String;

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_50
    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080016

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080017

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/anddoes/launcher/bb;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060150

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000a

    new-instance v2, Lcom/anddoes/launcher/bc;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/bc;-><init>(Lcom/anddoes/launcher/bb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060008

    new-instance v2, Lcom/anddoes/launcher/bd;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/bd;-><init>(Lcom/anddoes/launcher/bb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/anddoes/launcher/bb;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "beta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v2, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    const-string v0, "google"

    const-string v3, "amazon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    const v0, 0x7f06001a

    :goto_cb
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/anddoes/launcher/be;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/be;-><init>(Lcom/anddoes/launcher/bb;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_d7
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_da
    :goto_da
    return-void

    :cond_db
    const v0, 0x7f060019

    goto :goto_cb

    :cond_df
    iget-boolean v0, p0, Lcom/anddoes/launcher/bb;->j:Z

    if-eqz v0, :cond_da

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f060152

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    const v3, 0x7f060153

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/anddoes/launcher/bb;->c:Ljava/lang/String;

    aput-object v1, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060007

    new-instance v2, Lcom/anddoes/launcher/bf;

    invoke-direct {v2, p0}, Lcom/anddoes/launcher/bf;-><init>(Lcom/anddoes/launcher/bb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_da

    :cond_11e
    move-object v1, v0

    goto/16 :goto_50
.end method

.method protected final onPreExecute()V
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_19

    .line 50
    iget-boolean v0, p0, Lcom/anddoes/launcher/bb;->j:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/anddoes/launcher/preference/PreferencesActivity;

    if-eqz v0, :cond_19

    .line 51
    iget-object v0, p0, Lcom/anddoes/launcher/bb;->a:Landroid/app/Activity;

    check-cast v0, Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->a()V

    .line 54
    :cond_19
    return-void
.end method
