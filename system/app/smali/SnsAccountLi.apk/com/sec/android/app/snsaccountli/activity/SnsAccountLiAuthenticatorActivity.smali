.class public Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "SnsAccountLiAuthenticatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$SnsCallback;,
        Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$EnableLoginButtonTask;,
        Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$StopLoginTask;
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
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppID:I

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 111
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 121
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mPassword:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mbViaAccountAndSync:Z

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    .line 135
    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    .line 137
    new-instance v0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$1;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    .line 195
    new-instance v0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$3;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 212
    new-instance v0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$4;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    .line 783
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mbViaAccountAndSync:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/Button;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mButtonTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->showSoftkeypadAtWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppID:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppID:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequesterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private initMainThreadHandler()V
    .registers 2

    .prologue
    .line 167
    new-instance v0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$2;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method private showSoftkeypadAtWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 757
    const-string v1, "SnsAccountLi"

    const-string v2, "show input keyboard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 759
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 760
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 763
    :cond_1d
    :goto_1d
    return-void

    .line 761
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 762
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1d
.end method


# virtual methods
.method public addUsernameList()V
    .registers 5

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getUsernamesBySpFromDB()Ljava/util/ArrayList;

    move-result-object v1

    .line 669
    .local v1, usernameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_17

    .line 670
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 672
    .local v2, usernames:[Ljava/lang/Object;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f030004

    invoke-direct {v0, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 674
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<*>;"
    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 676
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

    .line 686
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v8, usernameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "username"

    aput-object v3, v2, v9

    const/4 v3, 0x0

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "time DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 692
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2f

    .line 693
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 694
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 695
    .local v7, username:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 697
    .end local v7           #username:Ljava/lang/String;
    :cond_2c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 699
    :cond_2f
    return-object v8
.end method

.method public insertUsernameToDB(Ljava/lang/String;)V
    .registers 13
    .parameter "username"

    .prologue
    .line 711
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "username = ?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 719
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_62

    .line 721
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 722
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 723
    .local v9, cv:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 724
    .local v8, curTime:Ljava/lang/Long;
    const-string v0, "time"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 726
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 753
    :goto_5e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 754
    return-void

    .line 731
    .end local v8           #curTime:Ljava/lang/Long;
    .end local v9           #cv:Landroid/content/ContentValues;
    :cond_62
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 735
    .local v7, c2:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_9f

    .line 736
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 737
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 743
    :cond_9f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 745
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 746
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v0, "username"

    invoke-virtual {v9, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 748
    .restart local v8       #curTime:Ljava/lang/Long;
    const-string v0, "time"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 750
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/snsaccountli/db/SnsAccountLiDB$UsernameList;->CONTENT_URI:Landroid/net/Uri;

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

    .line 575
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-eqz v6, :cond_33

    .line 576
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 577
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v6}, Ljava/util/Timer;->cancel()V

    .line 579
    packed-switch p1, :pswitch_data_88

    .line 613
    :pswitch_13
    const-string v6, "Network unreachable"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 614
    new-instance v2, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x5

    invoke-direct {v2, v6, v7}, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 616
    .local v2, networkFail:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 624
    .end local v2           #networkFail:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    :goto_28
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 625
    .local v1, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    .end local v1           #msg:Landroid/os/Message;
    :cond_33
    return-void

    .line 583
    :pswitch_34
    packed-switch p2, :pswitch_data_98

    .line 595
    new-instance v4, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x3

    invoke-direct {v4, v6, v7}, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 597
    .local v4, wrongEmailOrPwd:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 585
    .end local v4           #wrongEmailOrPwd:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    :pswitch_45
    new-instance v3, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v6, v7}, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 587
    .local v3, wrongEamil:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 590
    .end local v3           #wrongEamil:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    :pswitch_52
    new-instance v5, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6, v8}, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 592
    .local v5, wrongPwd:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 603
    .end local v5           #wrongPwd:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    :pswitch_5f
    new-instance v3, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, v6, v7}, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 605
    .restart local v3       #wrongEamil:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 608
    .end local v3           #wrongEamil:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    :pswitch_6c
    new-instance v5, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v5, v6, v8}, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 610
    .restart local v5       #wrongPwd:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 618
    .end local v5           #wrongPwd:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    :cond_79
    new-instance v0, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;-><init>(Landroid/content/Context;I)V

    .line 620
    .local v0, another:Lcom/sec/android/app/snsaccountli/activity/UIThreadRunnable;
    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 579
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

    .line 583
    :pswitch_data_98
    .packed-switch 0x7987
        :pswitch_45
        :pswitch_52
    .end packed-switch
