.class public Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;
.super Landroid/app/Activity;
.source "MPrintLaunchActivity.java"


# static fields
.field private static final REQUEST_GET_IMAGE:I = 0x64

.field private static final REQUEST_PREVIEW_MODE:I = 0x65


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mShareMode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mAppContext:Landroid/content/Context;

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mFilePath:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mShareMode:Ljava/lang/Boolean;

    return-void
.end method

.method private getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 109
    const/4 v7, 0x0

    .line 111
    .local v7, filepath:Ljava/lang/String;
    if-eqz p1, :cond_2c

    .line 112
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v2, v8

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_24

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 118
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_23
    return-object v7

    .line 122
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_24
    const-string v0, "MobilePrint"

    const-string v1, "MPrintLaunchActivity : getFilePath - cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 126
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2c
    const-string v0, "MobilePrint"

    const-string v1, "MPrintLaunchActivity : getFilePath - uri is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private getIntentData(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, filepath:Ljava/lang/String;
    if-eqz p1, :cond_29

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mShareMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 92
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, extraBundle:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2           #uri:Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 94
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .end local v0           #extraBundle:Landroid/os/Bundle;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1d
    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mFilePath:Ljava/lang/String;

    .line 106
    return-void

    .line 97
    .restart local v2       #uri:Landroid/net/Uri;
    :cond_20
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 98
    invoke-direct {p0, v2}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    .line 102
    .end local v2           #uri:Landroid/net/Uri;
    :cond_29
    const-string v3, "MobilePrint"

    const-string v4, "MPrintLaunchActivity : getIntentData - intent is null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method private gotoGallery()V
    .registers 3

    .prologue
    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mFilePath:Ljava/lang/String;

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 137
    return-void
.end method

.method private gotoMainActivity()V
    .registers 6

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, filename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 142
    .local v2, token:[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mFilePath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 143
    if-eqz v2, :cond_14

    array-length v3, v2

    if-lez v3, :cond_14

    .line 144
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 147
    :cond_14
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mAppContext:Landroid/content/Context;

    const-class v4, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "FilePath"

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v3, "Title"

    const-string v4, "gallery"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v3, "Subject"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const/16 v3, 0x65

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->finish()V

    .line 154
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 66
    const/16 v0, 0x64

    if-ne p1, v0, :cond_11

    .line 67
    if-eqz p3, :cond_d

    .line 68
    invoke-direct {p0, p3}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->getIntentData(Landroid/content/Intent;)V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->gotoMainActivity()V

    .line 83
    :cond_c
    :goto_c
    return-void

    .line 72
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->finish()V

    goto :goto_c

    .line 75
    :cond_11
    const/16 v0, 0x65

    if-ne p1, v0, :cond_c

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mShareMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v0, -0x1

    if-ne p2, v0, :cond_25

    .line 77
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->finish()V

    goto :goto_c

    .line 80
    :cond_25
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->gotoGallery()V

    goto :goto_c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iput-object p0, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mAppContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_23

    .line 54
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->mShareMode:Ljava/lang/Boolean;

    .line 55
    invoke-direct {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->getIntentData(Landroid/content/Intent;)V

    .line 56
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->gotoMainActivity()V

    .line 61
    :goto_22
    return-void

    .line 59
    :cond_23
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintLaunchActivity;->gotoGallery()V

    goto :goto_22
.end method
