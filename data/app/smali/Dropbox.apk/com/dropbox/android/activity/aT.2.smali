.class final Lcom/dropbox/android/activity/aT;
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
    .line 103
    iput-object p1, p0, Lcom/dropbox/android/activity/aT;->a:Lcom/dropbox/android/activity/NewAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    invoke-static {}, Lcom/dropbox/android/util/W;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 110
    :goto_6
    return-void

    .line 109
    :cond_7
    iget-object v0, p0, Lcom/dropbox/android/activity/aT;->a:Lcom/dropbox/android/activity/NewAccountFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/NewAccountFragment;->b:Lcom/dropbox/android/activity/aU;

    invoke-interface {v0}, Lcom/dropbox/android/activity/aU;->h_()V

    goto :goto_6
.end method
