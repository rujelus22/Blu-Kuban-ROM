.class final Lcom/dropbox/android/activity/aR;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/NewAccountFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/NewAccountFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/dropbox/android/activity/aR;->a:Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/android/activity/aR;->a:Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/NewAccountFragment;->a()V

    .line 83
    return-void
.end method
