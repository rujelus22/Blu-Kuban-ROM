.class public Lcom/google/android/apps/docs/app/InvitationActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "InvitationActivity.java"


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIG;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/view/View;

.field private a:Landroid/webkit/WebView;

.field private a:Landroid/widget/Button;

.field private a:Lcg;

.field private a:Lcom/google/android/apps/docs/view/TitleBar;

.field public a:LeO;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Ljava/lang/Class;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "DocListActivity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field private a:LrA;

.field private a:LrB;

.field private final a:Lrz;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->b:Landroid/os/Handler;

    .line 118
    new-instance v0, LgU;

    invoke-direct {v0, p0}, LgU;-><init>(Lcom/google/android/apps/docs/app/InvitationActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lrz;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;)Landroid/webkit/WebView;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;)Lcg;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lcg;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;Lcg;)Lcg;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lcg;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;)LrA;
    .registers 2
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LrA;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;LrA;)LrA;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LrA;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/InvitationActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/app/InvitationActivity;->b(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 391
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LFX;

    const-string v1, "driveInvitationFlowForceLogin"

    invoke-interface {v0, v1, v5}, LFX;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 392
    const-string v1, "InvitationActivity"

    const-string v2, "showUrl(%s), forceLogin=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    if-eqz p1, :cond_29

    .line 395
    if-eqz v0, :cond_2a

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LrB;

    invoke-virtual {v0, p1}, LrB;->b(Ljava/lang/String;)V

    .line 401
    :cond_29
    :goto_29
    return-void

    .line 398
    :cond_2a
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LrB;

    invoke-virtual {v0, p1}, LrB;->a(Ljava/lang/String;)V

    goto :goto_29
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/InvitationActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/InvitationActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->e()V

    return-void
.end method

.method private b(Z)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 188
    iget-object v3, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/view/View;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    if-nez p1, :cond_15

    :goto_f
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 190
    return-void

    :cond_13
    move v0, v2

    .line 188
    goto :goto_8

    :cond_15
    move v1, v2

    .line 189
    goto :goto_f
.end method

.method private c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://drive.google.com/start?device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "androidtablet"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    iget-object v1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LFX;

    const-string v2, "invitationUrl"

    invoke-interface {v1, v2, v0}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    return-object v0

    .line 384
    :cond_28
    const-string v0, "androidphone"

    goto :goto_17
.end method

.method private e()V
    .registers 4

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    const-class v1, Lcom/google/android/apps/docs/app/AccountsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 270
    const-string v1, "accountName"

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/app/InvitationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 272
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private g()V
    .registers 5

    .prologue
    .line 404
    const-string v0, "InvitationActivity"

    const-string v1, "showErrorMessage"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 407
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->drive_invitation_error_drivev2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LXJ;

    iget-object v2, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, LXJ;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 409
    return-void
.end method


# virtual methods
.method a()LdL;
    .registers 2

    .prologue
    .line 291
    sget-object v0, LdL;->b:LdL;

    return-object v0
.end method

.method protected a()LpI;
    .registers 2

    .prologue
    .line 413
    sget-object v0, LpI;->a:LpI;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public goToDocs(Ljava/lang/String;)V
    .registers 5
    .parameter
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 300
    const-string v0, "InvitationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToDocs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->b:Landroid/os/Handler;

    new-instance v1, LgZ;

    invoke-direct {v1, p0, p1}, LgZ;-><init>(Lcom/google/android/apps/docs/app/InvitationActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method public goToDrive(Ljava/lang/String;)V
    .registers 5
    .parameter
    .annotation build Lcom/google/android/apps/docs/KeepAfterProguard;
    .end annotation

    .prologue
    .line 321
    const-string v0, "InvitationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToDrive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->b:Landroid/os/Handler;

    new-instance v1, Lha;

    invoke-direct {v1, p0, p1}, Lha;-><init>(Lcom/google/android/apps/docs/app/InvitationActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 277
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 278
    if-nez p1, :cond_23

    .line 279
    const/4 v0, -0x1

    if-ne p2, v0, :cond_23

    .line 280
    const-string v0, "accountName"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->finish()V

    .line 283
    iget-object v1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LXj;

    invoke-interface {v1, p0, v0}, LXj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    :cond_23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter

    .prologue
    .line 194
    const-string v0, "InvitationActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    sget v0, LcU;->invitation:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->setContentView(I)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Ljava/lang/String;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget v0, LcS;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/view/TitleBar;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lcom/google/android/apps/docs/view/TitleBar;

    invoke-interface {v0, v1}, LIi;->a(LIB;)V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a()LIi;

    move-result-object v0

    sget v1, LcY;->app_name_drivev2:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/app/InvitationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LIi;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a()LIi;

    move-result-object v0

    invoke-interface {v0}, LIi;->a()V

    .line 206
    sget v0, LcS;->account_switcher:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/widget/Button;

    new-instance v1, LgX;

    invoke-direct {v1, p0}, LgX;-><init>(Lcom/google/android/apps/docs/app/InvitationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    sget v0, LcS;->progress_block:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/app/InvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/view/View;

    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a()Lx;

    move-result-object v0

    .line 218
    sget v1, LcS;->webview_fragment:I

    invoke-virtual {v0, v1}, Lx;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/fragment/WebViewFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/WebViewFragment;->b()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    .line 220
    new-instance v0, LgY;

    iget-object v3, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lrz;

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LFX;

    iget-object v6, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LLz;

    const-string v1, "webview"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/docs/app/InvitationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LIG;

    iget-object v10, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->b:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v10}, LgY;-><init>(Lcom/google/android/apps/docs/app/InvitationActivity;Landroid/content/Context;Lrz;Ljava/lang/String;LFX;Ljava/lang/Class;LLz;Landroid/content/SharedPreferences;LIG;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LrB;

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LrB;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/webkit/WebView;

    const-string v1, "Cakemix"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->f()V

    .line 265
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lcg;

    if-eqz v0, :cond_11

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lcg;

    invoke-virtual {v0}, Lcg;->a()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Lcg;

    .line 367
    :cond_11
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 368
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 339
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 340
    const-string v0, "InvitationActivity"

    const-string v1, "in onResume"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 344
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a()LIi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/widget/Button;

    new-instance v3, Lhb;

    invoke-direct {v3, p0}, Lhb;-><init>(Lcom/google/android/apps/docs/app/InvitationActivity;)V

    invoke-interface {v1, v2, v0, v3}, LIi;->a(Landroid/widget/Button;[Landroid/accounts/Account;LIj;)V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->a()LIi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/app/InvitationActivity;->a:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/apps/docs/app/InvitationActivity;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LIi;->a(Landroid/widget/Button;Ljava/lang/String;)V

    .line 358
    return-void
.end method
