.class Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;
.super Ljava/lang/Object;
.source "PeopleSearchListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;

.field final synthetic val$queryString:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1306
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->this$1:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;

    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->val$queryString:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1313
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->val$queryString:Ljava/lang/CharSequence;

    if-nez v2, :cond_d

    .line 1314
    const/4 v1, 0x0

    .line 1327
    .local v1, query:Ljava/lang/String;
    :goto_5
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->this$1:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1328
    return-void

    .line 1315
    .end local v1           #query:Ljava/lang/String;
    :cond_d
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->this$1:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3;->this$0:Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;

    #getter for: Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->mIsMentionsAdapter:Z
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;->access$300(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1316
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->val$queryString:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1317
    .local v0, length:I
    if-lez v0, :cond_38

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->val$queryString:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/apps/plus/util/MentionTokenizer;->isMentionTrigger(C)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1319
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->val$queryString:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #query:Ljava/lang/String;
    goto :goto_5

    .line 1321
    .end local v1           #query:Ljava/lang/String;
    :cond_38
    const/4 v1, 0x0

    .restart local v1       #query:Ljava/lang/String;
    goto :goto_5

    .line 1324
    .end local v0           #length:I
    .end local v1           #query:Ljava/lang/String;
    :cond_3a
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter$3$1;->val$queryString:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #query:Ljava/lang/String;
    goto :goto_5
.end method
