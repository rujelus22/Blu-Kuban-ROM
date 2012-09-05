.class Lcom/samsung/handsfreeactivation/RebootDlg$1;
.super Ljava/lang/Object;
.source "RebootDlg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/handsfreeactivation/RebootDlg;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/handsfreeactivation/RebootDlg;


# direct methods
.method constructor <init>(Lcom/samsung/handsfreeactivation/RebootDlg;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/handsfreeactivation/RebootDlg$1;->this$0:Lcom/samsung/handsfreeactivation/RebootDlg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 31
    const-string v0, "RebootDlg"

    const-string v1, "rebootAlert onClick..... "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method
