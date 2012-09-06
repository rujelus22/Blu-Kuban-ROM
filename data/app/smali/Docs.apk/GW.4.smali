.class public LGW;
.super Ljava/lang/Object;
.source "DocListFragment.java"

# interfaces
.implements LTx;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/fragment/DocListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/fragment/DocListFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 849
    iput-object p1, p0, LGW;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lld;LTE;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 852
    invoke-virtual {p2}, LTE;->a()LTD;

    move-result-object v0

    .line 853
    sget-object v1, LGX;->a:[I

    invoke-virtual {v0}, LTD;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    .line 873
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected synchronization status received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :pswitch_28
    iget-object v0, p0, LGW;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    .line 875
    :goto_2d
    return-void

    .line 858
    :pswitch_2e
    invoke-virtual {p2}, LTE;->b()LTD;

    move-result-object v0

    sget-object v1, LTD;->a:LTD;

    if-ne v0, v1, :cond_3b

    .line 859
    iget-object v0, p0, LGW;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    .line 861
    :cond_3b
    iget-object v0, p0, LGW;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-static {v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->a(Lcom/google/android/apps/docs/fragment/DocListFragment;)Lcom/google/android/apps/docs/view/DocListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/docs/view/DocListView;->a(Lld;LTE;)V

    goto :goto_2d

    .line 864
    :pswitch_45
    iget-object v0, p0, LGW;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    goto :goto_2d

    .line 867
    :pswitch_4b
    iget-object v0, p0, LGW;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    goto :goto_2d

    .line 870
    :pswitch_51
    iget-object v0, p0, LGW;->a:Lcom/google/android/apps/docs/fragment/DocListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/fragment/DocListFragment;->r()V

    goto :goto_2d

    .line 853
    nop

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2e
        :pswitch_45
        :pswitch_4b
        :pswitch_51
    .end packed-switch
.end method
