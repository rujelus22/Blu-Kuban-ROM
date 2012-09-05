.class public Lcom/sec/android/app/voicerecorder/widget/VRDialog;
.super Ljava/lang/Object;
.source "VRDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;
    }
.end annotation


# static fields
.field private static final INVALID_CHARS:[Ljava/lang/String;

.field private static beforeText:Ljava/lang/String;

.field public static isShown:Z

.field private static mContext:Landroid/content/Context;

.field public static medit:Landroid/widget/EditText;

.field private static s_beforeDefaultName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\\"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ":"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "*"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "?"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\n"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->INVALID_CHARS:[Ljava/lang/String;

    .line 41
    sput-boolean v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->isShown:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->beforeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    sput-object p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->beforeText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->s_beforeDefaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 34
    sput-object p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->s_beforeDefaultName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->INVALID_CHARS:[Ljava/lang/String;

    return-object v0
.end method

.method public static createDefaultNameDialog(Landroid/app/Activity;Landroid/os/Handler;)Landroid/app/AlertDialog;
    .registers 9
    .parameter "activity"
    .parameter "uiUpdateHandler"

    .prologue
    const/4 v6, 0x1

    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 319
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 321
    .local v2, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 324
    .local v1, editText:Landroid/widget/EditText;
    sput-object v1, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    .line 326
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelected(Z)V

    .line 327
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getDefaultFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 329
    new-instance v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog$8;

    invoke-direct {v3, v1, p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$8;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    const v3, 0x7f06000d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 353
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 356
    const v3, 0x7f06002b

    new-instance v4, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;

    invoke-direct {v4, p0, v1, p1}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$9;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/os/Handler;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 386
    const v3, 0x7f060007

    new-instance v4, Lcom/sec/android/app/voicerecorder/widget/VRDialog$10;

    invoke-direct {v4}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$10;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 400
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->getNameFilter(Landroid/app/Activity;)[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 401
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 402
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 405
    new-instance v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog$11;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$11;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static createLimitForMmsDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;
    .registers 7
    .parameter "context"
    .parameter "uiUpdateHandler"

    .prologue
    .line 81
    sput-object p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->mContext:Landroid/content/Context;

    .line 82
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f060029

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f06002a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 84
    .local v1, items:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 85
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 86
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getLimitForMms()I

    move-result v2

    new-instance v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog$2;

    invoke-direct {v3, p1, p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$2;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createQualityDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;
    .registers 7
    .parameter "context"
    .parameter "uiUpdateHandler"

    .prologue
    .line 53
    sput-object p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->mContext:Landroid/content/Context;

    .line 54
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f06005f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f060060

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 56
    .local v1, items:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f06005e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getQuality()I

    move-result v2

    new-instance v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog$1;

    invoke-direct {v3, p1, p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f060007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static createRenameDialog(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .registers 10
    .parameter "activity"
    .parameter "uiUpdateHandler"
    .parameter "originName"

    .prologue
    const/4 v6, 0x1

    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 205
    .local v2, layout:Landroid/widget/LinearLayout;
    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 208
    .local v1, editText:Landroid/widget/EditText;
    sput-object v1, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->medit:Landroid/widget/EditText;

    .line 210
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setSelected(Z)V

    .line 211
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 213
    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->getNameFilter(Landroid/app/Activity;)[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 217
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->beforeText:Ljava/lang/String;

    .line 219
    new-instance v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;

    invoke-direct {v3, v1, p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$4;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 243
    const v3, 0x7f060017

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 247
    const v3, 0x7f06002f

    new-instance v4, Lcom/sec/android/app/voicerecorder/widget/VRDialog$5;

    invoke-direct {v4}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$5;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 276
    const v3, 0x7f060007

    new-instance v4, Lcom/sec/android/app/voicerecorder/widget/VRDialog$6;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$6;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-static {p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->getNameFilter(Landroid/app/Activity;)[Landroid/text/InputFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 293
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 294
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 297
    new-instance v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog$7;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$7;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static createStorageDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/AlertDialog;
    .registers 8
    .parameter "context"
    .parameter "uiUpdateHandler"

    .prologue
    .line 109
    sput-object p0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->mContext:Landroid/content/Context;

    .line 113
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f06000b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const v4, 0x7f06000c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 115
    .local v2, items:[Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f060009

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    new-instance v1, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;

    const v3, 0x7f030012

    invoke-direct {v1, p0, v3, v2}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 120
    .local v1, dlgAdapter:Lcom/sec/android/app/voicerecorder/widget/VRDialog$StorageDialogAdapter;
    new-instance v3, Lcom/sec/android/app/voicerecorder/widget/VRDialog$3;

    invoke-direct {v3, p1}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$3;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f060007

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public static getNameFilter(Landroid/app/Activity;)[Landroid/text/InputFilter;
    .registers 4
    .parameter "activity"

    .prologue
    .line 425
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 426
    .local v0, filterArray:[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/voicerecorder/widget/VRDialog$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog$12;-><init>(Landroid/app/Activity;)V

    aput-object v2, v0, v1

    .line 443
    return-object v0
.end method
