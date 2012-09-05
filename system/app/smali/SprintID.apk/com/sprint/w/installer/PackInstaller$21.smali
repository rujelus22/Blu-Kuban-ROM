.class Lcom/sprint/w/installer/PackInstaller$21;
.super Ljava/lang/Object;
.source "PackInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/PackInstaller;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/PackInstaller;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/PackInstaller;)V
    .registers 2
    .parameter

    .prologue
    .line 2076
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$21;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/sprint/w/installer/PackInstaller$21;->this$0:Lcom/sprint/w/installer/PackInstaller;

    #calls: Lcom/sprint/w/installer/PackInstaller;->installServicePack()V
    invoke-static {v0}, Lcom/sprint/w/installer/PackInstaller;->access$900(Lcom/sprint/w/installer/PackInstaller;)V

    .line 2080
    return-void
.end method
