.class final enum Lcom/dropbox/android/activity/bJ;
.super Lcom/dropbox/android/activity/bB;
.source "panda.py"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 157
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
    .line 160
    const v1, 0x7f090103

    const v2, 0x7f090108

    const v3, 0x7f09010a

    const v4, 0x7f09017a

    const v5, 0x7f020066

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/activity/bJ;->a(Lcom/dropbox/android/activity/TourPageFragment;IIIII)Lcom/dropbox/android/activity/bS;

    move-result-object v0

    return-object v0
.end method
