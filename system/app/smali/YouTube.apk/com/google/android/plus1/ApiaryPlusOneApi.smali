.class public final Lcom/google/android/plus1/ApiaryPlusOneApi;
.super Lcom/google/android/plus1/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/an;


# instance fields
.field private final a:Landroid/accounts/Account;

.field private final b:Landroid/accounts/AccountManager;

.field private final c:Lcom/google/common/base/am;

.field private final d:Landroid/content/pm/PackageManager;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/common/base/am;

.field private final g:Lcom/google/android/apps/pos/network/f;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/accounts/Account;Lcom/google/common/base/am;Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/google/common/base/am;Lcom/google/api/client/json/c;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/android/plus1/h;-><init>()V

    .line 155
    iput-object p2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->a:Landroid/accounts/Account;

    .line 156
    iput-object p1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->b:Landroid/accounts/AccountManager;

    .line 157
    iput-object p3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->c:Lcom/google/common/base/am;

    .line 159
    iput-object p4, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->d:Landroid/content/pm/PackageManager;

    .line 160
    iput-object p5, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->e:Ljava/lang/String;

    .line 161
    iput-object p6, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->f:Lcom/google/common/base/am;

    .line 163
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_22

    new-instance v0, Lcom/google/api/client/http/a/c;

    invoke-direct {v0}, Lcom/google/api/client/http/a/c;-><init>()V

    :goto_1a
    new-instance v1, Lcom/google/android/apps/pos/network/f;

    invoke-direct {v1, v0, p7}, Lcom/google/android/apps/pos/network/f;-><init>(Lcom/google/api/client/http/r;Lcom/google/api/client/json/c;)V

    iput-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    .line 164
    return-void

    .line 163
    :cond_22
    new-instance v0, Lcom/google/api/client/http/b/c;

    invoke-direct {v0}, Lcom/google/api/client/http/b/c;-><init>()V

    goto :goto_1a
.end method

