.class Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "AudienceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/AudienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestedPeopleAdpater"
.end annotation


# instance fields
.field final mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    .line 145
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 146
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 148
    return-void
.end method

.method private buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 8
    .parameter "cursor"

    .prologue
    const/4 v5, 0x2

    .line 158
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 159
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 160
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, participantId:Ljava/lang/String;
    const-string v4, "g:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 163
    const/4 v4, 0x2

    :try_start_1a
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 164
    .local v1, gaiaId:J
    invoke-virtual {v0, v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_29} :catch_4a

    .line 174
    .end local v1           #gaiaId:J
    :cond_29
    :goto_29
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v4

    return-object v4

    .line 168
    :cond_2e
    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 169
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_29

    .line 170
    :cond_3e
    const-string v4, "p:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 171
    invoke-virtual {v0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_29

    .line 165
    :catch_4a
    move-exception v4

    goto :goto_29
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 190
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;

    .line 191
    .local v0, item:Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;
    const/4 v2, 0x1

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, participantId:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->setPersonId(Ljava/lang/String;)V

    .line 193
    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/views/SuggestedPeopleListItemView;->setParticipantName(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "context"
    .parameter "cursor"
    .parameter "container"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(I)V
    .registers 5
    .parameter "position"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 152
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 153
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->buildPerson(Landroid/database/Cursor;)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    .line 154
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$SuggestedPeopleAdpater;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/AudienceFragment;->mAudienceView:Lcom/google/android/apps/plus/views/AudienceView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/AudienceView;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)V

    .line 155
    return-void
.end method
