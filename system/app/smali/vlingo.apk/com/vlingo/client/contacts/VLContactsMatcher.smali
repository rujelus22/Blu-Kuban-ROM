.class public Lcom/vlingo/client/contacts/VLContactsMatcher;
.super Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;
.source "VLContactsMatcher.java"


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;)V
    .registers 4
    .parameter "listener"
    .parameter "parentActivity"

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vlingo/client/contacts/VLContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;Z)V
    .registers 7
    .parameter "listener"
    .parameter "parentActivity"
    .parameter "useGroupedSortedContactList"

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/android/core/contacts/AndroidContactsMatcher;-><init>(Lcom/vlingo/client/core/contacts/ContactsMatcherListener;Landroid/app/Activity;Z)V

    .line 23
    const-string v0, "config.autoaction.match_score_threshold"

    const/high16 v1, 0x4198

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vlingo/client/contacts/VLContactsMatcher;->AUTO_ACTION_MATCH_SCORE_THRESHOLD:F

    .line 24
    const-string v0, "config.autoaction.mru_diff_threshold"

    const/high16 v1, 0x4040

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vlingo/client/contacts/VLContactsMatcher;->AUTO_ACTION_MRU_DIFF_THRESHOLD:F

    .line 25
    const-string v0, "config.autoaction.match_diff_threshold"

    const/high16 v1, 0x4120

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vlingo/client/contacts/VLContactsMatcher;->AUTO_ACTION_MATCH_DIFF_THRESHOLD:F

    .line 26
    const-string v0, "config.autoaction.mru_abs_threshold"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vlingo/client/contacts/VLContactsMatcher;->AUTO_ACTION_MRU_ABS_THRESHOLD:F

    .line 27
    const-string v0, "config.autoaction.rec_confidence_threshold"

    invoke-static {v0, v2}, Lcom/vlingo/client/settings/Settings;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/vlingo/client/contacts/VLContactsMatcher;->AUTO_ACTION_REC_CONFIDENCE_THRESHOLD:F

    .line 28
    return-void
.end method
