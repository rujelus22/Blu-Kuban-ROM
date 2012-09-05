.class public Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "SnsAccountTwAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$SnsCallback;,
        Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$EnableLoginButtonTask;,
        Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$StopLoginTask;
    }
.end annotation


# instance fields
.field mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mAppID:I

.field private mButtonTimer:Ljava/util/Timer;

.field private mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

.field private mCheckboxShowPassword:Landroid/widget/CheckBox;

.field private mEditTextLogin:Landroid/widget/AutoCompleteTextView;

.field private mEditTextPassword:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mLoginButton:Landroid/widget/Button;

.field private mPassword:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReqConnection:Landroid/content/ServiceConnection;

.field private mRequester:Lcom/sec/android/app/sns/ISnsRequester;

.field private mService:Lcom/sec/android/app/sns/ISnsService;

.field private mSvcConnection:Landroid/content/ServiceConnection;

.field private mTextViewId:Landroid/widget/TextView;

.field private mTimer:Ljava/util/Timer;

.field private mUserName:Ljava/lang/String;

.field private mbViaAccountAndSync:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 101
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppID:I

    .line 105
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 119
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mPassword:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mbViaAccountAndSync:Z

    .line 131
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    .line 135
    new-instance v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$1;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 191
    new-instance v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$3;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 208
    new-instance v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$4;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    .line 747
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mbViaAccountAndSync:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->showSoftkeypadAtWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppID:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppID:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequesterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private initMainThreadHandler()V
    .registers 2

    .prologue
    .line 163
    new-instance v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$2;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    .line 189
    return-void
.end method

.method private showSoftkeypadAtWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 721
    const-string v1, "SnsAccountTw"

    const-string v2, "show input keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 723
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 724
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 727
    :cond_1d
    :goto_1d
    return-void

    .line 725
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1d
.end method


# virtual methods
.method public addUsernameList()V
    .registers 5

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getUsernamesBySpFromDB()Ljava/util/ArrayList;

    move-result-object v1

    .line 635
    .local v1, usernameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_17

    .line 636
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 638
    .local v2, usernames:[Ljava/lang/Object;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030004

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 640
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 642
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    .end local v2           #usernames:[Ljava/lang/Object;
    :cond_17
    return-void
.end method

.method public getUsernamesBySpFromDB()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 652
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 654
    .local v8, usernameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "username"

    aput-object v3, v2, v9

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "time DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 658
    .local v6, c:Landroid/database/Cursor;
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 659
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 660
    .local v7, username:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 662
    .end local v7           #username:Ljava/lang/String;
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 663
    return-object v8
.end method

.method public insertUsernameToDB(Ljava/lang/String;)V
    .registers 13
    .parameter "username"

    .prologue
    .line 675
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "username = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 683
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_62

    .line 685
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 686
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 687
    .local v9, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 688
    .local v8, curTime:Ljava/lang/Long;
    const-string v0, "time"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 690
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 717
    :goto_5e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 718
    return-void

    .line 695
    .end local v8           #curTime:Ljava/lang/Long;
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "time ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 699
    .local v7, c2:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_9f

    .line 700
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 707
    :cond_9f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 709
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 710
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v0, "username"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 712
    .restart local v8       #curTime:Ljava/lang/Long;
    const-string v0, "time"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 714
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccounttw/db/SnsAccountTwDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5e
.end method

.method public loginFail(IILjava/lang/String;)V
    .registers 13
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "reason"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 541
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-eqz v6, :cond_33

    .line 542
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 543
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 545
    packed-switch p1, :pswitch_data_88

    .line 579
    :pswitch_13
    const-string v6, "Network unreachable"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 580
    new-instance v2, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x5

    invoke-direct {v2, v6, v7}, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 582
    .local v2, networkFail:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 590
    .end local v2           #networkFail:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    :goto_28
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 591
    .local v1, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    .end local v1           #msg:Landroid/os/Message;
    :cond_33
    return-void

    .line 549
    :pswitch_34
    packed-switch p2, :pswitch_data_98

    .line 561
    new-instance v4, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 563
    .local v4, wrongEmailOrPwd:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 551
    .end local v4           #wrongEmailOrPwd:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    :pswitch_45
    new-instance v3, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v6, v7}, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 553
    .local v3, wrongEamil:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 556
    .end local v3           #wrongEamil:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    :pswitch_52
    new-instance v5, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6, v8}, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 558
    .local v5, wrongPwd:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 569
    .end local v5           #wrongPwd:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    :pswitch_5f
    new-instance v3, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v6, v7}, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 571
    .restart local v3       #wrongEamil:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 574
    .end local v3           #wrongEamil:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    :pswitch_6c
    new-instance v5, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6, v8}, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 576
    .restart local v5       #wrongPwd:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 584
    .end local v5           #wrongPwd:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    :cond_79
    new-instance v0, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 586
    .local v0, another:Lcom/sec/android/app/snsaccounttw/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 545
    nop

    :pswitch_data_88
    .packed-switch 0xc27
        :pswitch_34
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_5f
        :pswitch_6c
    .end packed-switch

    .line 549
    :pswitch_data_98
    .packed-switch 0x7987
        :pswitch_45
        :pswitch_52
    .end packed-switch
