.class public final Lcom/google/android/youtube/app/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/google/android/youtube/app/ac;

.field private final b:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final c:Lcom/google/android/youtube/core/client/ad;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lcom/google/android/youtube/core/e;

.field private final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/e;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "userAuthorizer can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/app/aa;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 58
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/app/aa;->c:Lcom/google/android/youtube/core/client/ad;

    .line 59
    const-string v0, "analytics can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/app/aa;->d:Lcom/google/android/youtube/core/Analytics;

    .line 60
    const-string v0, "errorHelper can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/e;

    iput-object v0, p0, Lcom/google/android/youtube/app/aa;->e:Lcom/google/android/youtube/core/e;

    .line 61
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/aa;->f:Ljava/util/List;

    .line 62
    new-instance v0, Lcom/google/android/youtube/app/ab;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/ab;-><init>(Lcom/google/android/youtube/app/aa;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/aa;->a:Lcom/google/android/youtube/app/ac;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/aa;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/aa;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/aa;Lcom/google/android/youtube/app/ad;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v1, p0, Lcom/google/android/youtube/app/aa;->f:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/aa;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/aa;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_44

    invoke-static {p1}, Lcom/google/android/youtube/app/ad;->a(Lcom/google/android/youtube/app/ad;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/youtube/app/ad;->b(Lcom/google/android/youtube/app/ad;)I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "authAccount"

    iget-object v5, p2, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "authtoken"

    iget-object v5, p2, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "authMethod"

    iget-object v5, p2, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "messageId"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x3eb

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->showDialog(ILandroid/os/Bundle;)Z

    iget-object v0, p0, Lcom/google/android/youtube/app/aa;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UsernameCreationDialogShown"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_46

    return-void

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/youtube/app/aa;->b:Lcom/google/android/youtube/core/async/UserAuthorizer;

    if-eqz p4, :cond_8

    :goto_4
    invoke-virtual {v1, p1, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V

    .line 119
    return-void

    .line 117
    :cond_8
    new-instance v0, Lcom/google/android/youtube/app/ad;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/youtube/app/ad;-><init>(Lcom/google/android/youtube/app/aa;Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;I)V

    move-object p2, v0

    goto :goto_4
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 174
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "args cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "authAccount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "account not found in args"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 178
    const-string v1, "authtoken"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "authToken not found in args"

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    const-string v2, "authMethod"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 181
    instance-of v3, v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    const-string v4, "authMethod not found in args"

    invoke-static {v3, v4}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 182
    const-string v3, "messageId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 183
    new-instance v4, Lcom/google/android/youtube/core/model/UserAuth;

    const/4 v3, 0x0

    check-cast v2, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-direct {v4, v0, v3, v2, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/google/android/youtube/app/ui/u;

    iget-object v2, p0, Lcom/google/android/youtube/app/aa;->c:Lcom/google/android/youtube/core/client/ad;

    iget-object v3, p0, Lcom/google/android/youtube/app/aa;->d:Lcom/google/android/youtube/core/Analytics;

    iget-object v6, p0, Lcom/google/android/youtube/app/aa;->a:Lcom/google/android/youtube/app/ac;

    iget-object v7, p0, Lcom/google/android/youtube/app/aa;->e:Lcom/google/android/youtube/core/e;

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/app/ui/u;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/model/UserAuth;ILcom/google/android/youtube/app/ac;Lcom/google/android/youtube/core/e;)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 110
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const v0, 0x7f0a014a

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/youtube/app/aa;->b(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    .line 113
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    const v0, 0x7f0a014b

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/youtube/app/aa;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    .line 107
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const-string v0, "activity cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    if-eqz p3, :cond_16

    const/4 v0, 0x1

    :goto_d
    const-string v1, "messageId cannot be 0"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->a(ZLjava/lang/Object;)V

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/aa;->b(Landroid/app/Activity;Lcom/google/android/youtube/core/async/av;IZ)V

    .line 103
    return-void

    .line 101
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method