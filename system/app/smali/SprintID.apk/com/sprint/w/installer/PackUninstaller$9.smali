.class Lcom/sprint/w/installer/PackUninstaller$9;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/PackUninstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackUninstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackUninstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$9;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 983
    invoke-static {}, Lcom/sprint/w/installer/PackUninstaller;->access$1200()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 984
    invoke-static {}, Lcom/sprint/w/installer/PackUninstaller;->access$1200()Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 985
    invoke-static {}, Lcom/sprint/w/installer/PackUninstaller;->access$1200()Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$9;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mProgressPercent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 986
    invoke-static {}, Lcom/sprint/w/installer/PackUninstaller;->access$1200()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->invalidate()V

    .line 987
    invoke-static {}, Lcom/sprint/w/installer/PackUninstaller;->access$1300()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sprint/w/installer/PackUninstaller$9;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget v2, v2, Lcom/sprint/w/installer/PackUninstaller;->mProgressPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    invoke-static {}, Lcom/sprint/w/installer/PackUninstaller;->access$1300()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$9;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget v0, v0, Lcom/sprint/w/installer/PackUninstaller;->mProgressPercent:I

    const/16 v2, 0x32

    if-ge v0, v2, :cond_5d

    const/4 v0, -0x1

    :goto_4e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 989
    invoke-static {}, Lcom/sprint/w/installer/PackUninstaller;->access$1400()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/PackUninstaller$9;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    iget-object v1, v1, Lcom/sprint/w/installer/PackUninstaller;->mProgressMessageText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    return-void

    .line 988
    :cond_5d
    const/high16 v0, -0x100

    goto :goto_4e
.end method
