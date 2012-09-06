.class public Lcom/dropbox/client2/android/AuthActivity;
.super Landroid/app/Activity;
.source "panda.py"


# static fields
.field static a:Landroid/content/Intent;

.field private static final f:[Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->a:Landroid/content/Intent;

    .line 249
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "308202223082018b02044bd207bd300d06092a864886f70d01010405003058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d65796572301e170d3130303432333230343930315a170d3430303431353230343930315a3058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d6579657230819f300d06092a864886f70d010101050003818d0030818902818100ac1595d0ab278a9577f0ca5a14144f96eccde75f5616f36172c562fab0e98c48ad7d64f1091c6cc11ce084a4313d522f899378d312e112a748827545146a779defa7c31d8c00c2ed73135802f6952f59798579859e0214d4e9c0554b53b26032a4d2dfc2f62540d776df2ea70e2a6152945fb53fef5bac5344251595b729d4810203010001300d06092a864886f70d01010405000381810055c425d94d036153203dc0bbeb3516f94563b102fff39c3d4ed91278db24fc4424a244c2e59f03bbfea59404512b8bf74662f2a32e37eafa2ac904c31f99cfc21c9ff375c977c432d3b6ec22776f28767d0f292144884538c3d5669b568e4254e4ed75d9054f75229ac9d4ccd0b7c3c74a34f07b7657083b2aa76225c0c56ffc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "308201e53082014ea00302010202044e17e115300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303730393035303331375a170d3431303730313035303331375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d003081890281810096759fe5abea6a0757039b92adc68d672efa84732c3f959408e12efa264545c61f23141026a6d01eceeeaa13ec7087087e5894a3363da8bf5c69ed93657a6890738a80998e4ca22dc94848f30e2d0e1890000ae2cddf543b20c0c3828deca6c7944b5ecd21a9d18c988b2b3e54517dafbc34b48e801bb1321e0fa49e4d575d7f0203010001300d06092a864886f70d0101050500038181002b6d4b65bcfa6ec7bac97ae6d878064d47b3f9f8da654995b8ef4c385bc4fbfbb7a987f60783ef0348760c0708acd4b7e63f0235c35a4fbcd5ec41b3b4cb295feaa7d5c27fa562a02562b7e1f4776b85147be3e295714986c4a9a07183f48ea09ae4d3ea31b88d0016c65b93526b9c45f2967c3d28dee1aff5a5b29b9c2c8639"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->c:Ljava/lang/String;

    .line 79
    iput-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->d:Z

    .line 80
    iput-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->e:Z

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    const/4 v0, 0x0

    .line 190
    :try_start_3
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_8} :catch_32

    move-result-object v0

    .line 192
    :goto_9
    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/client2/android/AuthActivity;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 193
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 194
    const-string v0, "%1$040X"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :catch_32
    move-exception v1

    goto :goto_9
.end method

.method private a(Landroid/content/Intent;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 201
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    .line 231
    :cond_f
    :goto_f
    return v0

    .line 208
    :cond_10
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 209
    if-eqz v2, :cond_f

    .line 215
    :try_start_16
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_1f} :catch_43

    move-result-object v1

    .line 222
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v2, v0

    :goto_24
    if-ge v2, v4, :cond_f

    aget-object v5, v3, v2

    .line 223
    sget-object v6, Lcom/dropbox/client2/android/AuthActivity;->f:[Ljava/lang/String;

    array-length v7, v6

    move v1, v0

    :goto_2c
    if-ge v1, v7, :cond_3f

    aget-object v8, v6, v1

    .line 224
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 225
    const/4 v0, 0x1

    goto :goto_f

    .line 223
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 222
    :cond_3f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_24

    .line 218
    :catch_43
    move-exception v1

    goto :goto_f
.end method

.method private b()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 235
    const-string v0, "/connect"

    .line 237
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "k"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "s"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 242
    const-string v2, "www.dropbox.com"

    invoke-static {v2, v4, v0, v1}, Ldbxyzptlk/l/t;->a(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    invoke-virtual {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 84
    if-eqz p1, :cond_1a

    .line 85
    const-string v0, "consumerKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    .line 86
    const-string v0, "consumerSecret"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->c:Ljava/lang/String;

    .line 87
    const-string v0, "hasDelegated"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->d:Z

    .line 90
    :cond_1a
    iget-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    if-nez v0, :cond_32

    .line 91
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 92
    const-string v1, "EXTRA_INTERNAL_CONSUMER_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    .line 93
    const-string v1, "EXTRA_INTERNAL_CONSUMER_SECRET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->c:Ljava/lang/String;

    .line 96
    :cond_32
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->setTheme(I)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 150
    .line 152
    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 154
    const-string v0, "ACCESS_TOKEN"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    const-string v0, "ACCESS_SECRET"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v0, "UID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_1b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sput-object v3, Lcom/dropbox/client2/android/AuthActivity;->a:Landroid/content/Intent;

    .line 174
    if-eqz v2, :cond_55

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    if-eqz v1, :cond_55

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    if-eqz v0, :cond_55

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 178
    sget-object v3, Lcom/dropbox/client2/android/AuthActivity;->a:Landroid/content/Intent;

    const-string v4, "ACCESS_TOKEN"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    sget-object v2, Lcom/dropbox/client2/android/AuthActivity;->a:Landroid/content/Intent;

    const-string v3, "ACCESS_SECRET"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->a:Landroid/content/Intent;

    const-string v2, "UID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    :cond_55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->e:Z

    .line 184
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->finish()V

    .line 185
    return-void

    .line 159
    :cond_5c
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_8a

    .line 161
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v2, "/connect"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 164
    :try_start_6e
    const-string v1, "oauth_token"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_73
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6e .. :try_end_73} :catch_81

    move-result-object v2

    .line 165
    :try_start_74
    const-string v1, "oauth_token_secret"

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_74 .. :try_end_79} :catch_85

    move-result-object v1

    .line 166
    :try_start_7a
    const-string v4, "uid"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7a .. :try_end_7f} :catch_88

    move-result-object v0

    goto :goto_1b

    .line 167
    :catch_81
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_1b

    :catch_85
    move-exception v1

    move-object v1, v0

    goto :goto_1b

    :catch_88
    move-exception v3

    goto :goto_1b

    :cond_8a
    move-object v1, v0

    move-object v2, v0

    goto :goto_1b
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 115
    :cond_b
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->finish()V

    .line 146
    :cond_e
    :goto_e
    return-void

    .line 119
    :cond_f
    iget-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->d:Z

    if-nez v0, :cond_4e

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    const-string v1, "com.dropbox.android"

    const-string v2, "com.dropbox.android.activity.auth.DropboxAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "com.dropbox.android.AUTHENTICATE_V1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "CONSUMER_KEY"

    iget-object v2, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "CONSUMER_SIG"

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "CALLING_PACKAGE"

    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-direct {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->a(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 131
    invoke-virtual {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    :goto_46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->d:Z

    goto :goto_e

    .line 133
    :cond_4a
    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->b()V

    goto :goto_46

    .line 137
    :cond_4e
    iget-boolean v0, p0, Lcom/dropbox/client2/android/AuthActivity;->e:Z

    if-nez v0, :cond_e

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->a:Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->finish()V

    goto :goto_e
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "consumerKey"

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "consumerSecret"

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "hasDelegated"

    iget-boolean v1, p0, Lcom/dropbox/client2/android/AuthActivity;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    return-void
.end method
