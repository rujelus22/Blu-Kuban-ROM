.class Lcom/sprint/w/installer/PackInstaller$23;
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
    .line 2090
    iput-object p1, p0, Lcom/sprint/w/installer/PackInstaller$23;->this$0:Lcom/sprint/w/installer/PackInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2093
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$23;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const-class v2, Lcom/sprint/w/installer/ManagePacksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2094
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sprint/w/installer/PackInstaller$23;->this$0:Lcom/sprint/w/installer/PackInstaller;

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lcom/sprint/w/installer/PackInstaller;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2095
    return-void
.end method
