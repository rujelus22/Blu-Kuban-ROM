.class public Lcom/google/googlenav/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/content/Intent;

.field private static final b:Landroid/content/Intent;


# instance fields
.field private c:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.apps.plus"

    const-string v2, "com.google.android.apps.plus.phone.HomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/L;->a:Landroid/content/Intent;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.action.VIEW_LOCAL_PLUS_PAGE_ABOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "http://plus.google.com//about"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/L;->b:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/googlenav/L;->c:Lcom/google/googlenav/ui/wizard/ju;

    .line 55
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private a(Landroid/content/Intent;Landroid/content/Intent;Lcom/google/googlenav/android/R;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/googlenav/L;->a()Z

    move-result v0

    if-nez v0, :cond_c

    .line 168
    iget-object v0, p0, Lcom/google/googlenav/L;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/L;)V

    .line 186
    :goto_b
    return-void

    .line 173
    :cond_c
    if-eqz p3, :cond_1e

    .line 174
    :try_start_e
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;Lcom/google/googlenav/android/R;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_e .. :try_end_15} :catch_16

    goto :goto_b

    .line 178
    :catch_16
    move-exception v0

    .line 179
    if-eqz p2, :cond_26

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/google/googlenav/L;->a(Landroid/content/Intent;Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    goto :goto_b

    .line 176
    :cond_1e
    :try_start_1e
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V
    :try_end_25
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_25} :catch_16

    goto :goto_b

    .line 183
    :cond_26
    iget-object v0, p0, Lcom/google/googlenav/L;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lcom/google/googlenav/L;)V

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/android/R;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    const-string v0, "content://plus.google.com/"

    invoke-direct {p0, v0, p1, p2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    const-string v1, "https://plus.google.com/"

    invoke-direct {p0, v1, p1, p2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 147
    invoke-direct {p0, v0, v1, p3}, Lcom/google/googlenav/L;->a(Landroid/content/Intent;Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 148
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/android/R;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    const-string v1, "com.google.android.apps.plus"

    const-string v2, "com.google.android.apps.plus.phone.SignOnActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 87
    const-string v1, "com.google.android.apps.plus.CID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :cond_19
    invoke-static {p3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 90
    const-string v1, "com.google.android.apps.plus.LOCATION_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_24
    invoke-static {p4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-static {p5}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 93
    const-string v1, "com.google.android.apps.plus.LATITUDE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "com.google.android.apps.plus.LONGITUDE"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_3a
    invoke-static {p6}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 97
    const-string v1, "com.google.android.apps.plus.ADDRESS"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    :cond_45
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, v0, v1, p1}, Lcom/google/googlenav/L;->a(Landroid/content/Intent;Landroid/content/Intent;Lcom/google/googlenav/android/R;)V

    .line 102
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/android/R;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 128
    const-string v0, "/about"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/android/R;)V

    .line 129
    return-void
.end method

.method public a()Z
    .registers 4

    .prologue
    .line 194
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/L;->a:Landroid/content/Intent;

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public b()V
    .registers 5

    .prologue
    .line 213
    const-string v0, "market://details?id=com.google.android.apps.plus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/google/googlenav/android/R;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 136
    const-string v0, "/posts"

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/L;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/android/R;)V

    .line 137
    return-void
.end method
