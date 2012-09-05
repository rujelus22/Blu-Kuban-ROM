.class public Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;
.super Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;
.source "SocialHubStatusUpdateActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    }
.end annotation


# instance fields
.field private ToastEnabled:Z

.field private bOverLimitToast:Z

.field private bPicReplaced:Z

.field public dataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;",
            ">;"
        }
    .end annotation
.end field

.field private imeMgr:Landroid/view/inputmethod/InputMethodManager;

.field private mCancelButton:Landroid/widget/Button;

.field mCancelButtonListener:Landroid/view/View$OnClickListener;

.field private mCheckedSp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCheckedlayoutlistener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mExtraText:Ljava/lang/String;

.field private mFeedSnsType:I

.field private mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

.field private mPhotoButton:Landroid/widget/Button;

.field mPhotoButtonListener:Landroid/view/View$OnClickListener;

.field public mSelectedSP:[I

.field private mSpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateButton:Landroid/widget/Button;

.field private mUpdateEditText:Landroid/widget/EditText;

.field mUpdateStatusButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mFeedSnsType:I

    .line 82
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

    .line 83
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    .line 84
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    .line 85
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedSp:Ljava/util/ArrayList;

    .line 89
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z

    .line 91
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSelectedSP:[I

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bPicReplaced:Z

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bOverLimitToast:Z

    .line 564
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedlayoutlistener:Landroid/view/View$OnClickListener;

    .line 926
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mPhotoButtonListener:Landroid/view/View$OnClickListener;

    .line 963
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$4;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateStatusButtonListener:Landroid/view/View$OnClickListener;

    .line 1005
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$5;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$5;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    .line 1322
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->imeMgr:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bOverLimitToast:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bOverLimitToast:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/MultiLineLayout;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->checkSpSupportPhoto()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->reCheckStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bPicReplaced:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method private checkSpSupportPhoto()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1121
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v0

    if-ne v0, v6, :cond_8a

    .line 1123
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_8a

    .line 1126
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1132
    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 1133
    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 1135
    if-eqz v1, :cond_1f

    iget-object v4, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_1f

    .line 1137
    iget-object v4, v0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-ne v4, v6, :cond_1f

    .line 1139
    iget-object v4, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v6, :cond_1f

    .line 1141
    iget v4, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    invoke-static {v4}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v4

    .line 1143
    iget-object v5, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v5, v5, Lcom/sec/android/socialhub/view/PhotoUploadView;->ResizeBitmapfile:Ljava/io/File;

    invoke-interface {v4, p0, v2, v5, v6}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->checkPossibleUploadPhotoVideo(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/io/File;Z)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 1145
    iget-object v1, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1146
    iput-boolean v7, v0, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->bChecked:Z

    .line 1147
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1f

    .line 1154
    :cond_70
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 1158
    :try_start_7a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_83} :catch_8b

    .line 1165
    :goto_83
    invoke-static {p0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1169
    :cond_8a
    return-void

    .line 1160
    :catch_8b
    move-exception v0

    .line 1162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_83
.end method

.method private getIntentData()V
    .registers 10

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 611
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 612
    .local v2, extras:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, action:Ljava/lang/String;
    if-eqz v2, :cond_45

    .line 616
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 621
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    .line 623
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    if-eqz v4, :cond_46

    .line 625
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 627
    :cond_3b
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 628
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v4, v7}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 687
    :cond_45
    :goto_45
    return-void

    .line 636
    :cond_46
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 638
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_45

    .line 642
    :cond_67
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 643
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v4, v6}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 644
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/16 v5, 0xe

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    goto :goto_45

    .line 648
    :cond_7d
    const-string v4, "android.intent.action.STATUS_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 650
    const-string v4, "reqCode"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sparse-switch v4, :sswitch_data_f4

    .line 664
    const-string v4, "contents"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, content:Ljava/lang/String;
    if-eqz v1, :cond_a0

    .line 668
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v4, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setContentText(Ljava/lang/String;)V

    .line 671
    :cond_a0
    const-string v4, "uri"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_bb

    .line 673
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 674
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v4, v6}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 675
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v8, v3, v5}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    .line 678
    :cond_bb
    const-string v4, "taSelectedSP"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mFeedSnsType:I

    goto :goto_45

    .line 653
    .end local v1           #content:Ljava/lang/String;
    :sswitch_c5
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 654
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v4, v6}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 655
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const-string v5, "contents"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setContentText(Ljava/lang/String;)V

    .line 656
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v8, v3, v5}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    goto/16 :goto_45

    .line 660
    :sswitch_e5
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    goto/16 :goto_45

    .line 684
    :cond_ea
    const-string v4, "taSelectedSP"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mFeedSnsType:I

    goto/16 :goto_45

    .line 650
    :sswitch_data_f4
    .sparse-switch
        0xf -> :sswitch_c5
        0x14 -> :sswitch_e5
    .end sparse-switch
