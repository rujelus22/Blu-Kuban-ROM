.class public Lcom/google/android/apps/docs/app/CheckStatusActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "CheckStatusActivity.java"


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LTt;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXh;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/widget/Button;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field public a:LdO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LdV;

.field public a:LeO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->i:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdV;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CheckStatusActivity;LdV;)LdV;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdV;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/CheckStatusActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->b(Z)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/CheckStatusActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Z)V
    .registers 5
    .parameter

    .prologue
    .line 231
    const-string v0, "CheckStatusActivity"

    const-string v1, "onComplete"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->i:Z

    if-eqz v0, :cond_12

    .line 241
    :cond_11
    :goto_11
    return-void

    .line 236
    :cond_12
    iget-object v1, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    sget-object v2, Lhi;->a:Lhi;

    if-eqz p1, :cond_21

    sget-object v0, Lhh;->a:Lhh;

    :goto_1a
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/apps/docs/app/NewMainProxyActivity;->a(Landroid/app/Activity;Ljava/lang/String;Lhi;Lhh;)V

    .line 240
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->finish()V

    goto :goto_11

    .line 236
    :cond_21
    sget-object v0, Lhh;->b:Lhh;

    goto :goto_1a
.end method

.method private e()V
    .registers 4

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    const-class v1, Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 158
    const-string v1, "accountName"

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 160
    return-void
.end method


# virtual methods
.method a()LdL;
    .registers 2

    .prologue
    .line 118
    sget-object v0, LdL;->b:LdL;

    return-object v0
.end method

.method protected a()LpI;
    .registers 2

    .prologue
    .line 245
    sget-object v0, LpI;->a:LpI;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 166
    if-nez p1, :cond_23

    .line 167
    const/4 v0, -0x1

    if-ne p2, v0, :cond_23

    .line 168
    const-string v0, "accountName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 170
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->finish()V

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LXj;

    invoke-interface {v1, p0, v0}, LXj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :cond_23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    const-string v0, "CheckStatusActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    sget v0, LcU;->check_status:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->setContentView(I)V

    .line 127
    if-nez p1, :cond_31

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    .line 132
    :goto_1d
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LeO;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 135
    if-eqz v0, :cond_3a

    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->b(Z)V

    .line 153
    :goto_30
    return-void

    .line 130
    :cond_31
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Ljava/lang/String;

    goto :goto_1d

    .line 140
    :cond_3a
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a()LIi;

    move-result-object v0

    sget v1, LcY;->app_name_drivev2:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a()LIi;

    move-result-object v0

    invoke-interface {v0}, LIi;->a()V

    .line 145
    sget v0, LcS;->account_switcher:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Landroid/widget/Button;

    new-instance v1, LdT;

    invoke-direct {v1, p0}, LdT;-><init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_30
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 210
    const-string v0, "CheckStatusActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdV;

    if-eqz v0, :cond_19

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdV;

    invoke-virtual {v0, v2}, LdV;->cancel(Z)Z

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdV;

    .line 216
    :cond_19
    iput-boolean v2, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->i:Z

    .line 218
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onPause()V

    .line 219
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 184
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 185
    const-string v0, "CheckStatusActivity"

    const-string v1, "in onResume"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a()LIi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Landroid/widget/Button;

    new-instance v3, LdU;

    invoke-direct {v3, p0}, LdU;-><init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;)V

    invoke-interface {v1, v2, v0, v3}, LIi;->a(Landroid/widget/Button;[Landroid/accounts/Account;LIj;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LIi;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 204
    new-instance v0, LdV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LdV;-><init>(Lcom/google/android/apps/docs/app/CheckStatusActivity;LdT;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdV;

    .line 205
    iget-object v0, p0, Lcom/google/android/apps/docs/app/CheckStatusActivity;->a:LdV;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, LdV;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 179
    const-string v0, "accountName"

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/CheckStatusActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method
