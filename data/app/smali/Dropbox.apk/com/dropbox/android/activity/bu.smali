.class final Lcom/dropbox/android/activity/bu;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/TextEditActivity;

.field final synthetic b:Lcom/dropbox/android/activity/bt;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/bt;Lcom/dropbox/android/activity/TextEditActivity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/dropbox/android/activity/bu;->b:Lcom/dropbox/android/activity/bt;

    iput-object p2, p0, Lcom/dropbox/android/activity/bu;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/android/activity/bu;->a:Lcom/dropbox/android/activity/TextEditActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/TextEditActivity;->a(Lcom/dropbox/android/activity/TextEditActivity;)V

    .line 87
    return-void
.end method
