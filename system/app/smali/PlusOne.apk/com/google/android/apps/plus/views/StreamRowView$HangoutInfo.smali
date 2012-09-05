.class Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;
.super Ljava/lang/Object;
.source "StreamRowView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;
.implements Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HangoutInfo"
.end annotation


# instance fields
.field public final mHangoutAvatars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/apps/plus/views/ClickableUserImage;",
            ">;"
        }
    .end annotation
.end field

.field public final mHangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

.field public mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

.field final synthetic this$0:Lcom/google/android/apps/plus/views/StreamRowView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/views/StreamRowView;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V
    .registers 12
    .parameter
    .parameter "hangoutData"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutAvatars:Ljava/util/Map;

    .line 203
    iput-object p2, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    .line 204
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->getCurrentHangoutOccupants()Ljava/util/List;

    move-result-object v7

    .line 205
    .local v7, occupants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v6, v1, :cond_59

    .line 206
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;

    .line 207
    .local v8, user:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getGaiaId()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getName()Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z
    invoke-static {p1}, Lcom/google/android/apps/plus/views/StreamRowView;->access$000(Lcom/google/android/apps/plus/views/StreamRowView;)Z

    move-result v1

    if-eqz v1, :cond_57

    move-object v5, p0

    :goto_36
    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;JLjava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    .line 209
    .local v0, userImage:Lcom/google/android/apps/plus/views/ClickableUserImage;
    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutAvatars:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;->getGaiaId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mDisplayDetails:Z
    invoke-static {p1}, Lcom/google/android/apps/plus/views/StreamRowView;->access$000(Lcom/google/android/apps/plus/views/StreamRowView;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 213
    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mClickableItems:Ljava/util/Set;
    invoke-static {p1}, Lcom/google/android/apps/plus/views/StreamRowView;->access$100(Lcom/google/android/apps/plus/views/StreamRowView;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 207
    .end local v0           #userImage:Lcom/google/android/apps/plus/views/ClickableUserImage;
    :cond_57
    const/4 v5, 0x0

    goto :goto_36

    .line 216
    .end local v8           #user:Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;
    :cond_59
    return-void
.end method


# virtual methods
.method public getCurrentHangoutOccupants()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$HangoutOccupant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    if-eqz v0, :cond_b

    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData;->getActiveOccupantList()Ljava/util/List;

    move-result-object v0

    .line 245
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportedStatus()Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->access$200(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static {v0}, Lcom/google/android/apps/plus/service/Hangout;->isInProgress(Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Z

    move-result v0

    return v0
.end method

.method public joinHangout()V
    .registers 7

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->access$200(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mHangoutData:Lcom/google/wireless/tacotruck/proto/Data$HangoutData;

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/Hangout;->enterGreenRoom(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;JLjava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)V

    .line 264
    return-void
.end method

.method public onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V
    .registers 3
    .parameter "button"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->mJoinButton:Lcom/google/android/apps/plus/views/ClickableButton;

    if-ne p1, v0, :cond_7

    .line 254
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->joinHangout()V

    .line 256
    :cond_7
    return-void
.end method

.method public onUserImageClick(JLjava/lang/String;)V
    .registers 11
    .parameter "userId"
    .parameter "userName"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->access$200(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 273
    return-void
.end method

.method public shouldDisplayJoinButton()Z
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/StreamRowView$HangoutInfo;->isActive()Z

    move-result v0

    return v0
.end method
