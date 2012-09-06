.class Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "HostedHangoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestedPeopleAdpater"
.end annotation


# instance fields
.field final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    .line 185
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 186
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 188
    return-void
.end method

.method private buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 6
    .parameter "cursor"

    .prologue
    const/4 v3, 0x2

    .line 202
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 203
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 204
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, participantId:Ljava/lang/String;
    const-string v2, "g:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 206
    invoke-static {v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->extractGaiaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setFocusObfuscatedId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 213
    :cond_20
    :goto_20
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    return-object v2

    .line 207
    :cond_25
    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_20

    .line 209
    :cond_35
    const-string v2, "p:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_20
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 10
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x1

    .line 229
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;

    .line 230
    .local v0, item:Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, participantId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 232
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " .*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->setParticipantName(Ljava/lang/String;)V

    .line 234
    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_26

    :goto_22
    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->setChecked(Z)V

    .line 235
    return-void

    .line 234
    :cond_26
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "container"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 192
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 193
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    .line 194
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantIdFromPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->isInAudience(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$400(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 195
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->removePerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 199
    :goto_1e
    return-void

    .line 197
    :cond_1f
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$SuggestedPeopleAdpater;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mAudienceView:Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    goto :goto_1e
.end method
