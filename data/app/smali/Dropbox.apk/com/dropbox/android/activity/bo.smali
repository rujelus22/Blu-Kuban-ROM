.class final Lcom/dropbox/android/activity/bo;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 713
    iput-object p1, p0, Lcom/dropbox/android/activity/bo;->a:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    iput-boolean v0, p0, Lcom/dropbox/android/activity/bo;->b:Z

    .line 716
    iput v0, p0, Lcom/dropbox/android/activity/bo;->c:I

    .line 717
    iput v0, p0, Lcom/dropbox/android/activity/bo;->d:I

    .line 718
    iput v0, p0, Lcom/dropbox/android/activity/bo;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;Lcom/dropbox/android/activity/bk;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/dropbox/android/activity/bo;-><init>(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)V

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 738
    iget-object v0, p0, Lcom/dropbox/android/activity/bo;->a:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    iget v1, p0, Lcom/dropbox/android/activity/bo;->c:I

    iget v2, p0, Lcom/dropbox/android/activity/bo;->d:I

    iget v3, p0, Lcom/dropbox/android/activity/bo;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Lcom/dropbox/android/activity/SimpleDropboxBrowser;III)V

    .line 739
    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    iget v0, p0, Lcom/dropbox/android/activity/bo;->c:I

    if-ne p2, v0, :cond_c

    iget v0, p0, Lcom/dropbox/android/activity/bo;->d:I

    if-ne p3, v0, :cond_c

    iget v0, p0, Lcom/dropbox/android/activity/bo;->e:I

    if-eq p4, v0, :cond_23

    :cond_c
    const/4 v0, 0x1

    .line 728
    :goto_d
    iput p2, p0, Lcom/dropbox/android/activity/bo;->c:I

    .line 729
    iput p3, p0, Lcom/dropbox/android/activity/bo;->d:I

    .line 730
    iput p4, p0, Lcom/dropbox/android/activity/bo;->e:I

    .line 732
    iget-object v1, p0, Lcom/dropbox/android/activity/bo;->a:Lcom/dropbox/android/activity/SimpleDropboxBrowser;

    invoke-static {v1}, Lcom/dropbox/android/activity/SimpleDropboxBrowser;->a(Lcom/dropbox/android/activity/SimpleDropboxBrowser;)Lcom/dropbox/android/activity/bo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/dropbox/android/activity/bo;->b:Z

    if-nez v1, :cond_22

    if-eqz v0, :cond_22

    .line 733
    invoke-direct {p0}, Lcom/dropbox/android/activity/bo;->a()V

    .line 735
    :cond_22
    return-void

    .line 724
    :cond_23
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 743
    iget-boolean v1, p0, Lcom/dropbox/android/activity/bo;->b:Z

    .line 744
    const/4 v0, 0x2

    if-ne p2, v0, :cond_12

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/dropbox/android/activity/bo;->b:Z

    .line 745
    if-eqz v1, :cond_11

    iget-boolean v0, p0, Lcom/dropbox/android/activity/bo;->b:Z

    if-nez v0, :cond_11

    .line 747
    invoke-direct {p0}, Lcom/dropbox/android/activity/bo;->a()V

    .line 749
    :cond_11
    return-void

    .line 744
    :cond_12
    const/4 v0, 0x0

    goto :goto_6
.end method
