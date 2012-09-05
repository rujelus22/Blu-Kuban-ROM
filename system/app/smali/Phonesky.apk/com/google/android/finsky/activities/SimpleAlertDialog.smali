.class public Lcom/google/android/finsky/activities/SimpleAlertDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SimpleAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mListener:Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/SimpleAlertDialog;)Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    move-result-object v0

    return-object v0
.end method

.method private getListener()Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;
    .registers 4

    .prologue
    .line 172
    iget-object v2, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mListener:Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    if-eqz v2, :cond_7

    .line 173
    iget-object v1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mListener:Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    .line 184
    :goto_6
    return-object v1

    .line 176
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 177
    .local v1, f:Landroid/support/v4/app/Fragment;
    instance-of v2, v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    if-eqz v2, :cond_12

    .line 178
    check-cast v1, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    goto :goto_6

    .line 180
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 181
    .local v0, a:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    if-eqz v2, :cond_1e

    .line 182
    check-cast v0, Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    .end local v0           #a:Landroid/app/Activity;
    move-object v1, v0

    goto :goto_6

    .line 184
    .restart local v0       #a:Landroid/app/Activity;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static newInstance(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .registers 5
    .parameter "titleId"
    .parameter "messageId"
    .parameter "positiveId"
    .parameter "negativeId"

    .prologue
    .line 52
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private static newInstance(IIIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .registers 8
    .parameter "titleId"
    .parameter "messageId"
    .parameter "viewId"
    .parameter "positiveId"
    .parameter "negativeId"

    .prologue
    .line 72
    new-instance v1, Lcom/google/android/finsky/activities/SimpleAlertDialog;

    invoke-direct {v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;-><init>()V

    .line 73
    .local v1, dialogFragment:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, arguments:Landroid/os/Bundle;
    const-string v2, "title_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v2, "message_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v2, "layoutId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    const-string v2, "positive_id"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    const-string v2, "negative_id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 80
    return-object v1
.end method

.method public static newInstanceWithLayout(IIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .registers 5
    .parameter "titleId"
    .parameter "layoutId"
    .parameter "positiveId"
    .parameter "negativeId"

    .prologue
    .line 67
    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(IIIII)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, -0x1

    .line 113
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 114
    .local v3, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 115
    .local v1, arguments:Landroid/os/Bundle;
    const-string v12, "title_id"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 116
    .local v10, titleId:I
    const-string v12, "message_id"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 117
    .local v6, messageId:I
    const-string v12, "layoutId"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 118
    .local v5, layoutId:I
    const-string v12, "positive_id"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 119
    .local v8, positiveId:I
    const-string v12, "negative_id"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 120
    .local v7, negativeId:I
    const-string v12, "extra_arguments"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 121
    .local v4, extraArguments:Landroid/os/Bundle;
    const-string v12, "target_request_code"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 123
    .local v9, requestCode:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v2, b:Landroid/app/AlertDialog$Builder;
    if-eq v10, v13, :cond_3d

    .line 125
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 127
    :cond_3d
    if-eq v6, v13, :cond_42

    .line 128
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 130
    :cond_42
    if-eq v8, v13, :cond_4c

    .line 131
    new-instance v12, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;

    invoke-direct {v12, p0, v9, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$1;-><init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;ILandroid/os/Bundle;)V

    invoke-virtual {v2, v8, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    :cond_4c
    if-eq v7, v13, :cond_56

    .line 144
    new-instance v12, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;

    invoke-direct {v12, p0, v9, v4}, Lcom/google/android/finsky/activities/SimpleAlertDialog$2;-><init>(Lcom/google/android/finsky/activities/SimpleAlertDialog;ILandroid/os/Bundle;)V

    invoke-virtual {v2, v7, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    :cond_56
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 157
    .local v0, alertDialog:Landroid/app/AlertDialog;
    if-eq v5, v13, :cond_68

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v5, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 159
    .local v11, view:Landroid/view/View;
    invoke-virtual {v0, v11}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 161
    .end local v11           #view:Landroid/view/View;
    :cond_68
    return-object v0
.end method

.method public setCallback(Landroid/support/v4/app/Fragment;ILandroid/os/Bundle;)Lcom/google/android/finsky/activities/SimpleAlertDialog;
    .registers 6
    .parameter "target"
    .parameter "requestCode"
    .parameter "extraArguments"

    .prologue
    .line 99
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 101
    if-nez p3, :cond_8

    if-eqz p2, :cond_19

    .line 102
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    .local v0, arguments:Landroid/os/Bundle;
    const-string v1, "extra_arguments"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    const-string v1, "target_request_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->setArguments(Landroid/os/Bundle;)V

    .line 108
    .end local v0           #arguments:Landroid/os/Bundle;
    :cond_19
    return-object p0
.end method

.method public setListener(Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/finsky/activities/SimpleAlertDialog;->mListener:Lcom/google/android/finsky/activities/SimpleAlertDialog$Listener;

    .line 166
    return-void
.end method
