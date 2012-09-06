.class public Labc;
.super Ljava/lang/Object;
.source "PinWarningDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/view/PinWarningDialogFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/view/PinWarningDialogFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Labc;->a:Lcom/google/android/apps/docs/view/PinWarningDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 28
    return-void
.end method
