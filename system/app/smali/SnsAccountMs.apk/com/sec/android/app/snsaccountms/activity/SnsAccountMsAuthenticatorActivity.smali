.class public Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "SnsAccountMsAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$SnsCallback;,
        Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$EnableLoginButtonTask;,
        Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$StopLoginTask;
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

    .line 83
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppID:I

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 111
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mPassword:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mbViaAccountAndSync:Z

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    .line 135
    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    .line 137
    new-instance v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$1;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 193
    new-instance v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$3;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 210
    new-instance v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$4;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    .line 782
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mbViaAccountAndSync:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->showSoftkeypadAtWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppID:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppID:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequesterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private initMainThreadHandler()V
    .registers 2

    .prologue
    .line 165
    new-instance v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$2;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method private showSoftkeypadAtWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 756
    const-string v1, "SnsAccountMs"

    const-string v2, "show input keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 758
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 759
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 762
    :cond_1d
    :goto_1d
    return-void

    .line 760
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1d
.end method


# virtual methods
.method public addUsernameList()V
    .registers 5

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getUsernamesBySpFromDB()Ljava/util/ArrayList;

    move-result-object v1

    .line 670
    .local v1, usernameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_17

    .line 671
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 673
    .local v2, usernames:[Ljava/lang/Object;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030004

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 675
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    iget-object v3, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 677
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

    .line 687
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v8, usernameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "username"

    aput-object v3, v2, v9

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "time DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 693
    .local v6, c:Landroid/database/Cursor;
    :goto_1c
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 694
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 695
    .local v7, username:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 697
    .end local v7           #username:Ljava/lang/String;
    :cond_2a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 698
    return-object v8
.end method

.method public insertUsernameToDB(Ljava/lang/String;)V
    .registers 13
    .parameter "username"

    .prologue
    .line 710
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "username = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 718
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_62

    .line 720
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 721
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v9, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 723
    .local v8, curTime:Ljava/lang/Long;
    const-string v0, "time"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 752
    :goto_5e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 753
    return-void

    .line 730
    .end local v8           #curTime:Ljava/lang/Long;
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 734
    .local v7, c2:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_9f

    .line 735
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 736
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 742
    :cond_9f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 744
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 745
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v0, "username"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 747
    .restart local v8       #curTime:Ljava/lang/Long;
    const-string v0, "time"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 749
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountms/db/SnsAccountMsDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 576
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-eqz v6, :cond_33

    .line 577
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 578
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 580
    packed-switch p1, :pswitch_data_88

    .line 614
    :pswitch_13
    const-string v6, "Network unreachable"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 615
    new-instance v2, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x5

    invoke-direct {v2, v6, v7}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 617
    .local v2, networkFail:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 625
    .end local v2           #networkFail:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    :goto_28
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 626
    .local v1, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 628
    .end local v1           #msg:Landroid/os/Message;
    :cond_33
    return-void

    .line 584
    :pswitch_34
    packed-switch p2, :pswitch_data_98

    .line 596
    new-instance v4, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 598
    .local v4, wrongEmailOrPwd:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 586
    .end local v4           #wrongEmailOrPwd:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    :pswitch_45
    new-instance v3, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v6, v7}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 588
    .local v3, wrongEamil:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 591
    .end local v3           #wrongEamil:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    :pswitch_52
    new-instance v5, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6, v8}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 593
    .local v5, wrongPwd:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 604
    .end local v5           #wrongPwd:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    :pswitch_5f
    new-instance v3, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v6, v7}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 606
    .restart local v3       #wrongEamil:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 609
    .end local v3           #wrongEamil:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    :pswitch_6c
    new-instance v5, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6, v8}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 611
    .restart local v5       #wrongPwd:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 619
    .end local v5           #wrongPwd:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    :cond_79
    new-instance v0, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 621
    .local v0, another:Lcom/sec/android/app/snsaccountms/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 580
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

    .line 584
    :pswitch_data_98
    .packed-switch 0x7987
        :pswitch_45
        :pswitch_52
    .end packed-switch
