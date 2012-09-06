.class final Lcom/dropbox/android/activity/delegate/s;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/delegate/r;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/r;)V
    .registers 2
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/s;->a:Lcom/dropbox/android/activity/delegate/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 268
    return-void
.end method
