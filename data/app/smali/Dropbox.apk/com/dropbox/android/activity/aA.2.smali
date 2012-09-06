.class final Lcom/dropbox/android/activity/aA;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/LoginBrandFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/LoginBrandFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/dropbox/android/activity/aA;->a:Lcom/dropbox/android/activity/LoginBrandFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/dropbox/android/util/W;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 92
    :goto_6
    return-void

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/dropbox/android/activity/aA;->a:Lcom/dropbox/android/activity/LoginBrandFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/LoginBrandFragment;->a:Lcom/dropbox/android/activity/aB;

    invoke-interface {v0}, Lcom/dropbox/android/activity/aB;->b()V

    goto :goto_6
.end method
