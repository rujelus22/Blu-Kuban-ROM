.class final Lcom/locationlabs/v3client/feature/lock/LockScreen$1;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/locationlabs/v3client/feature/lock/LockScreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x30
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/locationlabs/v3client/feature/lock/LockScreen;


# direct methods
.method constructor <init>(Lcom/locationlabs/v3client/feature/lock/LockScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/locationlabs/v3client/feature/lock/LockScreen$1;->a:Lcom/locationlabs/v3client/feature/lock/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 654
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 655
    return-void
.end method
