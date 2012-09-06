.class final enum Lcom/dropbox/android/activity/bN;
.super Lcom/dropbox/android/activity/bB;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/bB;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/bA;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/dropbox/android/activity/TourPageFragment;Landroid/os/Bundle;)Lcom/dropbox/android/activity/bS;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->i(Z)V

    .line 217
    const v1, 0x7f090103

    const v2, 0x7f090108

    const v3, 0x7f09010a

    const v4, 0x7f09017a

    const v5, 0x7f020066

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/activity/bN;->a(Lcom/dropbox/android/activity/TourPageFragment;IIIII)Lcom/dropbox/android/activity/bS;

    .line 223
    const v0, 0x7f090102

    new-instance v1, Lcom/dropbox/android/activity/bO;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/bO;-><init>(Lcom/dropbox/android/activity/bN;)V

    invoke-static {p1, v0, v1}, Lcom/dropbox/android/activity/bN;->a(Lcom/dropbox/android/activity/TourPageFragment;ILcom/dropbox/android/activity/bR;)V

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method
