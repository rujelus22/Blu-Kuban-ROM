.class Lcom/sprint/w/installer/PackUninstaller$5;
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
    .line 734
    iput-object p1, p0, Lcom/sprint/w/installer/PackUninstaller$5;->this$0:Lcom/sprint/w/installer/PackUninstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "d"
    .parameter "which"

    .prologue
    .line 738
    return-void
.end method
