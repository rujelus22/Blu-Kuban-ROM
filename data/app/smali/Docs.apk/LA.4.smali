.class public LLA;
.super Ljava/lang/Object;
.source "UrlParserImpl.java"

# interfaces
.implements LLz;


# static fields
.field private static final a:LLB;

.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:LLB;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:LLB;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:LLB;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:LLB;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:LLB;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:LLB;

.field private static final g:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 76
    const-string v0, "/m?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LLA;->a:Ljava/util/regex/Pattern;

    .line 84
    const-string v0, "/document/d/([^/]*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LLA;->b:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "/presentation/d/([^/]*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LLA;->c:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "/folder/d/([^/]*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LLA;->d:Ljava/util/regex/Pattern;

    .line 111
    const-string v0, "/(Doc|View)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LLA;->e:Ljava/util/regex/Pattern;

    .line 112
    const-string v0, "(?i)id|docid"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LLA;->f:Ljava/util/regex/Pattern;

    .line 120
    const-string v0, "/file/d/([^/]*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, LLA;->g:Ljava/util/regex/Pattern;

    .line 128
    new-instance v0, LLB;

    const-string v1, "/document/(m|edit|view)"

    const-string v2, "id"

    sget-object v3, LkU;->a:LkU;

    invoke-direct {v0, v1, v2, v3}, LLB;-><init>(Ljava/lang/String;Ljava/lang/String;LkU;)V

    sput-object v0, LLA;->a:LLB;

    .line 136
    new-instance v0, LLB;

    const-string v1, "(/spreadsheet)?/(m|ccc|lv)"

    const-string v2, "key"

    sget-object v3, LkU;->d:LkU;

    invoke-direct {v0, v1, v2, v3}, LLB;-><init>(Ljava/lang/String;Ljava/lang/String;LkU;)V

    sput-object v0, LLA;->b:LLB;

    .line 145
    new-instance v0, LLB;

    const-string v1, "/(present|presentation)/(view|edit)"

    const-string v2, "id"

    sget-object v3, LkU;->c:LkU;

    invoke-direct {v0, v1, v2, v3}, LLB;-><init>(Ljava/lang/String;Ljava/lang/String;LkU;)V

    sput-object v0, LLA;->c:LLB;

    .line 154
    new-instance v0, LLB;

    const-string v1, "/drawings/(view|edit)"

    const-string v2, "id"

    sget-object v3, LkU;->e:LkU;

    invoke-direct {v0, v1, v2, v3}, LLB;-><init>(Ljava/lang/String;Ljava/lang/String;LkU;)V

    sput-object v0, LLA;->d:LLB;

    .line 163
    new-instance v0, LLB;

    const-string v1, "/viewer"

    const-string v2, "srcid"

    sget-object v3, LkU;->k:LkU;

    invoke-direct {v0, v1, v2, v3}, LLB;-><init>(Ljava/lang/String;Ljava/lang/String;LkU;)V

    sput-object v0, LLA;->e:LLB;

    .line 172
    new-instance v0, LLB;

    const-string v1, "/(leaf|uc)"

    const-string v2, "id"

    sget-object v3, LkU;->k:LkU;

    invoke-direct {v0, v1, v2, v3}, LLB;-><init>(Ljava/lang/String;Ljava/lang/String;LkU;)V

    sput-object v0, LLA;->f:LLB;

    .line 181
    new-instance v0, LLB;

    const-string v1, "/open"

    const-string v2, "id"

    sget-object v3, LkU;->k:LkU;

    invoke-direct {v0, v1, v2, v3}, LLB;-><init>(Ljava/lang/String;Ljava/lang/String;LkU;)V

    sput-object v0, LLA;->g:LLB;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private varargs a(Landroid/net/Uri;Ljava/lang/String;[LLB;)Landroid/util/Pair;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "[",
            "LLB;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "LkU;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    array-length v1, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_19

    aget-object v2, p3, v0

    .line 299
    invoke-virtual {v2, p1, p2}, LLB;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    if-eqz v3, :cond_16

    .line 301
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2}, LLB;->a(LLB;)LkU;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 304
    :goto_15
    return-object v0

    .line 298
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 304
    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 294
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/WebViewOpenActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)LLC;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 186
    const-string v0, "UrlParserImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 192
    const-class v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    invoke-static {p2}, LpN;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 194
    const/4 v1, 0x0

    .line 195
    sget-object v0, LkU;->h:LkU;

    .line 196
    if-eqz v4, :cond_134

    .line 197
    invoke-static {p2}, LpN;->a(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 198
    const/4 v2, 0x5

    new-array v2, v2, [LLB;

    sget-object v5, LLA;->a:LLB;

    aput-object v5, v2, v6

    sget-object v5, LLA;->c:LLB;

    aput-object v5, v2, v7

    const/4 v5, 0x2

    sget-object v6, LLA;->d:LLB;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    sget-object v6, LLA;->f:LLB;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    sget-object v6, LLA;->g:LLB;

    aput-object v6, v2, v5

    invoke-direct {p0, p2, v4, v2}, LLA;->a(Landroid/net/Uri;Ljava/lang/String;[LLB;)Landroid/util/Pair;

    move-result-object v2

    .line 201
    if-eqz v2, :cond_1c1

    .line 202
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 203
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LkU;

    .line 204
    const-class v2, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v2, v0

    .line 206
    :goto_6a
    if-nez v2, :cond_89

    .line 207
    sget-object v0, LLA;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ne v5, v7, :cond_89

    .line 209
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    sget-object v1, LkU;->a:LkU;

    .line 211
    const-class v0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    :cond_89
    if-nez v2, :cond_a8

    .line 215
    sget-object v0, LLA;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ne v5, v7, :cond_a8

    .line 217
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    sget-object v1, LkU;->c:LkU;

    .line 219
    const-class v0, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 222
    :cond_a8
    if-nez v2, :cond_1bd

    sget-object v0, LLA;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 223
    invoke-static {p2}, Laak;->a(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_be
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1bd

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    sget-object v6, LLA;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_be

    .line 225
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    sget-object v0, LkU;->a:LkU;

    .line 227
    const-class v2, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    :goto_e1
    if-nez v1, :cond_100

    .line 233
    sget-object v2, LLA;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 234
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_100

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ne v5, v7, :cond_100

    .line 235
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    sget-object v0, LkU;->h:LkU;

    .line 237
    const-class v2, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 240
    :cond_100
    if-nez v1, :cond_11f

    .line 241
    sget-object v2, LLA;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_11f

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    if-ne v5, v7, :cond_11f

    .line 243
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    sget-object v0, LkU;->j:LkU;

    .line 245
    const-class v2, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    :cond_11f
    if-nez v1, :cond_134

    .line 249
    sget-object v2, LLA;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_178

    .line 250
    const-class v0, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 251
    sget-object v0, LkU;->h:LkU;

    .line 277
    :cond_134
    :goto_134
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/google/android/apps/docs/app/NewMainProxyActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 278
    invoke-static {p2}, LpN;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 279
    const-class v2, Lcom/google/android/apps/docs/app/MainDriveProxyActivity;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    :cond_153
    if-eqz v1, :cond_172

    .line 284
    const-string v2, "UrlParserImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got docs ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v2, "resourceId"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    :cond_172
    new-instance v2, LLC;

    invoke-direct {v2, v3, v1, v0}, LLC;-><init>(Landroid/content/Intent;Ljava/lang/String;LkU;)V

    return-object v2

    .line 255
    :cond_178
    if-nez v1, :cond_190

    sget-object v2, LLA;->e:LLB;

    invoke-virtual {v2, v4}, LLB;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_190

    .line 256
    const-class v0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;

    invoke-virtual {v3, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    sget-object v0, LLA;->e:LLB;

    invoke-virtual {v0, p2, v4}, LLB;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    sget-object v0, LkU;->k:LkU;

    goto :goto_134

    .line 261
    :cond_190
    invoke-static {p1, v3}, LLA;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_134

    .line 265
    :cond_194
    invoke-static {p2}, LpN;->c(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 266
    new-array v2, v7, [LLB;

    sget-object v5, LLA;->b:LLB;

    aput-object v5, v2, v6

    invoke-direct {p0, p2, v4, v2}, LLA;->a(Landroid/net/Uri;Ljava/lang/String;[LLB;)Landroid/util/Pair;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_1b8

    .line 268
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 269
    iget-object v1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, LkU;

    .line 270
    const-class v2, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;

    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_134

    .line 272
    :cond_1b8
    invoke-static {p1, v3}, LLA;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_134

    :cond_1bd
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_e1

    :cond_1c1
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_6a
.end method

.method public a(Landroid/net/Uri;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 309
    invoke-static {p1}, LpN;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 310
    if-nez v1, :cond_8

    .line 314
    :cond_7
    :goto_7
    return v0

    :cond_8
    sget-object v2, LLA;->b:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, LLA;->a:LLB;

    invoke-virtual {v2, p1, v1}, LLB;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_20
    const/4 v0, 0x1

    goto :goto_7
.end method
