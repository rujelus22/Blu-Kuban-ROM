.class public Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;
.super Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;
.source "ProfileActionGatewayActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;-><init>()V

    return-void
.end method

.method private startNewConversation()V
    .registers 6

    .prologue
    .line 124
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v0

    .line 125
    .local v0, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v2

    .line 126
    .local v2, person:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 127
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const-string v4, "e:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 128
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 129
    :cond_21
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const-string v4, "p:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 130
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 134
    :goto_30
    invoke-virtual {v0, v2}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    .line 136
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v1

    .line 137
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x200

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    .line 140
    return-void

    .line 132
    .end local v1           #intent:Landroid/content/Intent;
    :cond_49
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->getGaiaId(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_30
.end method

.method private viewProfile()V
    .registers 6

    .prologue
    .line 117
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    .line 121
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 62
    :goto_9
    return-void

    .line 53
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 54
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 55
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_17

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    .line 59
    :cond_17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "data_uri"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_9
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 69
    const-string v0, "data_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 70
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->PROJECTION:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 8
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const v4, 0x7f07024c

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mRedirected:Z

    if-eqz v1, :cond_a

    .line 107
    :goto_9
    return-void

    .line 82
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mRedirected:Z

    .line 84
    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 85
    :cond_14
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    goto :goto_9

    .line 90
    :cond_1f
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 92
    invoke-static {p0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    goto :goto_9

    .line 97
    :cond_38
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonName:Ljava/lang/String;

    .line 100
    const-string v1, "conversation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 101
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startNewConversation()V

    goto :goto_9

    .line 102
    :cond_4f
    const-string v1, "addtocircle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->showCirclePicker()V

    goto :goto_9

    .line 105
    :cond_5b
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->viewProfile()V

    goto :goto_9
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
