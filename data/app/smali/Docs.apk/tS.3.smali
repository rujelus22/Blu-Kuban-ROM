.class public LtS;
.super Landroid/widget/ArrayAdapter;
.source "UploadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "LtZ;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:I

.field final synthetic a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "LtZ;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, LtS;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    .line 98
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 99
    iput p3, p0, LtS;->a:I

    .line 100
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 104
    iget-object v0, p0, LtS;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 105
    iget v1, p0, LtS;->a:I

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 106
    sget v0, LcS;->upload_queue_list_item_textview:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, LtS;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;->a(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;)LtN;

    move-result-object v1

    invoke-virtual {v1, p1}, LtN;->a(I)LtZ;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, LtZ;->a()LtB;

    move-result-object v1

    invoke-virtual {v1}, LtB;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    sget v0, LcS;->upload_queue_list_item_progress:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 111
    sget v1, LcS;->upload_queue_list_item_cancel_button:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 113
    iget v2, v4, LtZ;->a:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 114
    new-instance v2, LtR;

    iget-object v5, p0, LtS;->a:Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, LtR;-><init>(Lcom/google/android/apps/docs/docsuploader/UploadQueueActivity;LtO;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 116
    sget v2, LcS;->upload_queue_list_item_inactive:I

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 117
    invoke-virtual {v4}, LtZ;->b()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 118
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 119
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    sget v0, LcY;->upload_list_item_canceled:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_6f
    return-object v3

    .line 122
    :cond_70
    invoke-virtual {v4}, LtZ;->c()Z

    move-result v5

    if-eqz v5, :cond_85

    .line 123
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 124
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    sget v0, LcY;->upload_list_item_failed:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6f

    .line 127
    :cond_85
    invoke-virtual {v4}, LtZ;->a()Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 128
    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 129
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    sget v0, LcY;->upload_list_item_completed:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6f

    .line 133
    :cond_9a
    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6f
.end method
