.class Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;
.super Ljava/lang/Object;
.source "ManageConferenceUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManageConferenceUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConferenceCallItem"
.end annotation


# instance fields
.field private conn:Lcom/android/internal/telephony/Connection;

.field private image:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/ManageConferenceUi;


# direct methods
.method public constructor <init>(Lcom/android/phone/ManageConferenceUi;Lcom/android/internal/telephony/Connection;)V
    .registers 8
    .parameter
    .parameter "conn"

    .prologue
    const v4, 0x7f02018e

    .line 185
    iput-object p1, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->this$0:Lcom/android/phone/ManageConferenceUi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p2, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    .line 187
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, o:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 189
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    instance-of v3, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_4c

    move-object v0, v1

    .line 190
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 194
    .end local v1           #o:Ljava/lang/Object;
    :cond_16
    :goto_16
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 195
    .local v2, presentation:I
    if-eqz v0, :cond_6e

    .line 196
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2e

    .line 198
    invoke-virtual {p1}, Lcom/android/phone/ManageConferenceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    .line 200
    :cond_2e
    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_3e

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_55

    .line 201
    :cond_3e
    #getter for: Lcom/android/phone/ManageConferenceUi;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/phone/ManageConferenceUi;->access$400(Lcom/android/phone/ManageConferenceUi;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0e0193

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    .line 216
    :goto_4b
    return-void

    .line 191
    .end local v2           #presentation:I
    .restart local v1       #o:Ljava/lang/Object;
    :cond_4c
    instance-of v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_16

    .line 192
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1           #o:Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_16

    .line 203
    .restart local v2       #presentation:I
    :cond_55
    sget v3, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-eq v2, v3, :cond_60

    .line 204
    #calls: Lcom/android/phone/ManageConferenceUi;->getPresentationString(I)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/phone/ManageConferenceUi;->access$500(Lcom/android/phone/ManageConferenceUi;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_4b

    .line 205
    :cond_60
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_69

    .line 206
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_4b

    .line 208
    :cond_69
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_4b

    .line 212
    :cond_6e
    invoke-virtual {p1}, Lcom/android/phone/ManageConferenceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    .line 213
    #calls: Lcom/android/phone/ManageConferenceUi;->getPresentationString(I)Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/phone/ManageConferenceUi;->access$500(Lcom/android/phone/ManageConferenceUi;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    goto :goto_4b
.end method


# virtual methods
.method public endConnection()V
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 225
    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isDisconnected()Z
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    .line 231
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public splitConnection()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/phone/ManageConferenceUi$ConferenceCallItem;->conn:Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    .line 228
    return-void
.end method
