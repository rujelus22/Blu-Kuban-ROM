.class Lcom/google/googlenav/settings/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

.field private b:Lcom/google/googlenav/friend/aS;

.field private c:Lcom/google/googlenav/friend/ai;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Lcom/google/googlenav/friend/ai;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    new-instance v0, Lcom/google/googlenav/settings/r;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/settings/r;-><init>(Lcom/google/googlenav/settings/q;Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V

    iput-object v0, p0, Lcom/google/googlenav/settings/q;->b:Lcom/google/googlenav/friend/aS;

    .line 612
    iput-object p2, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/friend/ai;

    .line 613
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 682
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/M;->e:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 683
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 684
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 630
    const-string v0, "automatic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 631
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;)V

    .line 633
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 634
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/friend/ai;

    iget-object v1, p0, Lcom/google/googlenav/settings/q;->b:Lcom/google/googlenav/friend/aS;

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/friend/ai;->a(ZLcom/google/googlenav/friend/aS;)V

    .line 651
    :cond_1f
    :goto_1f
    return-void

    .line 636
    :cond_20
    const-string v0, "manual"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 637
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/M;->g:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 639
    const-string v1, "start_activity_on_complete"

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 641
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1f

    .line 642
    :cond_3e
    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 643
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    .line 645
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 646
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->e(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 647
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/q;->d(Z)V

    .line 648
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/friend/ai;

    iget-object v1, p0, Lcom/google/googlenav/settings/q;->b:Lcom/google/googlenav/friend/aS;

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/friend/ai;->b(ZLcom/google/googlenav/friend/aS;)V

    goto :goto_1f
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 666
    invoke-static {p1}, Lcom/google/googlenav/friend/au;->a(Z)Z

    .line 667
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 670
    if-eqz p1, :cond_28

    .line 671
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->a(Landroid/content/Context;)V

    .line 675
    :goto_22
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/friend/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ai;->a()V

    .line 676
    return-void

    .line 673
    :cond_28
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/friend/reporting/r;->b(Landroid/content/Context;)V

    goto :goto_22
.end method

.method public b()V
    .registers 4

    .prologue
    .line 708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/M;->h:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 709
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 710
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/friend/j;

    move-result-object v0

    if-nez v0, :cond_9

    .line 702
    :cond_8
    :goto_8
    return-void

    .line 695
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/friend/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/j;->k()Lcom/google/googlenav/friend/i;

    move-result-object v0

    .line 696
    if-eqz v0, :cond_8

    .line 699
    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/i;->a(Z)V

    .line 700
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 701
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/s;->a(Lcom/google/googlenav/friend/i;)V

    goto :goto_8
.end method

.method public c(Z)V
    .registers 5
    .parameter

    .prologue
    .line 720
    if-eqz p1, :cond_21

    .line 721
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/google/googlenav/android/M;->d:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 724
    const-string v1, "start_activity_on_complete"

    const-class v2, Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 726
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 727
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 733
    :goto_20
    return-void

    .line 731
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0, p1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;Z)V

    goto :goto_20
.end method

.method public d(Z)V
    .registers 6
    .parameter

    .prologue
    .line 742
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 743
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->c:Lcom/google/googlenav/friend/ai;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/settings/q;->b:Lcom/google/googlenav/friend/aS;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/googlenav/friend/ai;->a(ZZILcom/google/googlenav/friend/aS;)V

    .line 746
    return-void
.end method

.method public e(Z)V
    .registers 4
    .parameter

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/friend/j;

    move-result-object v0

    if-nez v0, :cond_9

    .line 772
    :goto_8
    return-void

    .line 768
    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->f(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/friend/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/friend/j;->k()Lcom/google/googlenav/friend/i;

    move-result-object v0

    .line 769
    invoke-virtual {v0, p1}, Lcom/google/googlenav/friend/i;->b(Z)V

    .line 770
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->d(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 771
    iget-object v1, p0, Lcom/google/googlenav/settings/q;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v1}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->g(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/settings/s;->a(Lcom/google/googlenav/friend/i;)V

    goto :goto_8
.end method
