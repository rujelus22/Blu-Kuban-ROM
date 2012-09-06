.class final Lcom/dropbox/android/widget/as;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lcom/dropbox/android/widget/aq;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/aq;ZLandroid/view/View;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/dropbox/android/widget/as;->e:Lcom/dropbox/android/widget/aq;

    iput-boolean p2, p0, Lcom/dropbox/android/widget/as;->a:Z

    iput-object p3, p0, Lcom/dropbox/android/widget/as;->b:Landroid/view/View;

    iput p4, p0, Lcom/dropbox/android/widget/as;->c:I

    iput p5, p0, Lcom/dropbox/android/widget/as;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 8
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dropbox/android/widget/as;->e:Lcom/dropbox/android/widget/aq;

    iget-object v0, v0, Lcom/dropbox/android/widget/aq;->i:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/dropbox/android/widget/as;->a:Z

    if-eqz v0, :cond_1b

    .line 278
    iget-object v0, p0, Lcom/dropbox/android/widget/as;->e:Lcom/dropbox/android/widget/aq;

    iget-object v0, v0, Lcom/dropbox/android/widget/aq;->i:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/android/widget/as;->b:Landroid/view/View;

    iget v3, p0, Lcom/dropbox/android/widget/as;->c:I

    iget v4, p0, Lcom/dropbox/android/widget/as;->d:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    .line 280
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method
