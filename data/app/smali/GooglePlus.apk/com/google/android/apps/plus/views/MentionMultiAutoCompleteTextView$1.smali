.class Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "MentionMultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/android/apps/plus/views/AudienceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;)V
    .registers 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 308
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 18
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 269
    instance-of v10, p1, Landroid/text/Spannable;

    if-eqz v10, :cond_3a

    move-object v9, p1

    .line 270
    check-cast v9, Landroid/text/Spannable;

    .line 271
    .local v9, sp:Landroid/text/Spannable;
    add-int v10, p2, p3

    add-int/lit8 v2, v10, -0x1

    .line 274
    .local v2, end:I
    const/4 v6, 0x0

    .line 275
    .local v6, mentionSpanRemoved:Z
    iget-object v10, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    #calls: Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getPersonList()Ljava/util/List;
    invoke-static {v10}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->access$000(Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;)Ljava/util/List;

    move-result-object v8

    .line 276
    .local v8, originalPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {v9, p2, v2, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .local v0, arr$:[Landroid/text/style/URLSpan;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1c
    if-ge v3, v4, :cond_2d

    aget-object v5, v0, v3

    .line 277
    .local v5, mention:Landroid/text/style/URLSpan;
    invoke-static {v5}, Lcom/google/android/apps/plus/views/MentionSpan;->isMention(Landroid/text/style/URLSpan;)Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 278
    invoke-interface {v9, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 279
    const/4 v6, 0x1

    .line 276
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 283
    .end local v5           #mention:Landroid/text/style/URLSpan;
    :cond_2d
    if-eqz v6, :cond_3a

    .line 284
    iget-object v10, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    #calls: Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getPersonList()Ljava/util/List;
    invoke-static {v10}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->access$000(Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;)Ljava/util/List;

    move-result-object v1

    .line 285
    .local v1, currentPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    iget-object v10, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v10, v8, v1}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->updateMentionAcls(Ljava/util/List;Ljava/util/List;)V

    .line 289
    .end local v0           #arr$:[Landroid/text/style/URLSpan;
    .end local v1           #currentPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    .end local v2           #end:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #mentionSpanRemoved:Z
    .end local v8           #originalPersonList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    .end local v9           #sp:Landroid/text/Spannable;
    :cond_3a
    iget-object v10, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0206

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    .line 291
    .local v7, offset:I
    iget-object v10, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    iget-object v11, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getCursorYPosition()I

    move-result v11

    add-int/2addr v11, v7

    iget-object v12, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->getHeight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 292
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 299
    return-void
.end method