.end method

.method public loginSuccess()V
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 490
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 491
    .local v4, options:Landroid/os/Bundle;
    const-string v0, "username"

    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/sec/android/app/snsaccounttw/util/SnsAccountTwUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 494
    const-string v0, "SnsAccountTw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnsAccountTwAuthenticatorActivity : addAccount() :  mUserName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_35
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_69

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.snsaccounttwitter.account_type"

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 509
    :goto_4a
    new-instance v8, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;

    const-string v1, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .local v8, account:Landroid/accounts/Account;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 512
    .local v9, extra:Landroid/os/Bundle;
    const-string v0, "com.sec.android.app.provider.sns"

    invoke-static {v8, v0, v9}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->returnLoginSuccessResult()V

    .line 538
    .end local v4           #options:Landroid/os/Bundle;
    :goto_60
    return-void

    .line 498
    .end local v8           #account:Landroid/accounts/Account;
    .end local v9           #extra:Landroid/os/Bundle;
    .restart local v4       #options:Landroid/os/Bundle;
    :cond_61
    const-string v0, "SnsAccountTw"

    const-string v1, "SnsAccountTwAuthenticatorActivity : addAccount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 505
    :cond_69
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.snsaccounttwitter.account_type"

    iget-object v6, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_4a

    .line 519
    .end local v4           #options:Landroid/os/Bundle;
    :cond_7a
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_b2

    .line 520
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v10, v0

    check-cast v10, Landroid/app/NotificationManager;

    .line 526
    .local v10, notiMgr:Landroid/app/NotificationManager;
    :goto_8d
    const/4 v0, 0x2

    invoke-virtual {v10, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 528
    new-instance v8, Landroid/accounts/Account;

    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mUserName:Ljava/lang/String;

    const-string v1, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-direct {v8, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    .restart local v8       #account:Landroid/accounts/Account;
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 531
    .restart local v9       #extra:Landroid/os/Bundle;
    const-string v0, "com.sec.android.app.provider.sns"

    invoke-static {v8, v0, v9}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->finish()V

    goto :goto_60

    .line 523
    .end local v8           #account:Landroid/accounts/Account;
    .end local v9           #extra:Landroid/os/Bundle;
    .end local v10           #notiMgr:Landroid/app/NotificationManager;
    :cond_b2
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v10, v0

    check-cast v10, Landroid/app/NotificationManager;

    .restart local v10       #notiMgr:Landroid/app/NotificationManager;
    goto :goto_8d
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 616
    if-nez p1, :cond_6

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->finish()V

    .line 623
    :cond_5
    :goto_5
    return-void

    .line 618
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 619
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 621
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->finish()V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f060001

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 236
    iput-object p0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 238
    invoke-direct {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->initMainThreadHandler()V

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 244
    new-instance v0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$SnsCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$SnsCallback;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 250
    :try_start_34
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SNS_DISCLAIMER_AGREE"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_34 .. :try_end_3d} :catch_f0

    move-result v0

    .line 258
    :goto_3e
    if-nez v0, :cond_4d

    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    const-string v2, "com.sec.android.app.snsdisclaimer.feedsandupdatetw"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 265
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 266
    const-string v0, "ViaAccountAndSync"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mbViaAccountAndSync:Z

    .line 269
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->setContentView(I)V

    .line 271
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->setTitle(I)V

    .line 273
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTextViewId:Landroid/widget/TextView;

    .line 274
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    .line 275
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    .line 276
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    .line 277
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->addUsernameList()V

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mTextViewId:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 284
    const-string v0, "RetryLogin"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.snsaccounttwitter.account_type"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 289
    array-length v2, v0

    if-lez v2, :cond_db

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 296
    :cond_db
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$5;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$6;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    return-void

    .line 252
    :catch_f0
    move-exception v0

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SNS_DISCLAIMER_AGREE"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    goto/16 :goto_3e
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v2, 0x7f060009

    const v5, 0x7f060007

    const v1, 0x1080027

    .line 402
    packed-switch p1, :pswitch_data_102

    .line 485
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 404
    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$7;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 417
    :pswitch_34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$8;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 430
    :pswitch_5a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$9;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 443
    :pswitch_80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$10;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 456
    :pswitch_a7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "twitter"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$11;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 471
    :pswitch_da
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity$12;-><init>(Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 402
    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_e
        :pswitch_34
        :pswitch_5a
        :pswitch_80
        :pswitch_a7
        :pswitch_da
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 597
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_9

    .line 598
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 601
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-eqz v1, :cond_14

    .line 602
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v2, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_25

    .line 607
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 608
    iget-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 610
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 611
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    .line 612
    return-void

    .line 603
    :catch_25
    move-exception v0

    .line 604
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 13
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_64

    .line 398
    :goto_3
    return-void

    :pswitch_4
    move-object v0, p2

    .line 371
    check-cast v0, Landroid/app/AlertDialog;

    .line 372
    .local v0, alert:Landroid/app/AlertDialog;
    const v6, 0x7f060008

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v0           #alert:Landroid/app/AlertDialog;
    :pswitch_12
    move-object v1, p2

    .line 375
    check-cast v1, Landroid/app/AlertDialog;

    .line 376
    .local v1, alert1:Landroid/app/AlertDialog;
    const v6, 0x7f06000a

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v1           #alert1:Landroid/app/AlertDialog;
    :pswitch_20
    move-object v2, p2

    .line 379
    check-cast v2, Landroid/app/AlertDialog;

    .line 380
    .local v2, alert2:Landroid/app/AlertDialog;
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v2           #alert2:Landroid/app/AlertDialog;
    :pswitch_2e
    move-object v3, p2

    .line 383
    check-cast v3, Landroid/app/AlertDialog;

    .line 384
    .local v3, alert3:Landroid/app/AlertDialog;
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v3           #alert3:Landroid/app/AlertDialog;
    :pswitch_3c
    move-object v4, p2

    .line 387
    check-cast v4, Landroid/app/AlertDialog;

    .line 388
    .local v4, alert4:Landroid/app/AlertDialog;
    const v6, 0x7f060010

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "twitter"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v4           #alert4:Landroid/app/AlertDialog;
    :pswitch_56
    move-object v5, p2

    .line 392
    check-cast v5, Landroid/app/AlertDialog;

    .line 393
    .local v5, alert5:Landroid/app/AlertDialog;
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 369
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_4
        :pswitch_12
        :pswitch_20
        :pswitch_2e
        :pswitch_3c
        :pswitch_56
    .end packed-switch
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onResume()V

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 230
    :goto_12
    return-void

    .line 227
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_12
.end method

.method returnLoginSuccessResult()V
    .registers 3

    .prologue
    .line 628
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 629
    .local v0, i:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/snsaccounttw/activity/SnsAccountTwAuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 630
    return-void
.end method
