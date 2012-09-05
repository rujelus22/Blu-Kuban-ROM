.class public Lcom/infraware/polarisoffice/common/DlgFactory;
.super Ljava/lang/Object;
.source "DlgFactory.java"

# interfaces
.implements Lcom/infraware/office/baseframe/EvBaseE$PopupDialogEventType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;,
        Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;,
        Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;
    }
.end annotation


# static fields
.field protected static mDlgFactory:Lcom/infraware/polarisoffice/common/DlgFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/polarisoffice/common/DlgFactory;->mDlgFactory:Lcom/infraware/polarisoffice/common/DlgFactory;

    .line 18
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/infraware/polarisoffice/common/DlgFactory;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/infraware/polarisoffice/common/DlgFactory;->mDlgFactory:Lcom/infraware/polarisoffice/common/DlgFactory;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory;

    invoke-direct {v0}, Lcom/infraware/polarisoffice/common/DlgFactory;-><init>()V

    sput-object v0, Lcom/infraware/polarisoffice/common/DlgFactory;->mDlgFactory:Lcom/infraware/polarisoffice/common/DlgFactory;

    .line 28
    :cond_b
    sget-object v0, Lcom/infraware/polarisoffice/common/DlgFactory;->mDlgFactory:Lcom/infraware/polarisoffice/common/DlgFactory;

    return-object v0
.end method


# virtual methods
.method public AlertConfirm(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .parameter "activity"
    .parameter "content"

    .prologue
    .line 78
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/infraware/polarisoffice/common/DlgFactory$1MyRunnable;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public createOpenProgressDlg(Landroid/app/Activity;Ljava/lang/String;)Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;
    .registers 4
    .parameter "activity"
    .parameter "title"

    .prologue
    .line 32
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;

    invoke-direct {v0, p0, p1, p2}, Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;Ljava/lang/String;)V

    .line 33
    .local v0, dlg:Lcom/infraware/polarisoffice/common/DlgFactory$OpenProgressDlg;
    return-object v0
.end method

.method public createSaveProgressDlg(Landroid/app/Activity;)Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;
    .registers 3
    .parameter "activity"

    .prologue
    .line 42
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;

    invoke-direct {v0, p0, p1}, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;)V

    .line 43
    .local v0, dlg:Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;
    return-object v0
.end method

.method public createSearchProgressDlg(Landroid/app/Activity;)Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;
    .registers 3
    .parameter "activity"

    .prologue
    .line 37
    new-instance v0, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;

    invoke-direct {v0, p0, p1}, Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;)V

    .line 38
    .local v0, dlg:Lcom/infraware/polarisoffice/common/DlgFactory$SearchProgressDlg;
    return-object v0
.end method

.method public dismisProgress(Landroid/app/Activity;I)V
    .registers 4
    .parameter "activity"
    .parameter "id"

    .prologue
    .line 49
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/Activity;->removeDialog(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    .line 52
    :goto_3
    return-void

    .line 50
    :catch_4
    move-exception v0

    goto :goto_3
.end method
