.class public Lcom/google/android/apps/plus/views/ParticipantsGalleryView;
.super Landroid/widget/FrameLayout;
.source "ParticipantsGalleryView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;,
        Lcom/google/android/apps/plus/views/ParticipantsGalleryView$AvatarContextMenuHelper;,
        Lcom/google/android/apps/plus/views/ParticipantsGalleryView$SimpleCommandListener;,
        Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected avatarContextMenuDialog:Landroid/app/Dialog;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

.field private mEmptyMessageView:Landroid/widget/TextView;

.field private mParticipantListButton:Landroid/view/View;

.field private mParticipantListButtonVisibility:Z

.field private mParticipantTrayAvatars:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 219
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    iput-boolean v5, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButtonVisibility:Z

    .line 220
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 221
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030059

    invoke-virtual {v2, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 223
    const v4, 0x7f0d010c

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mEmptyMessageView:Landroid/widget/TextView;

    .line 224
    const v4, 0x7f0d010b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantTrayAvatars:Landroid/view/ViewGroup;

    .line 225
    const v4, 0x7f0d010a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButton:Landroid/view/View;

    .line 227
    if-eqz p2, :cond_48

    .line 228
    sget-object v4, Lcom/google/android/apps/plus/R$styleable;->ParticipantsGalleryFragment:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 230
    .local v3, styledAttrs:Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 232
    .local v0, color:I
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setBackgroundColor(I)V

    .line 234
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, emptyMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mEmptyMessageView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .end local v0           #color:I
    .end local v1           #emptyMessage:Ljava/lang/String;
    .end local v3           #styledAttrs:Landroid/content/res/TypedArray;
    :cond_48
    iget-object v4, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButton:Landroid/view/View;

    new-instance v5, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$1;

    invoke-direct {v5, p0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$1;-><init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    return-object v0
.end method

.method private static getGaiaIdFromParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)J
    .registers 3
    .parameter "participant"

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->hasParticipantId()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 391
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v0

    .line 393
    :goto_e
    return-wide v0

    :cond_f
    const-wide/16 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .registers 7
    .parameter "inflater"
    .parameter "participant"

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-nez v1, :cond_d

    .line 282
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "#setAccount needs to be called first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mEmptyMessageView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 286
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantTrayAvatars:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButtonVisibility:Z

    if-eqz v1, :cond_22

    .line 288
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButton:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_22
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantTrayAvatars:Landroid/view/ViewGroup;

    invoke-static {p1, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 293
    .local v0, avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setTag(Ljava/lang/Object;)V

    .line 294
    invoke-static {p2}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(Lcom/google/wireless/realtimechat/proto/Data$Participant;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setParticipantType(I)V

    .line 295
    invoke-static {p2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->getGaiaIdFromParticipant(Lcom/google/wireless/realtimechat/proto/Data$Participant;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setParticipantGaiaId(J)V

    .line 296
    iget-object v1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantTrayAvatars:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    new-instance v1, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView$TouchListener;-><init>(Lcom/google/android/apps/plus/views/ParticipantsGalleryView;Lcom/google/android/apps/plus/views/OverlayedAvatarView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 299
    return-object v0
.end method

.method public addParticipants(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 304
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 305
    .local v2, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    goto :goto_c

    .line 307
    .end local v2           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_1c
    return-void
.end method

.method public dismissAvatarMenuDialog()V
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->avatarContextMenuDialog:Landroid/app/Dialog;

    .line 410
    :cond_c
    return-void
.end method

.method public removeAllParticipants()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mEmptyMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantTrayAvatars:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantTrayAvatars:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 251
    sget-boolean v0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->$assertionsDisabled:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eq v0, p1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 252
    :cond_12
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 253
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 398
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 399
    return-void
.end method

.method public setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V
    .registers 2
    .parameter "commandListener"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mCommandListener:Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;

    .line 257
    return-void
.end method

.method public setEmptyMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "emptyMessage"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mEmptyMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    return-void
.end method

.method public setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V
    .registers 4
    .parameter "participantAvatarView"
    .parameter "active"

    .prologue
    .line 369
    if-eqz p2, :cond_9

    const v0, 0x7f090026

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setBorderResource(I)V

    .line 371
    return-void

    .line 369
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setParticipantListButtonVisibility(Z)V
    .registers 5
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 268
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButtonVisibility:Z

    .line 269
    if-eqz p1, :cond_16

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantTrayAvatars:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v0, 0x1

    .line 270
    .local v0, showButton:Z
    :goto_e
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->mParticipantListButton:Landroid/view/View;

    if-eqz v0, :cond_18

    :goto_12
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    return-void

    .end local v0           #showButton:Z
    :cond_16
    move v0, v1

    .line 269
    goto :goto_e

    .line 270
    .restart local v0       #showButton:Z
    :cond_18
    const/16 v1, 0x8

    goto :goto_12
.end method

.method public setParticipantLoudestSpeaker(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V
    .registers 4
    .parameter "participantAvatarView"
    .parameter "active"

    .prologue
    .line 381
    if-eqz p2, :cond_9

    const v0, 0x7f090027

    :goto_5
    invoke-virtual {p1, v0}, Lcom/google/android/apps/plus/views/OverlayedAvatarView;->setBorderResource(I)V

    .line 383
    return-void

    .line 381
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, participantsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    .local p2, activeParticipantsInTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, activeParticipantsInAnyTile:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->removeAllParticipants()V

    .line 313
    new-instance v5, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 315
    .local v5, participantsToDisplay:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 317
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->dismissAvatarMenuDialog()V

    .line 319
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 320
    .local v4, participantId:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 321
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 322
    .local v3, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 323
    .local v0, avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_1c

    .line 327
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .end local v3           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v4           #participantId:Ljava/lang/String;
    :cond_3d
    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 328
    .restart local v4       #participantId:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 329
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 330
    .restart local v3       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 331
    .restart local v0       #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    invoke-virtual {p0, v0, v7}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_41

    .line 335
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .end local v3           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v4           #participantId:Ljava/lang/String;
    :cond_61
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 336
    .restart local v4       #participantId:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 337
    .restart local v3       #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->addParticipant(Landroid/view/LayoutInflater;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/android/apps/plus/views/OverlayedAvatarView;

    move-result-object v0

    .line 338
    .restart local v0       #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    invoke-virtual {p0, v0, v7}, Lcom/google/android/apps/plus/views/ParticipantsGalleryView;->setParticipantActive(Lcom/google/android/apps/plus/views/OverlayedAvatarView;Z)V

    goto :goto_65

    .line 340
    .end local v0           #avatarView:Lcom/google/android/apps/plus/views/OverlayedAvatarView;
    .end local v3           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .end local v4           #participantId:Ljava/lang/String;
    :cond_7f
    return-void
.end method
