.class final Lcom/dropbox/android/widget/ar;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 266
    iput-object p1, p0, Lcom/dropbox/android/widget/ar;->e:Lcom/dropbox/android/widget/aq;

    iput-boolean p2, p0, Lcom/dropbox/android/widget/ar;->a:Z

    iput-object p3, p0, Lcom/dropbox/android/widget/ar;->b:Landroid/view/View;

    iput p4, p0, Lcom/dropbox/android/widget/ar;->c:I

    iput p5, p0, Lcom/dropbox/android/widget/ar;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dropbox/android/widget/ar;->e:Lcom/dropbox/android/widget/aq;

    iget-object v0, v0, Lcom/dropbox/android/widget/aq;->h:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/dropbox/android/widget/ar;->a:Z

    if-eqz v0, :cond_19

    .line 270
    iget-object v0, p0, Lcom/dropbox/android/widget/ar;->e:Lcom/dropbox/android/widget/aq;

    iget-object v0, v0, Lcom/dropbox/android/widget/aq;->h:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/android/widget/ar;->b:Landroid/view/View;

    iget v3, p0, Lcom/dropbox/android/widget/ar;->c:I

    iget v4, p0, Lcom/dropbox/android/widget/ar;->d:I

    int-to-long v4, v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 272
    :cond_19
    return-void
.end method
