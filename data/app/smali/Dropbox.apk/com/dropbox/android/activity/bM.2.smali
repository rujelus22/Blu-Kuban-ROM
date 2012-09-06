.class final enum Lcom/dropbox/android/activity/bM;
.super Lcom/dropbox/android/activity/bB;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/android/activity/bB;-><init>(Ljava/lang/String;ILcom/dropbox/android/activity/bA;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/dropbox/android/activity/TourPageFragment;Landroid/os/Bundle;)Lcom/dropbox/android/activity/bS;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->i(Z)V

    .line 202
    const v0, 0x7f090102

    invoke-static {p1, p2, v0}, Lcom/dropbox/android/activity/bM;->a(Lcom/dropbox/android/activity/TourPageFragment;Landroid/os/Bundle;I)Lcom/dropbox/android/activity/bS;

    move-result-object v0

    return-object v0
.end method
