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
    .line 33
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

.method private createAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->createAudienceFromPerson(Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v0

    return-object v0
.end method

.method private startNewConversation()V
    .registers 4

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->createAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    .line 141
    return-void
.end method

.method private startNewHangout()V
    .registers 5

    .prologue
    .line 144
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->createAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v3

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getNewHangoutActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;ZLcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v0

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    .line 148
    return-void
.end method

.method private viewProfile()V
    .registers 5

    .prologue
    .line 130
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getProfileActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    .line 134
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 64
    :goto_9
    return-void

    .line 54
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 56
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_18

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    goto :goto_9

    .line 61
    :cond_18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "data_uri"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
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

    .line 71
    const-string v0, "data_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 72
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
    .registers 9
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
    const/4 v3, 0x1

    const v5, 0x7f080301

    const/4 v4, 0x0

    .line 80
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mRedirected:Z

    if-eqz v1, :cond_a

    .line 120
    :goto_9
    return-void

    .line 84
    :cond_a
    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mRedirected:Z

    .line 86
    if-eqz p2, :cond_14

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 87
    :cond_14
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    goto :goto_9

    .line 92
    :cond_1f
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 94
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    goto :goto_9

    .line 99
    :cond_38
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const-string v2, "g:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const-string v2, "e:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    const-string v2, "p:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 101
    const-string v1, "ProfileActionGatewayActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized aggregate ID format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->finish()V

    goto :goto_9

    .line 108
    :cond_7b
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, command:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->mPersonName:Ljava/lang/String;

    .line 111
    const-string v1, "conversation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startNewConversation()V

    goto/16 :goto_9

    .line 113
    :cond_93
    const-string v1, "hangout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 114
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->startNewHangout()V

    goto/16 :goto_9

    .line 115
    :cond_a0
    const-string v1, "addtocircle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->showCirclePicker()V

    goto/16 :goto_9

    .line 118
    :cond_ad
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ProfileActionGatewayActivity;->viewProfile()V

    goto/16 :goto_9
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
    .line 127
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