.end method

.method private initLayout()V
    .registers 3

    .prologue
    .line 295
    const v0, 0x7f0b00ee

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    .line 296
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/MultiLineLayout;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

    .line 297
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 298
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    .line 299
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCancelButton:Landroid/widget/Button;

    .line 302
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mPhotoButton:Landroid/widget/Button;

    .line 303
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mPhotoButton:Landroid/widget/Button;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 304
    return-void
.end method

.method private declared-synchronized loadAccountInfo()V
    .registers 25

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->dataArray:Ljava/util/ArrayList;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-object/from16 v20, v0

    const-string v21, "5_SNS"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v16

    .line 398
    .local v16, snsMap:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-eqz v16, :cond_2b

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->dataArray:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->getHash()Ljava/util/HashMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 401
    :cond_2b
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 403
    .local v17, spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSelectedSP:[I

    move-object/from16 v20, v0

    if-eqz v20, :cond_50

    .line 405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSelectedSP:[I

    .local v5, arr$:[I
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3e
    if-ge v10, v13, :cond_50

    aget v18, v5, v10

    .line 407
    .local v18, spType:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    .line 411
    .end local v5           #arr$:[I
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v18           #spType:I
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/socialhub/view/MultiLineLayout;->removeAllViews()V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getViewArray()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/socialhub/view/MultiLineLayout;->getViewHashMap()Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->clear()V

    .line 423
    const/4 v9, 0x0

    .local v9, i:I
    :goto_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->dataArray:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_1b7

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v20

    const v21, 0x7f030028

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 427
    .local v19, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->dataArray:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;

    .line 429
    .local v4, accountDTO:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    iget v0, v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v15

    .line 431
    .local v15, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const v20, 0x7f0b00d6

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 432
    .local v11, image:Landroid/widget/ImageView;
    const v20, 0x7f0b00d7

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 433
    .local v7, check:Landroid/widget/CheckBox;
    const v20, 0x7f0b00d4

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 435
    .local v12, layout:Landroid/widget/LinearLayout;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-interface {v15, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getImageResource(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 437
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 439
    .local v8, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    if-nez v8, :cond_f4

    .line 441
    new-instance v8, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .end local v8           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    .line 444
    .restart local v8       #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    :cond_f4
    iput-object v11, v8, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mImage:Landroid/widget/ImageView;

    .line 445
    iput-object v7, v8, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    .line 446
    iget v0, v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v8, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    .line 448
    const/4 v6, 0x0

    .line 450
    .local v6, bCheck:Z
    if-eqz v17, :cond_187

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_187

    .line 452
    iget v0, v8, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 453
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 465
    :cond_11c
    :goto_11c
    const-string v20, "SocialHubStatusUpdateActivity"

    const-string v21, "loadAccountInfo"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mFeedSnsType is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mFeedSnsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v8, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v20 .. v22}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedlayoutlistener:Landroid/view/View$OnClickListener;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 473
    .local v14, param:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mLayout:Lcom/sec/android/socialhub/view/MultiLineLayout;

    move-object/from16 v20, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    iget v0, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/sec/android/socialhub/view/MultiLineLayout;->addLayout(Landroid/view/View;IIZ)V

    .line 423
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8c

    .line 457
    .end local v14           #param:Landroid/widget/LinearLayout$LayoutParams;
    :cond_187
    const-string v20, "SocialHubStatusUpdateActivity"

    const-string v21, "loadAccountInfo"

    const-string v22, "splist is null"

    invoke-static/range {v20 .. v22}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mFeedSnsType:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1ae

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mFeedSnsType:I

    move/from16 v20, v0

    iget v0, v4, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;->email_id:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11c

    .line 460
    :cond_1ae
    const/4 v6, 0x1

    .line 461
    invoke-virtual {v7, v6}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_1b2
    .catchall {:try_start_1 .. :try_end_1b2} :catchall_1b4

    goto/16 :goto_11c

    .line 394
    .end local v4           #accountDTO:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountDTO;
    .end local v6           #bCheck:Z
    .end local v7           #check:Landroid/widget/CheckBox;
    .end local v8           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v9           #i:I
    .end local v11           #image:Landroid/widget/ImageView;
    .end local v12           #layout:Landroid/widget/LinearLayout;
    .end local v15           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v16           #snsMap:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    .end local v17           #spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v19           #view:Landroid/view/View;
    :catchall_1b4
    move-exception v20

    monitor-exit p0

    throw v20

    .line 477
    .restart local v9       #i:I
    .restart local v16       #snsMap:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    .restart local v17       #spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1b7
    :try_start_1b7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V
    :try_end_1ba
    .catchall {:try_start_1b7 .. :try_end_1ba} :catchall_1b4

    .line 484
    monitor-exit p0

    return-void
.end method

.method private partialErrorHandle(Ljava/util/ArrayList;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, spList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x1

    .line 1215
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_50

    .line 1220
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1222
    .local v2, key:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 1223
    .local v3, view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 1224
    .local v0, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    if-eqz v0, :cond_b

    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_b

    .line 1226
    iget-object v4, v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-ne v4, v6, :cond_b

    .line 1228
    iget v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_49

    .line 1230
    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_b

    .line 1234
    :cond_49
    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_b

    .line 1240
    .end local v0           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Landroid/view/View;
    .end local v3           #view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    :cond_50
    return-void
.end method

.method private reCheckStatus()V
    .registers 4

    .prologue
    .line 385
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "reCheckStatus()"

    const-string v2, "recheck"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getMinCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setLimitCount(I)V

    .line 388
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->buttonCheck()V

    .line 389
    return-void
.end method

.method private reDraw()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubBaseActivity;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getSnsAccountCount()I

    move-result v0

    if-gtz v0, :cond_10

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setResult(I)V

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->finish()V

    .line 369
    :goto_f
    return-void

    .line 367
    :cond_10
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->refreshServiceProvider()V

    goto :goto_f
.end method

.method private refreshServiceProvider()V
    .registers 4

    .prologue
    .line 310
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "refreshServiceProvider()"

    const-string v2, "refresh start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->loadAccountInfo()V

    .line 312
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->reCheckStatus()V

    .line 313
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getCurrentCount()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->checkLimitation(J)V

    .line 314
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "refreshServiceProvider()"

    const-string v2, "refresh end"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method private setButtonClickListener()V
    .registers 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateStatusButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCancelButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mPhotoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mPhotoButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    return-void
.end method

.method private setLimitCount(I)V
    .registers 6
    .parameter "count"

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 375
    .local v0, mText:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 376
    iget-object v1, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 380
    :goto_f
    int-to-long v1, p1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setLimitationEditText(Landroid/widget/EditText;JI)V

    .line 381
    return-void

    .line 378
    :cond_15
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    goto :goto_f
.end method


# virtual methods
.method public buttonCheck()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getCurrentCount()I

    move-result v1

    .line 725
    .local v1, length:I
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getMinCount()I

    move-result v0

    .line 727
    .local v0, LimitCount:I
    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isImageLoading()Z

    move-result v2

    if-ne v2, v3, :cond_1c

    .line 729
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 775
    :cond_1b
    :goto_1b
    return-void

    .line 736
    :cond_1c
    if-lez v1, :cond_34

    .line 738
    if-nez v0, :cond_26

    .line 739
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1b

    .line 742
    :cond_26
    if-le v1, v0, :cond_2e

    .line 743
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1b

    .line 745
    :cond_2e
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1b

    .line 750
    :cond_34
    if-gtz v1, :cond_1b

    .line 752
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 754
    iget-boolean v2, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->bEnableZeroCount:Z

    if-ne v2, v3, :cond_1b

    .line 755
    iget-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1b
.end method

.method public checkDisabledSp()V
    .registers 7

    .prologue
    .line 597
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 599
    .local v2, key:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 600
    .local v3, view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 601
    .local v0, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 603
    iget-object v4, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_6

    .line 606
    .end local v0           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v2           #key:Landroid/view/View;
    .end local v3           #view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    :cond_35
    return-void
.end method

.method public checkLimitation(J)V
    .registers 8
    .parameter "length"

    .prologue
    .line 696
    invoke-super {p0, p1, p2}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->checkLimitation(J)V

    .line 698
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->ToastEnabled:Z

    .line 706
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 708
    .local v2, key:Landroid/view/View;
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 709
    .local v3, view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 711
    .local v0, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    if-eqz v0, :cond_c

    .line 713
    iget-object v4, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3, p1, p2, v4}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->checkEnable(Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;JLandroid/widget/EditText;)V

    goto :goto_c

    .line 716
    .end local v0           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v2           #key:Landroid/view/View;
    .end local v3           #view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    :cond_2e
    return-void
.end method

.method protected errorHandle(IIIIIILjava/lang/String;)V
    .registers 8
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "reason"

    .prologue
    .line 1264
    return-void
.end method

.method protected getEnabledArray()[I
    .registers 11

    .prologue
    .line 885
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedSp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 887
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    if-eqz v8, :cond_56

    .line 892
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 894
    .local v4, key:Landroid/view/View;
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 895
    .local v7, view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    iget-object v8, v7, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_f

    .line 897
    invoke-virtual {v7}, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 899
    .local v0, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    if-eqz v0, :cond_f

    iget-object v8, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v8, :cond_f

    iget-object v8, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 901
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedSp:Ljava/util/ArrayList;

    iget v9, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    .line 902
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedSp:Ljava/util/ArrayList;

    iget v9, v0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 908
    .end local v0           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #key:Landroid/view/View;
    .end local v7           #view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    :cond_56
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedSp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v5, v8, [I

    .line 909
    .local v5, ret:[I
    const/4 v2, 0x0

    .line 911
    .local v2, index:I
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedSp:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 913
    .local v6, sp:Ljava/lang/Integer;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v5, v2

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_65

    .line 916
    .end local v6           #sp:Ljava/lang/Integer;
    :cond_7b
    return-object v5
.end method

.method protected getMinCount()I
    .registers 13

    .prologue
    const/4 v9, 0x1

    .line 820
    const v5, 0x186a0

    .line 822
    .local v5, min:I
    const/4 v0, 0x1

    .line 826
    .local v0, bNoCheck:Z
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpArray:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 828
    .local v3, key:Landroid/view/View;
    iget-object v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSpMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;

    .line 829
    .local v7, view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    invoke-virtual {v7}, Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;

    .line 831
    .local v1, holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    if-eqz v1, :cond_b

    iget-object v8, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mCheck:Landroid/widget/CheckBox;

    if-eqz v8, :cond_b

    .line 833
    invoke-virtual {v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->isChecked()Z

    move-result v8

    if-ne v8, v9, :cond_b

    .line 835
    iget v8, v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;->mSpType:I

    invoke-static {v8}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v6

    .line 837
    .local v6, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    invoke-interface {v6, v9}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getLimitation(I)I

    move-result v4

    .line 839
    .local v4, limit:I
    if-ge v4, v5, :cond_3e

    .line 841
    move v5, v4

    .line 844
    :cond_3e
    const/4 v0, 0x0

    goto :goto_b

    .line 849
    .end local v1           #holder:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$CheckViewHolder;
    .end local v3           #key:Landroid/view/View;
    .end local v4           #limit:I
    .end local v6           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v7           #view:Lcom/sec/android/socialhub/view/MultiLineLayout$ViewInfo;
    :cond_40
    if-ne v0, v9, :cond_43

    .line 851
    const/4 v5, 0x0

    .line 854
    :cond_43
    const-string v8, "SocialHubStatusUpdateActivity"

    const-string v9, "getMinCount()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "min - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return v5
.end method

.method public getPhotoUploadView()Lcom/sec/android/socialhub/view/PhotoUploadView;
    .registers 2

    .prologue
    .line 1410
    const v0, 0x7f0b00dd

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/view/PhotoUploadView;

    return-object v0
.end method

.method public isLoadFromOther()Z
    .registers 9

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 246
    .local v2, ret:Z
    iget-boolean v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bPicReplaced:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 248
    const-string v4, "SocialHubStatusUpdateActivity"

    const-string v5, "isLoadFromOther()"

    const-string v6, "picture is replaced or try to replace"

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 282
    .end local v2           #ret:Z
    .local v3, ret:I
    :goto_10
    return v3

    .line 252
    .end local v3           #ret:I
    .restart local v2       #ret:Z
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 254
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_47

    .line 256
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_47

    .line 260
    const/4 v2, 0x1

    .line 262
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 267
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    .line 269
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    if-eqz v4, :cond_47

    .line 271
    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_46

    iget-object v4, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 273
    :cond_46
    const/4 v2, 0x0

    .line 280
    .end local v0           #action:Ljava/lang/String;
    :cond_47
    const-string v4, "SocialHubStatusUpdateActivity"

    const-string v5, "isLoadFromOther()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ret - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 282
    .restart local v3       #ret:I
    goto :goto_10
.end method

.method public loadPage(Landroid/os/Bundle;Z)V
    .registers 6
    .parameter "savedInstanceState"
    .parameter "bRefreshSP"

    .prologue
    .line 135
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setLayout(I)V

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setTitle(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->initLayout()V

    .line 138
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getIntentData()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    .line 140
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setButtonClickListener()V

    .line 142
    const/4 v0, 0x1

    if-ne p2, v0, :cond_26

    .line 143
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->refreshServiceProvider()V

    .line 145
    :cond_26
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 147
    if-nez p1, :cond_33

    .line 149
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mExtraText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    :cond_33
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 152
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->requestIME(Landroid/view/View;)V

    .line 160
    :goto_3d
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getDialog()Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubAbsUploadDialog;->setOnClickListner(Lcom/sec/android/socialhub/dialog/AbsListDialog$IDialogClickListener;)V

    .line 169
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "onCreate"

    const-string v2, "UI End"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 156
    :cond_55
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 157
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->requestIME(Landroid/view/View;)V

    goto :goto_3d
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 1017
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1019
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "onActivityResult()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", data - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    sparse-switch p1, :sswitch_data_82

    .line 1063
    :cond_35
    :goto_35
    return-void

    .line 1025
    :sswitch_36
    if-eqz p2, :cond_35

    .line 1027
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setContentText(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v4}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setImageFromIntent(ILandroid/content/Intent;Landroid/content/ContentResolver;)V

    .line 1036
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getMinCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setLimitCount(I)V

    .line 1038
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1040
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->buttonCheck()V

    goto :goto_35

    .line 1045
    :sswitch_76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_7e

    .line 1055
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->loadPage(Landroid/os/Bundle;Z)V

    goto :goto_35

    .line 1059
    :cond_7e
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->finish()V

    goto :goto_35

    .line 1021
    :sswitch_data_82
    .sparse-switch
        0xa -> :sswitch_36
        0xb -> :sswitch_36
        0x64 -> :sswitch_76
    .end sparse-switch
.end method

.method public declared-synchronized onApiCalled(I)V
    .registers 5
    .parameter

    .prologue
    .line 1176
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onApiCalled(I)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_21

    .line 1178
    sparse-switch p1, :sswitch_data_24

    .line 1186
    :goto_7
    monitor-exit p0

    return-void

    .line 1182
    :sswitch_9
    :try_start_9
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->setText(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->startProgressDialog()V
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    goto :goto_7

    .line 1176
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1178
    :sswitch_data_24
    .sparse-switch
        0x1c -> :sswitch_9
        0x21 -> :sswitch_9
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1245
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->isSelectedImage()Z

    move-result v0

    if-ne v0, v1, :cond_11

    .line 1247
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->showDiscardPopup(Z)V

    .line 1253
    :goto_10
    return-void

    .line 1251
    :cond_11
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onBackPressed()V

    goto :goto_10
.end method

.method protected onChangeViewMode(Z)V
    .registers 5
    .parameter "bImage"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1469
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onChangeViewMode(Z)V

    .line 1471
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    .line 1473
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1b

    .line 1475
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 1476
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1488
    :cond_1b
    :goto_1b
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->reCheckStatus()V

    .line 1489
    return-void

    .line 1481
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_1b

    .line 1483
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0, v2}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    .line 1484
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_1b
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 102
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "onCreate"

    const-string v2, "UI Start"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    iput-object p0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mCheckedSp:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setUse(Z)V

    .line 112
    invoke-virtual {p0, v3, v3, v4}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setShowDiscardPopup(ZZZ)V

    .line 113
    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setVisibleCount(I)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setMode(I)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxAppSns;->isExistSnsAccount(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 118
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "onCreate()"

    const-string v2, "there\'s no sns account. move to add account page."

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    const-string v1, "from_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    :goto_45
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->imeMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->requestConnect()V

    .line 131
    return-void

    .line 125
    :cond_53
    const-string v0, "SocialHubStatusUpdateActivity"

    const-string v1, "onCreate()"

    const-string v2, "there\'re sns account. make page"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1, v3}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->loadPage(Landroid/os/Bundle;Z)V

    goto :goto_45
.end method

.method protected onGetInstanceState(Landroid/os/Bundle;)V
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onGetInstanceState(Landroid/os/Bundle;)V

    .line 207
    if-eqz p1, :cond_4d

    .line 209
    const-string v5, "spTypeList"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSelectedSP:[I

    .line 210
    iput-boolean v8, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->bOverLimitToast:Z

    .line 212
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSelectedSP:[I

    if-eqz v5, :cond_3c

    .line 214
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v5, "selected sp - "

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 216
    .local v3, select:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mSelectedSP:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_21
    if-ge v1, v2, :cond_31

    aget v4, v0, v1

    .line 218
    .local v4, sp:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 221
    .end local v4           #sp:I
    :cond_31
    const-string v5, "SocialHubStatusUpdateActivity"

    const-string v6, "onGetInstanceState()"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #select:Ljava/lang/StringBuffer;
    :cond_3c
    iget-object v5, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v5, :cond_4d

    .line 226
    sget-object v5, Lcom/sec/android/socialhub/view/PhotoUploadView;->PHOTO_VIEW_MODE:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 228
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 237
    :cond_4d
    :goto_4d
    return-void

    .line 232
    :cond_4e
    iget-object v5, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setVisibility(I)V

    .line 233
    iget-object v5, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v5, v9}, Lcom/sec/android/socialhub/view/PhotoUploadView;->setVisibility(I)V

    goto :goto_4d
.end method

.method public onOverLimit()V
    .registers 1

    .prologue
    .line 780
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onOverLimit()V

    .line 782
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->reCheckStatus()V

    .line 788
    return-void
.end method

.method public onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V
    .registers 6
    .parameter "info"
    .parameter "bSuccess"
    .parameter "errorResource"

    .prologue
    const/4 v1, 0x1

    .line 1417
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onPhotoLoadComplete(Lcom/sec/android/socialhub/image/RemoteImageInfo;ZI)V

    .line 1420
    if-ne p2, v1, :cond_29

    .line 1422
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    if-eqz v0, :cond_22

    .line 1430
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->isLoadFromOther()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1432
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1433
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->mPhotoView:Lcom/sec/android/socialhub/view/PhotoUploadView;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/view/PhotoUploadView;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->requestIME(Landroid/view/View;)V

    .line 1437
    :cond_22
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->checkSpSupportPhoto()V

    .line 1438
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->reCheckStatus()V

    .line 1458
    :goto_28
    return-void

    .line 1449
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->isLoadFromOther()Z

    move-result v0

    if-ne v0, v1, :cond_33

    .line 1451
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->finish()V

    goto :goto_28

    .line 1455
    :cond_33
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->mUpdateEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->requestIME(Landroid/view/View;)V

    goto :goto_28
.end method

.method public onRefreshView(Ljava/util/ArrayList;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, info:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;>;"
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onRefreshView(Ljava/util/ArrayList;)V

    .line 347
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;

    .line 349
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;
    const-string v2, "5_SNS"

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;->getActionType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 351
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->reDraw()V

    .line 355
    .end local v0           #account:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager$SocialHubAccountInfo;
    :cond_29
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 11
    .parameter "outState"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getEnabledArray()[I

    move-result-object v5

    .line 184
    .local v5, spList:[I
    if-eqz v5, :cond_13

    array-length v6, v5

    if-nez v6, :cond_13

    .line 185
    const/4 v6, 0x1

    new-array v5, v6, [I

    .end local v5           #spList:[I
    const/4 v6, 0x0

    const/4 v7, -0x1

    aput v7, v5, v6

    .line 187
    .restart local v5       #spList:[I
    :cond_13
    const-string v6, "spTypeList"

    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 189
    if-eqz v5, :cond_3f

    .line 191
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v6, "selected sp - "

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 193
    .local v3, select:Ljava/lang/StringBuffer;
    move-object v0, v5

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_24
    if-ge v1, v2, :cond_34

    aget v4, v0, v1

    .line 195
    .local v4, sp:I
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 198
    .end local v4           #sp:I
    :cond_34
    const-string v6, "SocialHubStatusUpdateActivity"

    const-string v7, "onSaveInstanceState()"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #select:Ljava/lang/StringBuffer;
    :cond_3f
    return-void
.end method

.method public onServiceConnected()V
    .registers 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onServiceConnected()V

    .line 176
    return-void
.end method

.method public onSnsCallback(Ljava/lang/Object;IIILandroid/net/Uri;Z)V
    .registers 10
    .parameter "obj"
    .parameter "reqID"
    .parameter "spType"
    .parameter "reqType"
    .parameter "uri"
    .parameter "bContinue"

    .prologue
    .line 1192
    sparse-switch p4, :sswitch_data_22

    .line 1206
    :goto_3
    return-void

    .line 1196
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1197
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setResult(I)V

    .line 1199
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1d

    .line 1201
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mIMManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1203
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->finish()V

    goto :goto_3

    .line 1192
    nop

    :sswitch_data_22
    .sparse-switch
        0x1c -> :sswitch_4
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public onSnsErrorCallback(Ljava/lang/Object;IIILandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1271
    const/4 v0, 0x0

    .line 1273
    const/16 v1, 0xf66

    if-eq p7, v1, :cond_5c

    .line 1274
    invoke-static {p0, p6, p7, p8}, Lcom/sec/android/socialhub/sns/SnsErrorCode;->getErrorString(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1277
    :goto_a
    sparse-switch p4, :sswitch_data_5e

    .line 1320
    :goto_d
    return-void

    .line 1280
    :sswitch_e
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1281
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setResult(I)V

    .line 1283
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getErrorMap(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1285
    if-nez v0, :cond_4b

    .line 1287
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mServiceManager:Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->getRequestMap(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1294
    :goto_2d
    new-instance v2, Lcom/sec/android/socialhub/dialog/SocialHubUpdateFailDialog;

    invoke-direct {v2, p0, v0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubUpdateFailDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1296
    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/android/socialhub/dialog/SocialHubUpdateFailDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1298
    const v0, 0x7f08001c

    new-instance v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$6;-><init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/socialhub/dialog/SocialHubUpdateFailDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1308
    invoke-virtual {v2}, Lcom/sec/android/socialhub/dialog/SocialHubUpdateFailDialog;->show()Landroid/app/AlertDialog;

    goto :goto_d

    .line 1291
    :cond_4b
    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->partialErrorHandle(Ljava/util/ArrayList;)V

    goto :goto_2d

    .line 1313
    :sswitch_4f
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/SocialHubCallbackHandleActivity;->mDialogManager:Lcom/sec/android/socialhub/dialog/ProgressDialogManager;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/dialog/ProgressDialogManager;->stopProgressDialog()V

    .line 1314
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->setResult(I)V

    .line 1315
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->finish()V

    goto :goto_d

    :cond_5c
    move-object v1, v0

    goto :goto_a

    .line 1277
    :sswitch_data_5e
    .sparse-switch
        0x1c -> :sswitch_e
        0x21 -> :sswitch_4f
    .end sparse-switch
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 320
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onStart()V

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->isShowingDiscardPopup()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->isLoadFromOther()Z

    move-result v0

    if-nez v0, :cond_14

    .line 337
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/TitleActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->requestIME(Landroid/view/View;)V

    .line 339
    :cond_14
    return-void
.end method

.method public onStartPhotoLoad()V
    .registers 1

    .prologue
    .line 1463
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/SocialHubPhotoHandleActivity;->onStartPhotoLoad()V

    .line 1464
    return-void
.end method
