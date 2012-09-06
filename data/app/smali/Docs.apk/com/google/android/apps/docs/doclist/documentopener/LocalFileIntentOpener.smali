.class public Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "LocalFileIntentOpener.java"


# instance fields
.field private final a:LQN;

.field private final a:LXP;

.field private final a:LZJ;

.field private final a:Landroid/content/Context;

.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

.field private final a:LdE;


# direct methods
.method public constructor <init>(Landroid/content/Context;LQN;LXP;LdE;LZJ;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LQN;

    .line 106
    iput-object p3, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LXP;

    .line 107
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:Landroid/content/Context;

    .line 108
    iput-object p4, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LdE;

    .line 109
    iput-object p5, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LZJ;

    .line 110
    iput-object p6, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    .line 111
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;)LdE;
    .registers 2
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LdE;

    return-object v0
.end method

.method private a(LQO;LRd;LZN;)Ljava/io/File;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    invoke-interface {p1}, LQO;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 241
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    move v0, v1

    :goto_13
    invoke-static {v0}, LafQ;->a(Z)V

    .line 242
    invoke-static {}, LRz;->a()LRy;

    move-result-object v0

    invoke-interface {v0, v3}, LRy;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 243
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 244
    if-eqz p3, :cond_62

    .line 245
    invoke-interface {p1}, LQO;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:Landroid/content/Context;

    sget v7, LcY;->decrypting_progress_message:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v5, v6}, LXR;->a(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    new-instance v1, Lrq;

    invoke-direct {v1, p0, p3, v0}, Lrq;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LZN;Ljava/lang/String;)V

    .line 254
    new-instance v0, LVQ;

    invoke-direct {v0, v3, v1, v5, v6}, LVQ;-><init>(Ljava/io/OutputStream;LVd;J)V

    move-object v1, v0

    .line 258
    :goto_4c
    :try_start_4c
    invoke-interface {p1}, LQO;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, LRd;->a(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_5d

    .line 260
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 262
    return-object v4

    :cond_5b
    move v0, v2

    .line 241
    goto :goto_13

    .line 260
    :catchall_5d
    move-exception v0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0

    :cond_62
    move-object v1, v3

    goto :goto_4c
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LpP;LQO;Landroid/os/Bundle;Ljava/lang/String;LZN;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(LpP;LQO;Landroid/os/Bundle;Ljava/lang/String;LZN;)V

    return-void
.end method

.method private a(LpP;LQO;Landroid/os/Bundle;Ljava/lang/String;LZN;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    invoke-interface {p2}, LQO;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    if-nez v0, :cond_69

    .line 155
    invoke-interface {p2}, LQO;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 182
    :goto_14
    const-string v0, "documentOpenMethod"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_a1

    invoke-static {v0}, LeD;->valueOf(Ljava/lang/String;)LeD;

    move-result-object v0

    move-object v2, v0

    .line 188
    :goto_21
    const-string v0, "uriIntentBuilder"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;

    .line 191
    if-nez v0, :cond_a6

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-interface {p2}, LQO;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4, p4, v1}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;->a(LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 197
    :goto_35
    if-nez v0, :cond_af

    .line 198
    sget-object v0, LpQ;->c:LpQ;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    .line 200
    const-string v0, "LocalFileIntentOpener"

    const-string v1, "No installed package can handle file \"%s\" with mime-type \"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v2, v4

    const/4 v4, 0x1

    invoke-interface {p2}, LQO;->a()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_59

    .line 157
    :cond_69
    new-instance v1, LQR;

    invoke-interface {p2}, LQO;->a()Ljava/io/File;

    move-result-object v2

    invoke-interface {p2}, LQO;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LXP;

    invoke-direct {v1, v0, v2, v4, v5}, LQR;-><init>(Ljavax/crypto/SecretKey;Ljava/io/File;Ljava/lang/String;LXP;)V

    .line 160
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 164
    new-instance v0, LRt;

    invoke-direct {v0, v1}, LRt;-><init>(LRd;)V

    .line 165
    invoke-static {v0, p4}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a(LQW;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 166
    goto :goto_14

    .line 171
    :cond_89
    :try_start_89
    invoke-direct {p0, p2, v1, p5}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(LQO;LRd;LZN;)Ljava/io/File;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_90} :catch_9a

    .line 177
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto/16 :goto_14

    .line 173
    :catch_9a
    move-exception v0

    .line 174
    sget-object v1, LpQ;->h:LpQ;

    invoke-interface {p1, v1, v0}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    .line 235
    :goto_a0
    return-void

    .line 183
    :cond_a1
    sget-object v0, LeD;->a:LeD;

    move-object v2, v0

    goto/16 :goto_21

    .line 195
    :cond_a6
    invoke-interface {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_35

    .line 205
    :cond_ab
    invoke-interface {p2}, LQO;->b()V

    goto :goto_a0

    .line 209
    :cond_af
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LdE;

    invoke-virtual {v1, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 211
    :try_start_b4
    new-instance v1, Lrp;

    invoke-direct {v1, p0, v3, p2}, Lrp;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;Ljava/util/List;LQO;)V

    invoke-interface {p1, v0, v1}, LpP;->a(Landroid/content/Intent;Ljava/lang/Runnable;)V
    :try_end_bc
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b4 .. :try_end_bc} :catch_bd

    goto :goto_a0

    .line 231
    :catch_bd
    move-exception v0

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LdE;

    invoke-virtual {v1, p0}, LdE;->b(Ljava/lang/Object;)V

    .line 233
    sget-object v1, LpQ;->c:LpQ;

    invoke-interface {p1, v1, v0}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    goto :goto_a0
.end method

.method private a()Z
    .registers 2

    .prologue
    .line 136
    invoke-static {}, LRt;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LZJ;

    invoke-interface {v0}, LZJ;->c()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(LQO;)Z
    .registers 6
    .parameter

    .prologue
    .line 144
    .line 145
    invoke-interface {p1}, LQO;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/high16 v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;)Z
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LQO;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a(LQO;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    const-string v0, "documentOpenMethod"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_31

    invoke-static {v0}, LeD;->valueOf(Ljava/lang/String;)LeD;

    move-result-object v0

    .line 119
    :goto_c
    invoke-virtual {p2}, LkR;->a()LkU;

    move-result-object v1

    invoke-virtual {v0, v1}, LeD;->a(LkU;)LQM;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LQN;

    invoke-interface {v1, p2, v0}, LQN;->c(LkR;LQM;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;->a:LQN;

    invoke-interface {v1, p2, v0}, LQN;->a(LkR;LQM;)LQO;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_34

    .line 125
    new-instance v0, Lrr;

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lrr;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;LpP;LQO;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 132
    :goto_30
    return-object v0

    .line 117
    :cond_31
    sget-object v0, LeD;->a:LeD;

    goto :goto_c

    .line 128
    :cond_34
    const-wide/16 v1, -0x1

    invoke-virtual {p2, v1, v2, v0}, LkR;->a(JLQM;)V

    .line 129
    invoke-virtual {p2}, LkR;->c()V

    .line 132
    :cond_3c
    const/4 v0, 0x0

    goto :goto_30
.end method
