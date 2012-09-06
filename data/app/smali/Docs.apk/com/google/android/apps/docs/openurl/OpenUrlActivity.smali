.class public Lcom/google/android/apps/docs/openurl/OpenUrlActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "OpenUrlActivity.java"


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LLz;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LRU;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LTF;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/net/Uri;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/lang/String;

.field public a:LkP;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Loi;

.field public a:Loj;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:LpB;

.field private a:[Landroid/accounts/Account;

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Landroid/net/Uri;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->b:Landroid/os/Handler;

    .line 106
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    return-object p1
.end method

.method static a([Landroid/accounts/Account;[BLjava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 168
    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_47

    aget-object v3, p0, v0

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 171
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 172
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 173
    invoke-static {p1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 174
    iget-object v0, v3, Landroid/accounts/Account;->name:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_3b} :catch_3f

    .line 180
    :goto_3b
    return-object v0

    .line 168
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 177
    :catch_3f
    move-exception v0

    .line 178
    const-string v0, "OpenUrlActivity"

    const-string v1, "MD5 digest algorithm not found"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_47
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->opening_in_app_drivev2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Landroid/content/Intent;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LkP;

    invoke-virtual {v0, p1}, LkP;->b(Ljava/lang/String;)LkG;

    move-result-object v4

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LkP;

    invoke-virtual {v0, v4, p2}, LkP;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 230
    invoke-direct {p0, p3}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Landroid/content/Intent;)V

    .line 277
    :goto_11
    return-void

    .line 233
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://docs.google.com/feeds/default/private/full/document:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 234
    new-instance v0, LLt;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LLt;-><init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;Ljava/lang/String;LkG;Landroid/content/Intent;)V

    invoke-virtual {v0}, LLt;->start()V

    goto :goto_11
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LXJ;

    invoke-interface {v0, p1, p2}, LXJ;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    const-string v0, "OpenUrlActivity"

    invoke-static {v0, p1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->b:Landroid/os/Handler;

    new-instance v1, LLw;

    invoke-direct {v1, p0}, LLw;-><init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    return-void
.end method

.method private e()V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LLz;

    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Landroid/net/Uri;

    invoke-interface {v0, p0, v1}, LLz;->a(Landroid/content/Context;Landroid/net/Uri;)LLC;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, LLC;->a()Landroid/content/Intent;

    move-result-object v1

    .line 208
    const-string v2, "uri"

    iget-object v3, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v2, "accountName"

    iget-object v3, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v0}, LLC;->a()Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_2a

    .line 212
    iget-object v2, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 216
    :goto_29
    return-void

    .line 214
    :cond_2a
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Landroid/content/Intent;)V

    goto :goto_29
.end method

.method private f()V
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LpB;

    invoke-interface {v0}, LpB;->a()V

    .line 292
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 297
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/docs/app/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 298
    if-eqz p1, :cond_11

    .line 299
    const-string v0, "OpenUrlActivity"

    const-string v1, "Invalid request code in activity result."

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->finish()V

    .line 302
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Loj;

    invoke-interface {v0, p0, v6}, Loj;->a(Landroid/app/Activity;I)Loi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Loi;

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Loi;

    new-instance v1, Lpo;

    new-instance v2, LLx;

    invoke-direct {v2, p0, v5}, LLx;-><init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;LLt;)V

    iget-object v3, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LHW;

    iget-object v4, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LXJ;

    invoke-direct {v1, v2, v3, v4}, Lpo;-><init>(Lpr;LHW;LXJ;)V

    invoke-interface {v0, v1}, Loi;->a(Lof;)LpB;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LpB;

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LdE;

    invoke-virtual {v1}, LdE;->a()V

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LdE;

    const-string v2, "/urlOpen"

    invoke-virtual {v1, v2, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 119
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    :goto_5a
    return-void

    .line 124
    :cond_5b
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Landroid/net/Uri;

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Landroid/net/Uri;

    if-nez v1, :cond_6b

    .line 126
    const-string v0, "URL is not specified."

    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 130
    :cond_6b
    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    if-nez v1, :cond_a3

    .line 132
    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LHW;

    invoke-interface {v1}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:[Landroid/accounts/Account;

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:[Landroid/accounts/Account;

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:[Landroid/accounts/Account;

    array-length v1, v1

    if-ge v1, v7, :cond_96

    .line 135
    :cond_88
    invoke-virtual {p0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->google_account_missing_all_apps:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5a

    .line 138
    :cond_96
    iget-object v1, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:[Landroid/accounts/Account;

    array-length v1, v1

    if-ne v1, v7, :cond_ab

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:[Landroid/accounts/Account;

    aget-object v0, v0, v6

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    .line 149
    :cond_a3
    :goto_a3
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_c4

    .line 150
    invoke-direct {p0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->f()V

    goto :goto_5a

    .line 141
    :cond_ab
    const-string v1, "digest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 142
    const-string v2, "salt"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v1, :cond_a3

    if-eqz v0, :cond_a3

    .line 144
    iget-object v2, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:[Landroid/accounts/Account;

    invoke-static {v2, v1, v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a([Landroid/accounts/Account;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Ljava/lang/String;

    goto :goto_a3

    .line 152
    :cond_c4
    invoke-direct {p0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->e()V

    goto :goto_5a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Loi;

    invoke-interface {v0, p1}, Loi;->a(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 187
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 188
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:Loi;

    invoke-interface {v0, p1, p2}, Loi;->a(ILandroid/app/Dialog;)V

    .line 200
    return-void
.end method
