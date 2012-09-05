.class public Lcom/google/android/apps/plus/phone/InviteContactActivity;
.super Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;
.source "InviteContactActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;
    }
.end annotation

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
.field private static final ENTITY_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->ENTITY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/InviteContactActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->showEmailPicker(Ljava/util/ArrayList;)V

    return-void
.end method

.method private showEmailPicker(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "pick_email"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/apps/plus/phone/InviteContactActivity$EmailPickerDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    .line 250
    :goto_17
    return-void

    .line 241
    :catch_18
    move-exception v0

    .line 245
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "InviteContactActivity"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 246
    const-string v1, "InviteContactActivity"

    const-string v2, "Cannot show dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->finish()V

    goto :goto_17
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 265
    const/4 v4, 0x1

    if-ne p1, v4, :cond_36

    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, success:Z
    const/4 v4, -0x1

    if-ne p2, v4, :cond_27

    .line 268
    const-string v4, "person_id"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mPersonId:Ljava/lang/String;

    .line 269
    iget-object v4, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mPersonId:Ljava/lang/String;

    if-eqz v4, :cond_27

    .line 271
    :try_start_13
    const-string v4, "person_proto"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 273
    .local v2, personProto:[B
    invoke-static {v2}, Lcom/google/wireless/tacotruck/proto/Data$Person;->parseFrom([B)Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    .line 274
    .local v1, person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mPersonName:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->showCirclePicker()V
    :try_end_26
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_13 .. :try_end_26} :catch_2d

    .line 276
    const/4 v3, 0x1

    .line 283
    .end local v1           #person:Lcom/google/wireless/tacotruck/proto/Data$Person;
    .end local v2           #personProto:[B
    :cond_27
    :goto_27
    if-nez v3, :cond_2c

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->finish()V

    .line 289
    .end local v3           #success:Z
    :cond_2c
    :goto_2c
    return-void

    .line 277
    .restart local v3       #success:Z
    :catch_2d
    move-exception v0

    .line 278
    .local v0, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, "InviteContactActivity"

    const-string v5, "Error parsing Person protobuffer"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 287
    .end local v0           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    .end local v3           #success:Z
    :cond_36
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_2c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/phone/EsProfileGatewayActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 140
    :goto_9
    return-void

    .line 130
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 132
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_18

    .line 133
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->finish()V

    goto :goto_9

    .line 137
    :cond_18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "data_uri"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_9
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
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
    const/4 v5, 0x0

    .line 147
    const-string v0, "data_uri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 148
    .local v7, contactUri:Landroid/net/Uri;
    const-string v0, "entities"

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 149
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/InviteContactActivity;->ENTITY_PROJECTION:[Ljava/lang/String;

    const-string v4, "mimetype IN (\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/email_v2\')"

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 10
    .parameter
    .parameter "cursor"
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
    const/4 v6, 0x1

    .line 157
    if-nez p2, :cond_7

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->finish()V

    .line 216
    :cond_6
    :goto_6
    return-void

    .line 162
    :cond_7
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mRedirected:Z

    if-nez v5, :cond_6

    .line 166
    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mRedirected:Z

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v2, emails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    :goto_12
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 170
    const/4 v5, 0x0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, personName:Ljava/lang/String;
    if-eqz v4, :cond_21

    .line 172
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mPersonName:Ljava/lang/String;

    .line 175
    :cond_21
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, mimetype:Ljava/lang/String;
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 177
    const/4 v5, 0x2

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, email:Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    :cond_38
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 183
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 188
    .end local v0           #email:Ljava/lang/String;
    .end local v3           #mimetype:Ljava/lang/String;
    .end local v4           #personName:Ljava/lang/String;
    :cond_42
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 190
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 191
    .local v1, emailCount:I
    if-nez v1, :cond_56

    .line 192
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/apps/plus/phone/InviteContactActivity$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity$1;-><init>(Lcom/google/android/apps/plus/phone/InviteContactActivity;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 199
    :cond_56
    if-ne v1, v6, :cond_63

    .line 200
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/apps/plus/phone/InviteContactActivity$2;

    invoke-direct {v6, p0, v2}, Lcom/google/android/apps/plus/phone/InviteContactActivity$2;-><init>(Lcom/google/android/apps/plus/phone/InviteContactActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 208
    :cond_63
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/apps/plus/phone/InviteContactActivity$3;

    invoke-direct {v6, p0, v2}, Lcom/google/android/apps/plus/phone/InviteContactActivity$3;-><init>(Lcom/google/android/apps/plus/phone/InviteContactActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 223
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public showCirclePicker(Ljava/lang/String;)V
    .registers 4
    .parameter "email"

    .prologue
    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mPersonId:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->showCirclePicker()V

    .line 258
    return-void
.end method

.method protected showSearchActivity()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 229
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/InviteContactActivity;->mPersonName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v0, p0

    move v5, v3

    move v7, v3

    move v8, v6

    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getPeopleSearchActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZIZZZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/google/android/apps/plus/phone/InviteContactActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 232
    return-void
.end method
