.class Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;
.super Ljava/lang/Object;
.source "MentionMultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;->init(Landroid/support/v4/app/Fragment;Lcom/google/android/apps/plus/fragments/CircleNameResolver;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
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
    .line 173
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView$1;->this$0:Lcom/google/android/apps/plus/views/MentionMultiAutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 207
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 12
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 180
    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_25

    move-object v5, p1

    .line 181
    check-cast v5, Landroid/text/Spannable;

    .line 182
    .local v5, sp:Landroid/text/Spannable;
    add-int v6, p2, p3

    add-int/lit8 v1, v6, -0x1

    .line 185
    .local v1, end:I
    const-class v6, Landroid/text/style/URLSpan;

    invoke-interface {v5, p2, v1, v6}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .local v0, arr$:[Landroid/text/style/URLSpan;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_15
    if-ge v2, v3, :cond_25

    aget-object v4, v0, v2

    .line 186
    .local v4, mention:Landroid/text/style/URLSpan;
    invoke-static {v4}, Lcom/google/android/apps/plus/views/MentionSpan;->isMention(Landroid/text/style/URLSpan;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 187
    invoke-interface {v5, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 185
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 191
    .end local v0           #arr$:[Landroid/text/style/URLSpan;
    .end local v1           #end:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mention:Landroid/text/style/URLSpan;
    .end local v5           #sp:Landroid/text/Spannable;
    :cond_25
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 198
    return-void
.end method
