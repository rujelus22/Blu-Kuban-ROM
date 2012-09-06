.class public Lcom/google/android/apps/plus/views/ConversationTile;
.super Landroid/widget/RelativeLayout;
.source "ConversationTile.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/Tile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ConversationTile$1;,
        Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;
    }
.end annotation


# instance fields
.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveParticipantIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConversationRowId:Ljava/lang/Long;

.field private mEditText:Landroid/widget/EditText;

.field private rtcListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/ConversationTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v2, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:Ljava/lang/Long;

    .line 27
    new-instance v1, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;

    invoke-direct {v1, p0, v2}, Lcom/google/android/apps/plus/views/ConversationTile$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/views/ConversationTile;Lcom/google/android/apps/plus/views/ConversationTile$1;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ConversationTile;->rtcListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 28
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mActiveParticipantIds:Ljava/util/HashSet;

    .line 63
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030025

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ConversationTile;->addView(Landroid/view/View;)V

    .line 67
    const v1, 0x7f090081

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/ConversationTile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mEditText:Landroid/widget/EditText;

    .line 68
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/views/ConversationTile;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mActiveParticipantIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/ConversationTile;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method public addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->listeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 80
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->listeners:Ljava/util/List;

    .line 83
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method public getActiveParticipantIds()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mActiveParticipantIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 101
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->rtcListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 160
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->rtcListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 123
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 181
    return-void
.end method

.method public onStart()V
    .registers 1

    .prologue
    .line 108
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 174
    return-void
.end method

.method public onTilePause()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:Ljava/lang/Long;

    if-eqz v0, :cond_1d

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationTile;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendPresenceRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZ)I

    .line 149
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationTile;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move-object v6, v0

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 151
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v6, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 152
    return-void
.end method

.method public onTileResume()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:Ljava/lang/Long;

    if-eqz v0, :cond_1d

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationTile;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/ConversationTile;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendPresenceRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZ)I

    .line 135
    :cond_1d
    return-void
.end method

.method public onTileStart()V
    .registers 1

    .prologue
    .line 115
    return-void
.end method

.method public onTileStop()V
    .registers 1

    .prologue
    .line 167
    return-void
.end method

.method public setConversationRowId(Ljava/lang/Long;)V
    .registers 2
    .parameter "conversationRowId"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ConversationTile;->mConversationRowId:Ljava/lang/Long;

    .line 185
    return-void
.end method
