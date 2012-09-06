.class public Lcom/dropbox/android/activity/TourActivity;
.super Lcom/dropbox/android/activity/base/BaseFragmentActivity;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/activity/bT;


# instance fields
.field private m:[Lcom/dropbox/android/activity/bB;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Lcom/dropbox/android/activity/bB;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 25
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    .line 27
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/dropbox/android/activity/bB;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 30
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/dropbox/android/activity/TourActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v2

    invoke-virtual {v2}, Ldbxyzptlk/j/m;->s()Z

    move-result v2

    if-nez v2, :cond_29

    .line 32
    const-string v2, "INTRO_TOUR"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    :cond_29
    const-string v2, "EXTRA_TOUR_PAGES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    return-object v0
.end method

.method private a(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/activity/TourActivity;->m:[Lcom/dropbox/android/activity/bB;

    aget-object v0, v0, p1

    invoke-static {v0, p1}, Lcom/dropbox/android/activity/TourPageFragment;->a(Lcom/dropbox/android/activity/bB;I)Lcom/dropbox/android/activity/TourPageFragment;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TourActivity;->d()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->a()Landroid/support/v4/app/s;

    move-result-object v1

    .line 79
    const v2, 0x7f0d0053

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/s;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/s;

    .line 80
    if-eqz p2, :cond_1c

    .line 81
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/s;

    .line 83
    :cond_1c
    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()I

    .line 84
    return-void
.end method


# virtual methods
.method public final b(I)V
    .registers 4
    .parameter

    .prologue
    .line 67
    add-int/lit8 v0, p1, 0x1

    .line 68
    iget-object v1, p0, Lcom/dropbox/android/activity/TourActivity;->m:[Lcom/dropbox/android/activity/bB;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 69
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/dropbox/android/activity/TourActivity;->a(IZ)V

    .line 74
    :goto_b
    return-void

    .line 71
    :cond_c
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TourActivity;->finish()V

    goto :goto_b
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-super {p0, p1}, Lcom/dropbox/android/activity/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TourActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "EXTRA_TOUR_PAGES"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    if-nez v2, :cond_18

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TourActivity expects an extra with the pages it should show."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_18
    array-length v0, v2

    new-array v0, v0, [Lcom/dropbox/android/activity/bB;

    iput-object v0, p0, Lcom/dropbox/android/activity/TourActivity;->m:[Lcom/dropbox/android/activity/bB;

    move v0, v1

    .line 49
    :goto_1e
    array-length v3, v2

    if-ge v0, v3, :cond_2e

    .line 50
    iget-object v3, p0, Lcom/dropbox/android/activity/TourActivity;->m:[Lcom/dropbox/android/activity/bB;

    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/dropbox/android/activity/bB;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/activity/bB;

    move-result-object v4

    aput-object v4, v3, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 53
    :cond_2e
    invoke-virtual {p0}, Lcom/dropbox/android/activity/TourActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/aW;->a(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 55
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->setRequestedOrientation(I)V

    .line 58
    :cond_3c
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/dropbox/android/activity/TourActivity;->setContentView(I)V

    .line 60
    if-nez p1, :cond_47

    .line 61
    invoke-direct {p0, v1, v1}, Lcom/dropbox/android/activity/TourActivity;->a(IZ)V

    .line 63
    :cond_47
    return-void
.end method