.method static synthetic a(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/Account;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->a:Landroid/accounts/Account;

    return-object v0
.end method

.method private a(Lcom/google/android/apps/pos/network/s;)Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 4
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi;->a(Lcom/google/android/apps/pos/network/f;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    :try_start_7
    invoke-virtual {p1}, Lcom/google/android/apps/pos/network/s;->a()Lcom/google/android/apps/pos/model/PlusoneResponse;
    :try_end_a
    .catch Lcom/google/android/apps/pos/network/PosAuthorizationException; {:try_start_7 .. :try_end_a} :catch_c

    move-result-object v0

    .line 206
    :goto_b
    return-object v0

    .line 205
    :catch_c
    move-exception v1

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    invoke-direct {p0, v1, v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->a(Lcom/google/android/apps/pos/network/f;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Lcom/google/android/apps/pos/network/s;->a()Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v0

    goto :goto_b
.end method

.method private a(Lcom/google/android/apps/pos/network/f;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    .line 375
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->a:Landroid/accounts/Account;

    if-eqz v0, :cond_80

    .line 376
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->b:Landroid/accounts/AccountManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "missing account manager for account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->a:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    if-eqz p2, :cond_36

    .line 380
    :try_start_1d
    const-string v0, "ApiaryPlusOneApi"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 381
    const-string v0, "ApiaryPlusOneApi"

    const-string v1, "Invalidating auth token"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_2d
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_36
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->b:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->a:Landroid/accounts/Account;

    const-string v2, "Manage your +1\'s"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 388
    if-nez v0, :cond_82

    .line 389
    const-string v0, "ApiaryPlusOneApi"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 390
    const-string v0, "ApiaryPlusOneApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs authorizing to use +1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_6a
    new-instance v0, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    invoke-direct {v0, p0}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;-><init>(Lcom/google/android/plus1/ApiaryPlusOneApi;)V

    throw v0
    :try_end_70
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1d .. :try_end_70} :catch_70
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1d .. :try_end_70} :catch_86
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_70} :catch_97

    .line 396
    :catch_70
    move-exception v0

    .line 397
    const-string v1, "ApiaryPlusOneApi"

    invoke-static {v1, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 398
    const-string v1, "ApiaryPlusOneApi"

    const-string v2, "Authentication error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    :cond_80
    :goto_80
    const/4 v0, 0x0

    :goto_81
    return-object v0

    .line 394
    :cond_82
    :try_start_82
    invoke-virtual {p1, v0}, Lcom/google/android/apps/pos/network/f;->b(Ljava/lang/String;)V
    :try_end_85
    .catch Landroid/accounts/AuthenticatorException; {:try_start_82 .. :try_end_85} :catch_70
    .catch Landroid/accounts/OperationCanceledException; {:try_start_82 .. :try_end_85} :catch_86
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_97

    goto :goto_81

    .line 400
    :catch_86
    move-exception v0

    .line 401
    const-string v1, "ApiaryPlusOneApi"

    invoke-static {v1, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 402
    const-string v1, "ApiaryPlusOneApi"

    const-string v2, "Authentication canceled: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    .line 404
    :catch_97
    move-exception v0

    .line 405
    const-string v1, "ApiaryPlusOneApi"

    invoke-static {v1, v4}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 406
    const-string v1, "ApiaryPlusOneApi"

    const-string v2, "Error fetching auth token: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80
.end method

.method static synthetic b(Lcom/google/android/plus1/ApiaryPlusOneApi;)Landroid/accounts/AccountManager;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->b:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->h:Z

    if-nez v0, :cond_35

    .line 186
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->c:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/f;->a(Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->d:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->e:Ljava/lang/String;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->f:Lcom/google/common/base/am;

    if-eqz v1, :cond_32

    .line 190
    iget-object v2, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->d:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->f:Lcom/google/common/base/am;

    invoke-interface {v1}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3, v1, v0}, Lcom/google/android/apps/pos/network/c;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/f;->c(Ljava/lang/String;)V

    .line 195
    :cond_32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->h:Z

    .line 197
    :cond_35
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/plus1/aq;
    .registers 6

    .prologue
    const/4 v3, 0x3

    .line 211
    const-string v0, "ApiaryPlusOneApi"

    invoke-static {v0, v3}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 212
    const-string v0, "ApiaryPlusOneApi"

    const-string v1, "calling getAccountStatus()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_10
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->b()V

    .line 215
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/network/f;->a()Lcom/google/android/apps/pos/network/n;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->a(Lcom/google/android/apps/pos/network/s;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/SignUpState;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 218
    const-string v2, "ApiaryPlusOneApi"

    invoke-static {v2, v3}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 219
    const-string v2, "ApiaryPlusOneApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result for signedUp is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_43
    new-instance v2, Lcom/google/android/plus1/ar;

    invoke-direct {v2}, Lcom/google/android/plus1/ar;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/plus1/ar;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/plus1/ar;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/plus1/ar;->c:Ljava/lang/String;

    new-instance v0, Lcom/google/android/plus1/aq;

    iget-object v1, v2, Lcom/google/android/plus1/ar;->a:Ljava/lang/Boolean;

    iget-object v3, v2, Lcom/google/android/plus1/ar;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/plus1/ar;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/plus1/aq;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/util/Set;)Ljava/util/Map;
    .registers 19
    .parameter

    .prologue
    .line 298
    const-string v1, "ApiaryPlusOneApi"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 299
    const-string v1, "ApiaryPlusOneApi"

    const-string v2, "calling getPlusOnes"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->b()V

    .line 302
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v1

    .line 303
    new-array v3, v1, [Ljava/lang/String;

    .line 304
    const/4 v1, 0x0

    .line 305
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 306
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 307
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    .line 309
    :cond_35
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/pos/network/f;->a([Ljava/lang/String;)Lcom/google/android/apps/pos/network/h;

    move-result-object v1

    .line 311
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi;->a(Lcom/google/android/apps/pos/network/s;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/pos/model/Plusones;

    .line 312
    invoke-virtual {v1}, Lcom/google/android/apps/pos/model/Plusones;->getItems()[Lcom/google/android/apps/pos/model/Plusone;

    move-result-object v8

    array-length v1, v8

    invoke-static {v1}, Lcom/google/common/collect/Maps;->a(I)Ljava/util/HashMap;

    move-result-object v9

    array-length v10, v8

    const/4 v1, 0x0

    move v7, v1

    :goto_51
    if-ge v7, v10, :cond_15e

    aget-object v11, v8, v7

    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->getResponseId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_cb

    const-string v1, "ApiaryPlusOneApi"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_79

    const-string v1, "ApiaryPlusOneApi"

    const-string v2, "Null response id received for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_81
    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->getMetadata()Lcom/google/android/apps/pos/model/Metadata;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->isSetByViewer()Ljava/lang/Boolean;

    move-result-object v12

    if-nez v12, :cond_fb

    const/4 v1, 0x0

    move v6, v1

    :goto_8d
    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_101

    invoke-virtual {v3}, Lcom/google/android/apps/pos/model/Metadata;->getGlobalCounts()Lcom/google/android/apps/pos/model/GlobalCounts;

    move-result-object v3

    if-eqz v3, :cond_101

    invoke-virtual {v3}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_a5

    invoke-virtual {v3}, Lcom/google/android/apps/pos/model/GlobalCounts;->getCount()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    :cond_a5
    invoke-virtual {v3}, Lcom/google/android/apps/pos/model/GlobalCounts;->getPeople()[Lcom/google/android/apps/pos/model/Person;

    move-result-object v5

    if-eqz v5, :cond_101

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v13, v5

    const/4 v3, 0x0

    :goto_b2
    if-ge v3, v13, :cond_101

    aget-object v14, v5, v3

    new-instance v15, Lcom/google/android/plus1/ao;

    invoke-virtual {v14}, Lcom/google/android/apps/pos/model/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v14}, Lcom/google/android/apps/pos/model/Person;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v14}, Lcom/google/android/plus1/ao;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    :cond_cb
    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    const-string v2, "ApiaryPlusOneApi"

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f6

    const-string v2, "ApiaryPlusOneApi"

    const-string v3, "Response id %s is different from +1 id %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->getId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_81

    :cond_fb
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v6, v1

    goto :goto_8d

    :cond_101
    move v5, v1

    if-nez v12, :cond_136

    const-string v1, "ApiaryPlusOneApi"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_121

    const-string v1, "ApiaryPlusOneApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "isSetByViewer is null for item "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_121
    :goto_121
    new-instance v1, Lcom/google/android/plus1/u;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/apps/pos/model/Plusone;->getAbuseToken()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/plus1/u;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V

    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_51

    :cond_136
    const-string v1, "ApiaryPlusOneApi"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_121

    const-string v1, "ApiaryPlusOneApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "isSetByViewer is "

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " for URI "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_121

    :cond_15e
    return-object v9
.end method

.method public final a(Landroid/net/Uri;ZLjava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 323
    const-string v0, "ApiaryPlusOneApi"

    invoke-static {v0, v2}, Lcom/google/android/plus1/al;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 324
    const-string v0, "ApiaryPlusOneApi"

    const-string v1, "Setting %s +1 to %s for abuse token %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_23
    invoke-direct {p0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->b()V

    .line 329
    iget-object v0, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi;->a(Lcom/google/android/apps/pos/network/f;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    if-eqz p2, :cond_43

    .line 333
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 334
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/f;->a(Ljava/util/Map;)Lcom/google/android/apps/pos/network/i;

    move-result-object v0

    .line 341
    :goto_3f
    invoke-direct {p0, v0}, Lcom/google/android/plus1/ApiaryPlusOneApi;->a(Lcom/google/android/apps/pos/network/s;)Lcom/google/android/apps/pos/model/PlusoneResponse;

    .line 342
    return-void

    .line 338
    :cond_43
    new-array v0, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 339
    iget-object v1, p0, Lcom/google/android/plus1/ApiaryPlusOneApi;->g:Lcom/google/android/apps/pos/network/f;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/pos/network/f;->b([Ljava/lang/String;)Lcom/google/android/apps/pos/network/g;

    move-result-object v0

    goto :goto_3f
.end method
