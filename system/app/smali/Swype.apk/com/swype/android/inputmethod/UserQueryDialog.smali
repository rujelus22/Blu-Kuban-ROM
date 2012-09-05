.class public Lcom/swype/android/inputmethod/UserQueryDialog;
.super Lcom/swype/android/inputmethod/SwypeDialog;
.source "UserQueryDialog.java"


# static fields
.field public static final INTENT_KEY_REPONSE_TOKEN:Ljava/lang/String; = "token"

.field public static final INTENT_KEY_TEXT:Ljava/lang/String; = "text"

.field public static final INTENT_KEY_TITLE:Ljava/lang/String; = "title"


# instance fields
.field private responseToken:I

.field private text:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "title"
    .parameter "text"
    .parameter "responseToken"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeDialog;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/swype/android/inputmethod/UserQueryDialog;->title:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/swype/android/inputmethod/UserQueryDialog;->text:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/swype/android/inputmethod/UserQueryDialog;->responseToken:I

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/UserQueryDialog;->dismissOnSleep:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/inputmethod/UserQueryDialog;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Lcom/swype/android/inputmethod/UserQueryDialog;->responseToken:I

    return v0
.end method


# virtual methods
.method protected doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
    .registers 6
    .parameter "context"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    .line 46
    .local v0, core:Lcom/swype/android/jni/SwypeCore;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/inputmethod/UserQueryDialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/swype/android/inputmethod/UserQueryDialog;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    new-instance v3, Lcom/swype/android/inputmethod/UserQueryDialog$2;

    invoke-direct {v3, p0, v0}, Lcom/swype/android/inputmethod/UserQueryDialog$2;-><init>(Lcom/swype/android/inputmethod/UserQueryDialog;Lcom/swype/android/jni/SwypeCore;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    new-instance v3, Lcom/swype/android/inputmethod/UserQueryDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/swype/android/inputmethod/UserQueryDialog$1;-><init>(Lcom/swype/android/inputmethod/UserQueryDialog;Lcom/swype/android/jni/SwypeCore;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
