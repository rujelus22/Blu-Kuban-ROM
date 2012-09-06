.class final Lcom/dropbox/android/activity/az;
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
    .line 78
    iput-object p1, p0, Lcom/dropbox/android/activity/az;->a:Lcom/dropbox/android/activity/LoginBrandFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/android/activity/az;->a:Lcom/dropbox/android/activity/LoginBrandFragment;

    iget-object v0, v0, Lcom/dropbox/android/activity/LoginBrandFragment;->a:Lcom/dropbox/android/activity/aB;

    invoke-interface {v0}, Lcom/dropbox/android/activity/aB;->h_()V

    .line 82
    return-void
.end method
