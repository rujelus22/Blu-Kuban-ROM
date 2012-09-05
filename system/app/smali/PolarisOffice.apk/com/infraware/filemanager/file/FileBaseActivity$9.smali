.class Lcom/infraware/filemanager/file/FileBaseActivity$9;
.super Ljava/lang/Object;
.source "FileBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/filemanager/file/FileBaseActivity;->updateMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/file/FileBaseActivity$9;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 961
    invoke-static {p2}, Lcom/infraware/common/util/Utils;->isSystemKey(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 962
    const/4 v0, 0x0

    .line 965
    :goto_7
    return v0

    .line 964
    :cond_8
    iget-object v0, p0, Lcom/infraware/filemanager/file/FileBaseActivity$9;->this$0:Lcom/infraware/filemanager/file/FileBaseActivity;

    const/4 v1, -0x1

    iput v1, v0, Lcom/infraware/filemanager/file/FileBaseActivity;->m_nDownKey:I

    .line 965
    const/4 v0, 0x1

    goto :goto_7
.end method
