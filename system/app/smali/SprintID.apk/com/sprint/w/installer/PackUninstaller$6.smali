.class Lcom/sprint/w/installer/PackUninstaller$6;
.super Ljava/lang/Object;
.source "PackUninstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackUninstaller;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 728
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$6;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "d"
    .parameter "which"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$6;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/PackUninstaller;->showDialog(I)V

    .line 732
    iget-object v0, p0, Lcom/sprint/w/installer/PackUninstaller$6;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    #calls: Lcom/sprint/w/installer/PackUninstaller;->uninstallSelected()V
    invoke-static {v0}, Lcom/sprint/w/installer/PackUninstaller;->access$500(Lcom/sprint/w/installer/PackUninstaller;)V

    .line 733
    return-void
.end method
