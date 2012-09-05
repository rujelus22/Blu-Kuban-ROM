.class Lcom/sprint/w/installer/PackInstaller$14$2;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sprint/w/installer/PackInstaller$14;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller$14;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iput-object p2, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1254
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-virtual {v1}, Lcom/sprint/w/installer/PackInstaller;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_37

    .line 1255
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller;->mProgress:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1257
    :try_start_15
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->val$e:Ljava/lang/Exception;

    instance-of v1, v1, Lcom/sprint/w/installer/DownloadServiceException;

    if-eqz v1, :cond_44

    .line 1258
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->val$e:Ljava/lang/Exception;

    check-cast v1, Lcom/sprint/w/installer/DownloadServiceException;

    invoke-virtual {v1}, Lcom/sprint/w/installer/DownloadServiceException;->getPsiCode()Lcom/sprint/w/installer/PsiCode;

    move-result-object v0

    .line 1259
    .local v0, code:Lcom/sprint/w/installer/PsiCode;
    sget-object v1, Lcom/sprint/w/installer/PackInstaller$31;->$SwitchMap$com$sprint$w$installer$PsiCode:[I

    invoke-virtual {v0}, Lcom/sprint/w/installer/PsiCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4e

    .line 1265
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V

    .line 1275
    .end local v0           #code:Lcom/sprint/w/installer/PsiCode;
    :cond_37
    :goto_37
    return-void

    .line 1261
    .restart local v0       #code:Lcom/sprint/w/installer/PsiCode;
    :pswitch_38
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V

    goto :goto_37

    .line 1271
    .end local v0           #code:Lcom/sprint/w/installer/PsiCode;
    :catch_42
    move-exception v1

    goto :goto_37

    .line 1269
    :cond_44
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$14$2;->this$1:Lcom/sprint/w/installer/PackInstaller$14;

    iget-object v1, v1, Lcom/sprint/w/installer/PackInstaller$14;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/sprint/w/installer/PackInstaller;->showDialog(I)V
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_4d} :catch_42

    goto :goto_37

    .line 1259
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_38
    .end packed-switch
.end method
