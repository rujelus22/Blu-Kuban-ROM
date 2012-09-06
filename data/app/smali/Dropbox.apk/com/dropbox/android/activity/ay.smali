.class final Lcom/dropbox/android/activity/ay;
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
    .line 61
    iput-object p1, p0, Lcom/dropbox/android/activity/ay;->a:Lcom/dropbox/android/activity/LoginBrandFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/android/activity/ay;->a:Lcom/dropbox/android/activity/LoginBrandFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/LoginBrandFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/util/b;->a(Landroid/app/Activity;)V

    .line 65
    return-void
.end method
