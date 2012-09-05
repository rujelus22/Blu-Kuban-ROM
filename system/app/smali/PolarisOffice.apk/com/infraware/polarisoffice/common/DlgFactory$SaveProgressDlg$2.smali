.class Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$2;
.super Ljava/lang/Object;
.source "DlgFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;-><init>(Lcom/infraware/polarisoffice/common/DlgFactory;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg$2;->this$1:Lcom/infraware/polarisoffice/common/DlgFactory$SaveProgressDlg;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "arg0"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 152
    packed-switch p2, :pswitch_data_8

    .line 156
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 154
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 152
    nop

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