.end method

.method public loginSuccess()V
    .registers 19

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 492
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v5, options:Landroid/os/Bundle;
    const-string v1, "username"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/sec/android/app/snsaccountms/util/SnsAccountMsUtil;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 496
    const-string v1, "SnsAccountMs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnsAccountMsAuthenticatorActivity : addAccount() :  mUserName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :goto_3a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_73

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 511
    :goto_52
    new-instance v12, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-direct {v12, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    .local v12, account:Landroid/accounts/Account;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 515
    .local v15, extra:Landroid/os/Bundle;
    const-string v1, "com.sec.android.app.provider.sns"

    invoke-static {v12, v1, v15}, Landroid/content/ContentResolver;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->returnLoginSuccessResult()V

    .line 573
    .end local v5           #options:Landroid/os/Bundle;
    :goto_6a
    return-void

    .line 500
    .end local v12           #account:Landroid/accounts/Account;
    .end local v15           #extra:Landroid/os/Bundle;
    .restart local v5       #options:Landroid/os/Bundle;
    :cond_6b
    const-string v1, "SnsAccountMs"

    const-string v2, "SnsAccountMsAuthenticatorActivity : addAccount()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 507
    :cond_73
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_52

    .line 522
    .end local v5           #options:Landroid/os/Bundle;
    :cond_89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_13b

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    move-object/from16 v16, v1

    check-cast v16, Landroid/app/NotificationManager;

    .line 529
    .local v16, notiMgr:Landroid/app/NotificationManager;
    :goto_9f
    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 531
    new-instance v12, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-direct {v12, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .restart local v12       #account:Landroid/accounts/Account;
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 535
    .restart local v15       #extra:Landroid/os/Bundle;
    const-string v1, "com.sec.android.app.provider.sns"

    invoke-static {v12, v1, v15}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 537
    const/4 v13, 0x0

    .line 538
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 542
    .local v7, settingsUri:Landroid/net/Uri;
    :try_start_bc
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    const-string v3, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v1, 0x1

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ungrouped_visible"

    aput-object v2, v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 552
    if-eqz v13, :cond_f3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_123

    .line 553
    :cond_f3
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 554
    .local v17, values:Landroid/content/ContentValues;
    const-string v1, "account_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mUserName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v1, "account_type"

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "ungrouped_visible"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_123
    .catchall {:try_start_bc .. :try_end_123} :catchall_170
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_123} :catch_14d

    .line 565
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_123
    if-eqz v13, :cond_128

    .line 566
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    goto/16 :goto_6a

    .line 526
    .end local v7           #settingsUri:Landroid/net/Uri;
    .end local v12           #account:Landroid/accounts/Account;
    .end local v13           #cursor:Landroid/database/Cursor;
    .end local v15           #extra:Landroid/os/Bundle;
    .end local v16           #notiMgr:Landroid/app/NotificationManager;
    :cond_13b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    move-object/from16 v16, v1

    check-cast v16, Landroid/app/NotificationManager;

    .restart local v16       #notiMgr:Landroid/app/NotificationManager;
    goto/16 :goto_9f

    .line 560
    .restart local v7       #settingsUri:Landroid/net/Uri;
    .restart local v12       #account:Landroid/accounts/Account;
    .restart local v13       #cursor:Landroid/database/Cursor;
    .restart local v15       #extra:Landroid/os/Bundle;
    :catch_14d
    move-exception v14

    .line 561
    .local v14, e:Ljava/lang/Exception;
    :try_start_14e
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 562
    const-string v1, "SnsAccountMs"

    const-string v2, "####### AccountManagerCallback : run FAILED !!!!! #######"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_158
    .catchall {:try_start_14e .. :try_end_158} :catchall_170

    .line 565
    if-eqz v13, :cond_15d

    .line 566
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_15d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    goto/16 :goto_6a

    .line 565
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_170
    move-exception v1

    if-eqz v13, :cond_176

    .line 566
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 568
    :cond_176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    throw v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 651
    if-nez p1, :cond_6

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    .line 658
    :cond_5
    :goto_5
    return-void

    .line 653
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 654
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->finish()V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f060001

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 236
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 238
    iput-object p0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 240
    invoke-direct {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->initMainThreadHandler()V

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 246
    new-instance v0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$SnsCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$SnsCallback;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 252
    :try_start_34
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SNS_DISCLAIMER_AGREE"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_34 .. :try_end_3d} :catch_f0

    move-result v0

    .line 260
    :goto_3e
    if-nez v0, :cond_4d

    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    const-string v2, "com.sec.android.app.snsdisclaimer.feedsandupdatems"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 268
    const-string v0, "ViaAccountAndSync"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mbViaAccountAndSync:Z

    .line 271
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->setContentView(I)V

    .line 273
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->setTitle(I)V

    .line 275
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTextViewId:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    .line 277
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    .line 278
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    .line 279
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->addUsernameList()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mTextViewId:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 286
    const-string v0, "RetryLogin"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.snsaccountmyspace.account_type"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 291
    array-length v2, v0

    if-lez v2, :cond_db

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 298
    :cond_db
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$5;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$6;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    return-void

    .line 254
    :catch_f0
    move-exception v0

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 404
    packed-switch p1, :pswitch_data_102

    .line 487
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 406
    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$7;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 419
    :pswitch_34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$8;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 432
    :pswitch_5a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$9;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 445
    :pswitch_80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$10;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 458
    :pswitch_a7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "myspace"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$11;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 473
    :pswitch_da
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity$12;-><init>(Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 404
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
    .line 632
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_9

    .line 633
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 636
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-eqz v1, :cond_14

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v2, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_25

    .line 642
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 643
    iget-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 645
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 646
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    .line 647
    return-void

    .line 638
    :catch_25
    move-exception v0

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 13
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 371
    packed-switch p1, :pswitch_data_64

    .line 400
    :goto_3
    return-void

    :pswitch_4
    move-object v0, p2

    .line 373
    check-cast v0, Landroid/app/AlertDialog;

    .line 374
    .local v0, alert:Landroid/app/AlertDialog;
    const v6, 0x7f060008

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v0           #alert:Landroid/app/AlertDialog;
    :pswitch_12
    move-object v1, p2

    .line 377
    check-cast v1, Landroid/app/AlertDialog;

    .line 378
    .local v1, alert1:Landroid/app/AlertDialog;
    const v6, 0x7f06000a

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v1           #alert1:Landroid/app/AlertDialog;
    :pswitch_20
    move-object v2, p2

    .line 381
    check-cast v2, Landroid/app/AlertDialog;

    .line 382
    .local v2, alert2:Landroid/app/AlertDialog;
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v2           #alert2:Landroid/app/AlertDialog;
    :pswitch_2e
    move-object v3, p2

    .line 385
    check-cast v3, Landroid/app/AlertDialog;

    .line 386
    .local v3, alert3:Landroid/app/AlertDialog;
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v3           #alert3:Landroid/app/AlertDialog;
    :pswitch_3c
    move-object v4, p2

    .line 389
    check-cast v4, Landroid/app/AlertDialog;

    .line 390
    .local v4, alert4:Landroid/app/AlertDialog;
    const v6, 0x7f060010

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "myspace"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v4           #alert4:Landroid/app/AlertDialog;
    :pswitch_56
    move-object v5, p2

    .line 394
    check-cast v5, Landroid/app/AlertDialog;

    .line 395
    .local v5, alert5:Landroid/app/AlertDialog;
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 371
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
    .line 223
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onResume()V

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 232
    :goto_12
    return-void

    .line 229
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_12
.end method

.method returnLoginSuccessResult()V
    .registers 3

    .prologue
    .line 663
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 664
    .local v0, i:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/snsaccountms/activity/SnsAccountMsAuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 665
    return-void
.end method
