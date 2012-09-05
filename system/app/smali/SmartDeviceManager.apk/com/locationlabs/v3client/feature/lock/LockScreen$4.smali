.class final Lcom/locationlabs/v3client/feature/lock/LockScreen$4;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/locationlabs/v3client/feature/lock/LockScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic b:Lcom/locationlabs/v3client/feature/lock/LockScreen;


# direct methods
.method constructor <init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 697
    iput-object p1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$4;->b:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    iput-object p2, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$4;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 700
    iget-object v0, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$4;->a:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$4;->b:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-static {v1}, Lcom/locationlabs/v3client/feature/lock/LockScreen;->c(Lcom/locationlabs/v3client/feature/lock/LockScreen;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 701
    return-void
.end method
