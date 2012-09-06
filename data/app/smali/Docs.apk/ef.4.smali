.class public Lef;
.super Ldd;
.source "CreateNewDocActivity.java"


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic a:Landroid/os/Handler;

.field final synthetic a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic a:LkG;

.field final synthetic a:LkU;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/CreateNewDocActivity;Ljava/lang/String;Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicReference;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;LkU;LkG;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lef;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iput-object p3, p0, Lef;->a:Landroid/os/Handler;

    iput-object p4, p0, Lef;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p5, p0, Lef;->a:Landroid/app/Activity;

    iput-object p6, p0, Lef;->a:Ljava/lang/String;

    iput-object p7, p0, Lef;->b:Ljava/lang/String;

    iput-object p8, p0, Lef;->a:LkU;

    iput-object p9, p0, Lef;->a:LkG;

    invoke-direct {p0, p2}, Ldd;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lef;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:LXJ;

    const-string v1, "Error creating document"

    invoke-interface {v0, v1, p1}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    iget-object v0, p0, Lef;->a:Landroid/os/Handler;

    new-instance v1, Lei;

    invoke-direct {v1, p0}, Lei;-><init>(Lef;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    return-void
.end method


# virtual methods
.method public c()V
    .registers 6

    .prologue
    .line 152
    iget-object v0, p0, Lef;->a:Landroid/os/Handler;

    new-instance v1, Leg;

    invoke-direct {v1, p0}, Leg;-><init>(Lef;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    new-instance v0, LSs;

    invoke-direct {v0}, LSs;-><init>()V

    .line 161
    iget-object v1, p0, Lef;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LSs;->v(Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.google.com/docs/2007#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lef;->a:LkU;

    invoke-virtual {v2}, LkU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LSs;->l(Ljava/lang/String;)V

    .line 163
    const-string v1, "http://schemas.google.com/g/2005#kind"

    invoke-virtual {v0, v1}, LSs;->m(Ljava/lang/String;)V

    .line 166
    :try_start_35
    iget-object v1, p0, Lef;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:LRX;

    const-string v2, "https://docs.google.com/feeds/default/private/full/"

    iget-object v3, p0, Lef;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-static {v3}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, LRX;->a(Ljava/lang/String;Ljava/lang/String;Lase;)Lase;

    move-result-object v0

    .line 168
    instance-of v1, v0, LSs;

    if-eqz v1, :cond_79

    .line 169
    check-cast v0, LSs;

    .line 170
    iget-object v1, p0, Lef;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a(Lcom/google/android/apps/docs/app/CreateNewDocActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, LSs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lld;->a(Ljava/lang/String;Ljava/lang/String;)Lld;

    move-result-object v1

    .line 171
    iget-object v2, p0, Lef;->a:Lcom/google/android/apps/docs/app/CreateNewDocActivity;

    iget-object v2, v2, Lcom/google/android/apps/docs/app/CreateNewDocActivity;->a:LTF;

    iget-object v3, p0, Lef;->a:LkG;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, LTF;->a(LkG;LSs;Ljava/lang/Boolean;)V

    .line 172
    iget-object v0, p0, Lef;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/docs/app/DocumentOpenerActivity;->a(Landroid/content/Context;Lld;Z)Landroid/content/Intent;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lef;->a:Landroid/os/Handler;

    new-instance v2, Leh;

    invoke-direct {v2, p0, v0}, Leh;-><init>(Lef;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    :goto_78
    return-void

    .line 188
    :cond_79
    new-instance v1, Lasn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Entry class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lasn;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_96
    .catch Lasn; {:try_start_35 .. :try_end_96} :catch_96
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_96} :catch_9b
    .catch LarL; {:try_start_35 .. :try_end_96} :catch_a0
    .catch Ljava/text/ParseException; {:try_start_35 .. :try_end_96} :catch_a5
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_96} :catch_aa

    .line 190
    :catch_96
    move-exception v0

    .line 191
    invoke-direct {p0, v0}, Lef;->a(Ljava/lang/Exception;)V

    goto :goto_78

    .line 192
    :catch_9b
    move-exception v0

    .line 193
    invoke-direct {p0, v0}, Lef;->a(Ljava/lang/Exception;)V

    goto :goto_78

    .line 194
    :catch_a0
    move-exception v0

    .line 195
    invoke-direct {p0, v0}, Lef;->a(Ljava/lang/Exception;)V

    goto :goto_78

    .line 196
    :catch_a5
    move-exception v0

    .line 197
    invoke-direct {p0, v0}, Lef;->a(Ljava/lang/Exception;)V

    goto :goto_78

    .line 198
    :catch_aa
    move-exception v0

    .line 199
    invoke-direct {p0, v0}, Lef;->a(Ljava/lang/Exception;)V

    goto :goto_78
.end method
