.class final Lcom/dropbox/android/activity/a;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ListView;

.field final synthetic b:I

.field final synthetic c:Lcom/dropbox/android/activity/BrowserWithHistoryStack;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/BrowserWithHistoryStack;Landroid/widget/ListView;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/dropbox/android/activity/a;->c:Lcom/dropbox/android/activity/BrowserWithHistoryStack;

    iput-object p2, p0, Lcom/dropbox/android/activity/a;->a:Landroid/widget/ListView;

    iput p3, p0, Lcom/dropbox/android/activity/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/dropbox/android/activity/a;->a:Landroid/widget/ListView;

    iget v1, p0, Lcom/dropbox/android/activity/a;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 286
    return-void
.end method
