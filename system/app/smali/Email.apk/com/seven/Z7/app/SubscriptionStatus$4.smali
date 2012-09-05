.class final Lcom/seven/Z7/app/SubscriptionStatus$4;
.super Ljava/lang/Object;
.source "SubscriptionStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/seven/Z7/app/SubscriptionStatus;->showContactCarrierErrorDialog(IILandroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finishActivity:Z

.field final synthetic val$parentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/seven/Z7/app/SubscriptionStatus$4;->val$finishActivity:Z

    iput-object p2, p0, Lcom/seven/Z7/app/SubscriptionStatus$4;->val$parentActivity:Landroid/app/Activity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/seven/Z7/app/SubscriptionStatus$4;->val$finishActivity:Z

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Lcom/seven/Z7/app/SubscriptionStatus$4;->val$parentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 259
    :cond_9
    return-void
.end method