.end method

.method public loginSuccess()V
    .registers 16

    .prologue
    const/4 v2, 0x0

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 494
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v4, options:Landroid/os/Bundle;
    const-string v0, "username"

    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {}, Lcom/sec/android/app/snsaccountli/util/SnsAccountLiUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 498
    const-string v0, "SnsAccountLi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SnsAccountLiAuthenticatorActivity : addAccount() :  mUserName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_35
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_56

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.snsaccountlinkedin.account_type"

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 517
    :goto_4a
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->returnLoginSuccessResult()V

    .line 572
    .end local v4           #options:Landroid/os/Bundle;
    :goto_4d
    return-void

    .line 502
    .restart local v4       #options:Landroid/os/Bundle;
    :cond_4e
    const-string v0, "SnsAccountLi"

    const-string v1, "SnsAccountLiAuthenticatorActivity : addAccount()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 508
    :cond_56
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.sec.android.app.snsaccountlinkedin.account_type"

    iget-object v6, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    move-object v3, v2

    move-object v5, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_4a

    .line 522
    .end local v4           #options:Landroid/os/Bundle;
    :cond_67
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_f0

    .line 523
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v13, v0

    check-cast v13, Landroid/app/NotificationManager;

    .line 529
    .local v13, notiMgr:Landroid/app/NotificationManager;
    :goto_7a
    const/16 v0, 0x8

    invoke-virtual {v13, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 536
    const/4 v11, 0x0

    .line 537
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 541
    .local v6, settingsUri:Landroid/net/Uri;
    :try_start_81
    sget-object v0, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.sec.android.app.snsaccountlinkedin.account_type"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    .line 547
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "ungrouped_visible"

    aput-object v1, v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 551
    if-eqz v11, :cond_b6

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_dc

    .line 552
    :cond_b6
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 553
    .local v14, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mUserName:Ljava/lang/String;

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v0, "account_type"

    const-string v1, "com.sec.android.app.snsaccountlinkedin.account_type"

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v0, "ungrouped_visible"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 556
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_dc
    .catchall {:try_start_81 .. :try_end_dc} :catchall_11e
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_dc} :catch_ff

    .line 564
    .end local v14           #values:Landroid/content/ContentValues;
    :cond_dc
    if-eqz v11, :cond_e1

    .line 565
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_e1
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    goto/16 :goto_4d

    .line 526
    .end local v6           #settingsUri:Landroid/net/Uri;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v13           #notiMgr:Landroid/app/NotificationManager;
    :cond_f0
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    move-object v13, v0

    check-cast v13, Landroid/app/NotificationManager;

    .restart local v13       #notiMgr:Landroid/app/NotificationManager;
    goto/16 :goto_7a

    .line 559
    .restart local v6       #settingsUri:Landroid/net/Uri;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catch_ff
    move-exception v12

    .line 560
    .local v12, e:Ljava/lang/Exception;
    :try_start_100
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    const-string v0, "SnsAccountLi"

    const-string v1, "####### AccountManagerCallback : run FAILED !!!!! #######"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_100 .. :try_end_10a} :catchall_11e

    .line 564
    if-eqz v11, :cond_10f

    .line 565
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_10f
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    goto/16 :goto_4d

    .line 564
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_11e
    move-exception v0

    if-eqz v11, :cond_124

    .line 565
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 567
    :cond_124
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 568
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 569
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 650
    if-nez p1, :cond_6

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    .line 657
    :cond_5
    :goto_5
    return-void

    .line 652
    :cond_6
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 653
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 655
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->finish()V

    goto :goto_5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const v4, 0x7f060001

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 238
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    iput-object p0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 242
    invoke-direct {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->initMainThreadHandler()V

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 248
    new-instance v0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$SnsCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$SnsCallback;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 254
    :try_start_34
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "SNS_DISCLAIMER_AGREE"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_34 .. :try_end_3d} :catch_f0

    move-result v0

    .line 262
    :goto_3e
    if-nez v0, :cond_4d

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 264
    const-string v2, "com.sec.android.app.snsdisclaimer.feedsandupdateli"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 270
    const-string v0, "ViaAccountAndSync"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mbViaAccountAndSync:Z

    .line 273
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->setContentView(I)V

    .line 275
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->setTitle(I)V

    .line 277
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTextViewId:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    .line 279
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    .line 280
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    .line 281
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->addUsernameList()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mTextViewId:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 288
    const-string v0, "RetryLogin"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.snsaccountlinkedin.account_type"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 293
    array-length v2, v0

    if-lez v2, :cond_db

    .line 294
    iget-object v2, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextLogin:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 300
    :cond_db
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$5;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$6;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    return-void

    .line 256
    :catch_f0
    move-exception v0

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 406
    packed-switch p1, :pswitch_data_102

    .line 489
    const/4 v0, 0x0

    :goto_d
    return-object v0

    .line 408
    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060008

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$7;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 421
    :pswitch_34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000a

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$8;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 434
    :pswitch_5a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$9;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_d

    .line 447
    :pswitch_80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$10;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 460
    :pswitch_a7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "linkedin"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$11;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 475
    :pswitch_da
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity$12;-><init>(Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_d

    .line 406
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
    .line 631
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_9

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 635
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-eqz v1, :cond_14

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v2, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_25

    .line 641
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 642
    iget-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 644
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mAppContext:Landroid/content/Context;

    .line 645
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onDestroy()V

    .line 646
    return-void

    .line 637
    :catch_25
    move-exception v0

    .line 638
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 13
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 373
    packed-switch p1, :pswitch_data_64

    .line 402
    :goto_3
    return-void

    :pswitch_4
    move-object v0, p2

    .line 375
    check-cast v0, Landroid/app/AlertDialog;

    .line 376
    .local v0, alert:Landroid/app/AlertDialog;
    const v6, 0x7f060008

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v0           #alert:Landroid/app/AlertDialog;
    :pswitch_12
    move-object v1, p2

    .line 379
    check-cast v1, Landroid/app/AlertDialog;

    .line 380
    .local v1, alert1:Landroid/app/AlertDialog;
    const v6, 0x7f06000a

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v1           #alert1:Landroid/app/AlertDialog;
    :pswitch_20
    move-object v2, p2

    .line 383
    check-cast v2, Landroid/app/AlertDialog;

    .line 384
    .local v2, alert2:Landroid/app/AlertDialog;
    const v6, 0x7f06000b

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v2           #alert2:Landroid/app/AlertDialog;
    :pswitch_2e
    move-object v3, p2

    .line 387
    check-cast v3, Landroid/app/AlertDialog;

    .line 388
    .local v3, alert3:Landroid/app/AlertDialog;
    const v6, 0x7f06000c

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v3           #alert3:Landroid/app/AlertDialog;
    :pswitch_3c
    move-object v4, p2

    .line 391
    check-cast v4, Landroid/app/AlertDialog;

    .line 392
    .local v4, alert4:Landroid/app/AlertDialog;
    const v6, 0x7f060010

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "linkedin"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v4           #alert4:Landroid/app/AlertDialog;
    :pswitch_56
    move-object v5, p2

    .line 396
    check-cast v5, Landroid/app/AlertDialog;

    .line 397
    .local v5, alert5:Landroid/app/AlertDialog;
    const v6, 0x7f06000d

    invoke-virtual {p0, v6}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 373
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
    .line 225
    invoke-super {p0}, Landroid/accounts/AccountAuthenticatorActivity;->onResume()V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mCheckboxShowPassword:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 234
    :goto_12
    return-void

    .line 231
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->mEditTextPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_12
.end method

.method returnLoginSuccessResult()V
    .registers 3

    .prologue
    .line 662
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 663
    .local v0, i:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/snsaccountli/activity/SnsAccountLiAuthenticatorActivity;->setResult(ILandroid/content/Intent;)V

    .line 664
    return-void
.end method
