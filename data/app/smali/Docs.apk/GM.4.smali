.class LGM;
.super Ljava/lang/Object;
.source "CommentStreamFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:LGK;


# direct methods
.method constructor <init>(LGK;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, LGM;->a:LGK;

    iput p2, p0, LGM;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, LGM;->a:LGK;

    iget-object v0, v0, LGK;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    iget-object v2, p0, LGM;->a:LGK;

    iget-object v2, v2, LGK;->a:Lcom/google/android/apps/docs/fragment/CommentStreamFragment;

    invoke-static {v2}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->a(Lcom/google/android/apps/docs/fragment/CommentStreamFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget v3, p0, LGM;->a:I

    add-int/2addr v3, v2

    const-wide/16 v4, -0x1

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/docs/fragment/CommentStreamFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 141
    return-void
.end method
