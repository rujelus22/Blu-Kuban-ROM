.class public Lcom/google/googlenav/networkinitiated/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/h;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/networkinitiated/c;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/networkinitiated/c;)V
    .registers 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/c;->h()V

    return-void
.end method

.method private g()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v1, "app"

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    return-void
.end method

.method private h()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    const-string v1, "app"

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v2, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const-string v1, "sender"

    const-string v2, "gmobilemaps@gmail.com"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    return-void
.end method


# virtual methods
.method public D_()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/c;->h()V

    .line 98
    return-void
.end method

.method public E_()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public L_()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    const-string v1, "network_initiated_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->k()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 78
    const-string v1, "registration_id"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/networkinitiated/j;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4, v5}, Lcom/google/googlenav/networkinitiated/j;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/k;)V

    invoke-virtual {v2, v3}, Lac/h;->c(Lac/g;)V

    .line 86
    :cond_27
    invoke-direct {p0}, Lcom/google/googlenav/networkinitiated/c;->g()V

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "registration_id"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, LR/b;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 91
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 146
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/networkinitiated/j;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/googlenav/networkinitiated/l;

    iget-object v4, p0, Lcom/google/googlenav/networkinitiated/c;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/googlenav/networkinitiated/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2, v3}, Lcom/google/googlenav/networkinitiated/j;-><init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/k;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 150
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 45
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    new-instance v1, Lcom/google/googlenav/networkinitiated/d;

    invoke-direct {v1, p0}, Lcom/google/googlenav/networkinitiated/d;-><init>(Lcom/google/googlenav/networkinitiated/c;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/u;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/x;)V

    .line 67
    return-void
.end method
