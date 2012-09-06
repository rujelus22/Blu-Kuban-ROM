.class final Lcom/dropbox/android/activity/delegate/y;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/e/v;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/dropbox/android/activity/delegate/x;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/dropbox/android/activity/delegate/y;->b:Lcom/dropbox/android/activity/delegate/x;

    iput-object p2, p0, Lcom/dropbox/android/activity/delegate/y;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/dropbox/android/activity/delegate/y;->b:Lcom/dropbox/android/activity/delegate/x;

    iget-object v1, p0, Lcom/dropbox/android/activity/delegate/y;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/dropbox/android/activity/delegate/x;->a(Lcom/dropbox/android/activity/delegate/x;Landroid/app/Activity;Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 208
    return-void
.end method
