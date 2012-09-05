.class Lcom/infraware/polarisoffice/search/InputSearchKey$5;
.super Ljava/lang/Object;
.source "InputSearchKey.java"

# interfaces
.implements Lcom/infraware/polarisoffice/common/ExEditText$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/search/InputSearchKey;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/search/InputSearchKey;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$5;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 177
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 179
    iget-object v0, p0, Lcom/infraware/polarisoffice/search/InputSearchKey$5;->this$0:Lcom/infraware/polarisoffice/search/InputSearchKey;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/search/InputSearchKey;->finish()V

    .line 180
    const/4 v0, 0x1

    .line 182
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
