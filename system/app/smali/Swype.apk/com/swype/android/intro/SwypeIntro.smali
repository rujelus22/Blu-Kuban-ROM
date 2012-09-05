.class public Lcom/swype/android/intro/SwypeIntro;
.super Landroid/app/Activity;
.source "SwypeIntro.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT_VIDEO_NAME:Ljava/lang/String; = "SwypeIntroVideo.mp4"

.field private static final DIALOG_ID_MISSING_VIDEO:I

.field static final VIDEO_LINK_PREFIX_IDS:[I


# instance fields
.field private retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/swype/android/intro/SwypeIntro;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/swype/android/intro/SwypeIntro;->$assertionsDisabled:Z

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/swype/android/intro/SwypeIntro;->VIDEO_LINK_PREFIX_IDS:[I

    return-void

    .line 35
    :cond_14
    const/4 v0, 0x0

    goto :goto_9

    .line 46
    :array_16
    .array-data 0x4
        0x69t 0x0t 0x7t 0x7ft
        0x6at 0x0t 0x7t 0x7ft
        0x6bt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    .line 217
    return-void
.end method


# virtual methods
.method protected changeIME()V
    .registers 2

    .prologue
    .line 210
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 211
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 212
    return-void
.end method

.method protected launchVideo()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 168
    const-string v0, "SwypeIntroVideo.mp4"

    .line 170
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 171
    if-ltz v1, :cond_f

    .line 172
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_f
    const/4 v1, 0x0

    .line 176
    sget-object v2, Lcom/swype/android/intro/SwypeIntro;->VIDEO_LINK_PREFIX_IDS:[I

    array-length v3, v2

    move v4, v7

    :goto_14
    if-ge v4, v3, :cond_99

    aget v5, v2, v4

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/swype/android/intro/SwypeIntro;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 178
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4b

    move-object v0, v5

    .line 185
    :goto_39
    if-eqz v0, :cond_6c

    .line 187
    :try_start_3b
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/swype/android/intro/TutorialVideo;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v2, "com.swype.android.inputmethod.TutorialVideo/VIDEO_PATH"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v1}, Lcom/swype/android/intro/SwypeIntro;->startActivity(Landroid/content/Intent;)V
    :try_end_4a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3b .. :try_end_4a} :catch_4e

    .line 202
    :goto_4a
    return-void

    .line 176
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 190
    :catch_4e
    move-exception v0

    .line 191
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception starting TutorialVideo from SwypeIntro: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 193
    :cond_6c
    invoke-virtual {p0}, Lcom/swype/android/intro/SwypeIntro;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isNetworkUp()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 195
    sget-boolean v0, Lcom/swype/android/intro/SwypeIntro;->$assertionsDisabled:Z

    if-nez v0, :cond_86

    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    if-eqz v0, :cond_86

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 196
    :cond_86
    new-instance v0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    invoke-direct {v0, p0}, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;-><init>(Lcom/swype/android/intro/SwypeIntro;)V

    iput-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    .line 197
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    new-array v1, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_4a

    .line 200
    :cond_95
    invoke-virtual {p0, v7}, Lcom/swype/android/intro/SwypeIntro;->showDialog(I)V

    goto :goto_4a

    :cond_99
    move-object v0, v1

    goto :goto_39
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->requestWindowFeature(I)Z

    .line 57
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->setContentView(I)V

    .line 59
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/swype/android/intro/SwypeIntro$1;

    invoke-direct {v1, p0}, Lcom/swype/android/intro/SwypeIntro$1;-><init>(Lcom/swype/android/intro/SwypeIntro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f0d0007

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/swype/android/intro/SwypeIntro$2;

    invoke-direct {v1, p0}, Lcom/swype/android/intro/SwypeIntro$2;-><init>(Lcom/swype/android/intro/SwypeIntro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f0d0006

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/swype/android/intro/SwypeIntro$3;

    invoke-direct {v1, p0}, Lcom/swype/android/intro/SwypeIntro$3;-><init>(Lcom/swype/android/intro/SwypeIntro;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lcom/swype/android/intro/SwypeIntro;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    iput-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    .line 77
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    if-eqz v0, :cond_4b

    .line 78
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    invoke-virtual {v0, p0}, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->attach(Lcom/swype/android/intro/SwypeIntro;)V

    .line 80
    :cond_4b
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 102
    if-nez p1, :cond_1b

    .line 103
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 108
    :goto_1a
    return-object v0

    :cond_1b
    move-object v0, v2

    goto :goto_1a
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    if-eqz v0, :cond_f

    .line 122
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    invoke-virtual {v0}, Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;->detach()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    .line 125
    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    invoke-virtual {p0}, Lcom/swype/android/intro/SwypeIntro;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v1, "com.swype.android.inputmethod/.SwypeInputMethod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 91
    const/16 v0, 0x8

    .line 95
    :goto_18
    const v1, 0x7f0d0006

    invoke-virtual {p0, v1}, Lcom/swype/android/intro/SwypeIntro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const v0, 0x7f0d0005

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    if-nez v1, :cond_36

    const/4 v1, 0x1

    :goto_30
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    return-void

    :cond_34
    move v0, v2

    .line 93
    goto :goto_18

    :cond_36
    move v1, v2

    .line 97
    goto :goto_30
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    return-object v0
.end method

.method retrieveYouTubeIDTaskFinished(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 134
    const/4 v0, 0x0

    .line 137
    if-eqz p1, :cond_77

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/swype/android/intro/SwypeIntro;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const/4 v1, 0x1

    .line 143
    :goto_1d
    if-eqz v1, :cond_75

    .line 144
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    invoke-virtual {p0}, Lcom/swype/android/intro/SwypeIntro;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 147
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_73

    move-object v0, v4

    .line 152
    :goto_3b
    if-nez v0, :cond_4f

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const v2, 0x7f07006c

    invoke-virtual {p0, v2}, Lcom/swype/android/intro/SwypeIntro;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    :cond_4f
    :try_start_4f
    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->startActivity(Landroid/content/Intent;)V
    :try_end_52
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_52} :catch_55

    .line 164
    :goto_52
    iput-object v4, p0, Lcom/swype/android/intro/SwypeIntro;->retrieveYouTubeIDTask:Lcom/swype/android/intro/SwypeIntro$RetrieveYouTubeIDTask;

    .line 165
    return-void

    .line 159
    :catch_55
    move-exception v0

    .line 160
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception starting YouTube video from SwypeIntro: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    :cond_73
    move-object v0, v1

    goto :goto_3b

    :cond_75
    move-object v0, v4

    goto :goto_3b

    :cond_77
    move v1, v0

    move-object v0, v4

    goto :goto_1d
.end method

.method protected showHelp()V
    .registers 3

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/swype/android/settings/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/swype/android/intro/SwypeIntro;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method
